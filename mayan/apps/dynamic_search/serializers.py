from mayan.apps.rest_api import serializers


class SearchFieldSerializer(serializers.Serializer):
    field = serializers.CharField(
        label=_('Field'), read_only=True
    )
    label = serializers.CharField(
        label=_('Label'), read_only=True
    )


class SearchModelSerializer(serializers.Serializer):
    app_label = serializers.CharField(
        label=_('App label'), read_only=True
    )
    model_name = serializers.CharField(
        label=_('Model name'), read_only=True
    )
    pk = serializers.CharField(
        label=_('Primary key'), read_only=True
    )
    search_fields = SearchFieldSerializer(
        label=_('Search fields'), many=True, read_only=True
    )
