class YogaClassSerializer < ActiveModel::Serializer
  attributes :id, :location, :title, :intention, :class_plan, :notes, :class_size
end
