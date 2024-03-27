from mayan.apps.testing.tests.base import MayanMigratorTestCase

from ..source_backends import SourceBackendStagingFolder


class SourceBackendPathMigrationTestCase(MayanMigratorTestCase):
    migrate_from = ('sources', '0028_auto_20210905_0558')
    migrate_to = (
        'source_staging_folders', '0003_fix_backend_paths'
    )

    def prepare(self):
        Source = self.old_state.apps.get_model(
            app_label='sources', model_name='Source'
        )

        Source.objects.create(
            backend_path='mayan.apps.sources.source_backends.SourceBackendStagingFolder',
            label='test source staging folder'
        )

    def test_source_backend_path_updates(self):
        Source = self.old_state.apps.get_model(
            app_label='sources', model_name='Source'
        )

        self.assertEqual(
            Source.objects.get(label='test source staging folder').backend_path,
            SourceBackendStagingFolder.get_class_path()
        )
