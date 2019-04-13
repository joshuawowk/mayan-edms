from __future__ import unicode_literals

import logging

from mayan.apps.common.literals import TIME_DELTA_UNIT_DAYS
from mayan.apps.documents.permissions import permission_document_view
from mayan.apps.documents.tests import GenericDocumentViewTestCase
from mayan.apps.sources.links import link_upload_version

from ..literals import STATE_CHECKED_OUT, STATE_LABELS
from ..models import DocumentCheckout
from ..permissions import (
    permission_document_check_in, permission_document_check_in_override,
    permission_document_check_out, permission_document_check_out_detail_view
)

from .mixins import DocumentCheckoutTestMixin


class DocumentCheckoutViewTestCase(DocumentCheckoutTestMixin, GenericDocumentViewTestCase):
    def setUp(self):
        super(DocumentCheckoutViewTestCase, self).setUp()
        self.login_user()

    def _request_document_check_in_get_view(self):
        return self.get(
            viewname='checkouts:check_in_document', args=(self.document.pk,),
        )

    def test_check_in_document_get_view_no_permission(self):
        self._check_out_document()

        response = self._request_document_check_in_get_view()
        self.assertContains(
            response=response, text=self.document.label, status_code=200
        )

        self.assertTrue(self.document.is_checked_out())

    def test_check_in_document_get_view_with_access(self):
        self._check_out_document()

        self.grant_access(
            obj=self.document, permission=permission_document_check_in
        )

        response = self._request_document_check_in_get_view()
        self.assertContains(
            response=response, text=self.document.label, status_code=200
        )

        self.assertTrue(self.document.is_checked_out())

    def _request_document_check_in_post_view(self):
        return self.post(
            viewname='checkouts:check_in_document', args=(self.document.pk,),
        )

    def test_check_in_document_post_view_no_permission(self):
        self._check_out_document()

        response = self._request_document_check_in_post_view()
        self.assertEquals(response.status_code, 403)

        self.assertTrue(self.document.is_checked_out())

    def test_check_in_document_post_view_with_access(self):
        self._check_out_document()

        self.grant_access(
            obj=self.document, permission=permission_document_check_in
        )

        response = self._request_document_check_in_post_view()
        self.assertEquals(response.status_code, 302)

        self.assertFalse(self.document.is_checked_out())
        self.assertFalse(
            DocumentCheckout.objects.is_checked_out(
                document=self.document
            )
        )

    def _request_document_checkout_view(self):
        return self.post(
            viewname='checkouts:check_out_document', args=(self.document.pk,),
            data={
                'expiration_datetime_0': 2,
                'expiration_datetime_1': TIME_DELTA_UNIT_DAYS,
                'block_new_version': True
            }
        )

    def test_check_out_document_view_no_permission(self):
        response = self._request_document_checkout_view()
        self.assertEquals(response.status_code, 403)
        self.assertFalse(self.document.is_checked_out())

    def test_check_out_document_view_with_access(self):
        self.grant_access(
            obj=self.document, permission=permission_document_check_out
        )
        self.grant_access(
            obj=self.document,
            permission=permission_document_check_out_detail_view
        )

        response = self._request_document_checkout_view()
        self.assertEquals(response.status_code, 302)
        self.assertTrue(self.document.is_checked_out())

    def _request_check_out_detail_view(self):
        return self.get(
            viewname='checkouts:check_out_info', args=(self.document.pk,),
        )

    def test_checkout_detail_view_no_permission(self):
        self._check_out_document()
        self.grant_access(
            obj=self.document,
            permission=permission_document_check_out
        )

        response = self._request_check_out_detail_view()

        self.assertNotContains(
            response, text=STATE_LABELS[STATE_CHECKED_OUT], status_code=403
        )

    def test_checkout_detail_view_with_access(self):
        self._check_out_document()

        self.grant_access(
            obj=self.document,
            permission=permission_document_check_out_detail_view
        )

        response = self._request_check_out_detail_view()

        self.assertContains(
            response, text=STATE_LABELS[STATE_CHECKED_OUT], status_code=200
        )

    def _request_check_out_list_view(self):
        return self.get(viewname='checkouts:check_out_list')

    def test_checkout_list_view_no_permission(self):
        self._check_out_document()

        self.grant_access(
            obj=self.document,
            permission=permission_document_view
        )

        response = self._request_check_out_list_view()

        self.assertNotContains(
            response=response, text=self.document.label, status_code=200
        )


    def test_checkout_list_view_with_access(self):
        self._check_out_document()

        self.grant_access(
            obj=self.document,
            permission=permission_document_check_out_detail_view
        )

        self.grant_access(
            obj=self.document,
            permission=permission_document_view
        )

        response = self._request_check_out_list_view()

        self.assertContains(
            response=response, text=self.document.label, status_code=200
        )

    def test_document_new_version_after_check_out(self):
        """
        Gitlab issue #231
        User shown option to upload new version of a document even though it
        is blocked by checkout - v2.0.0b2

        Expected results:
            - Link to upload version view should not resolve
            - Upload version view should reject request
        """
        self._check_out_document()

        self.login_admin_user()

        response = self.post(
            'sources:upload_version', args=(self.document.pk,),
            follow=True
        )

        self.assertContains(
            response, text='blocked from uploading',
            status_code=200
        )

        response = self.get(
            'documents:document_version_list', args=(self.document.pk,),
            follow=True
        )

        # Needed by the url view resolver
        response.context.current_app = None
        resolved_link = link_upload_version.resolve(context=response.context)

        self.assertEqual(resolved_link, None)

    def test_forcefull_check_in_document_view_no_permission(self):
        # Gitlab issue #237
        # Forcefully checking in a document by a user without adequate
        # permissions throws out an error

        # Silence unrelated logging
        logging.getLogger('navigation.classes').setLevel(logging.CRITICAL)

        self._check_out_document(user=self.admin_user)

        self.grant_access(
            obj=self.document, permission=permission_document_check_in
        )

        response = self.post(
            'checkouts:check_in_document', args=(self.document.pk,)
        )
        self.assertContains(
            response, text='Insufficient permissions', status_code=403
        )

        self.assertTrue(self.document.is_checked_out())

    def test_forcefull_check_in_document_view_with_permission(self):
        self._check_out_document(user=self.admin_user)

        self.grant_access(
            obj=self.document, permission=permission_document_check_in
        )
        self.grant_access(
            obj=self.document, permission=permission_document_check_in_override
        )

        response = self.post(
            'checkouts:check_in_document', args=(self.document.pk,)
        )
        self.assertEqual(response.status_code, 302)

        self.assertFalse(self.document.is_checked_out())
