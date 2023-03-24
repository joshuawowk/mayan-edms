from mayan.apps.rest_api import generics
from mayan.apps.views.generics import DownloadViewMixin

from .api_view_mixins import OwnerPlusFilteresQuerysetAPIViewMixin
from .models import DownloadFile
from .permissions import (
    permission_download_file_delete, permission_download_file_download,
    permission_download_file_view
)
from .serializers import DownloadFileSerializer


class APIDownloadFileDetailView(
    OwnerPlusFilteresQuerysetAPIViewMixin, generics.RetrieveDestroyAPIView
):
    """
    delete: Delete the selected download file.
    get: Return the details of the selected download file.
    """
    lookup_url_kwarg = 'download_file_id'
    mayan_object_permissions = {
        'DELETE': (permission_download_file_delete,),
        'GET': (permission_download_file_view,),
    }
    serializer_class = DownloadFileSerializer
    source_queryset = DownloadFile.objects.all()

    def get_instance_extra_data(self):
        return {
            '_event_actor': self.request.user
        }


class APIDownloadFileDownloadView(
    DownloadViewMixin, OwnerPlusFilteresQuerysetAPIViewMixin,
    generics.RetrieveAPIView
):
    """
    get: Download a download file.
    """
    lookup_url_kwarg = 'download_file_id'
    mayan_object_permissions = {
        'GET': (permission_download_file_download,),
    }
    model = DownloadFile

    def get_download_file_object(self):
        instance = self.get_object()
        instance._event_actor = self.request.user
        return instance.get_download_file_object()

    def get_download_filename(self):
        return self.get_object().filename

    def get_serializer(self, *args, **kwargs):
        return None

    def get_serializer_class(self):
        return None

    # ~ def get_source_queryset(self):
        # ~ return self.get_document().files.all()

    def retrieve(self, request, *args, **kwargs):
        return self.render_to_response()


class APIDownloadFileListView(
    OwnerPlusFilteresQuerysetAPIViewMixin, generics.ListAPIView
):
    """
    get: Returns a list of all the download files.
    """
    mayan_object_permissions = {
        'GET': (permission_download_file_view,)
    }
    ordering_fields = ('filename', 'datetime', 'id', 'label')
    serializer_class = DownloadFileSerializer
    source_queryset = DownloadFile.objects.all()

    def get_instance_extra_data(self):
        return {
            '_event_actor': self.request.user
        }
