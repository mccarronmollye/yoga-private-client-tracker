class YogaClassCommentsSerializer < ActiveModel::Serializer
  attributes :user_id, :content #explicit serializers so user_id and content can be in yoga_classes
end
