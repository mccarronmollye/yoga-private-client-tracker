class YogaClassSerializer < ActiveModel::Serializer
  attributes :id, :title, :duration, :location, :intention, :class_plan, :class_size, :notes, :user_id
  belongs_to :user, serializer: YogaClassUserSerializer
  has_many :comments  
  #def self.serialize(yoga_class)

  # start with the open brace to create a valid JSON object
  #serialized_post = '{'

  #serialized_post += '"title": "' + yoga_class.title + '", '
  #serialized_post += '"class plan": "' + yoga_class.class_plan + '" '

  # the comment association can also be represented in JSON
  # serialized_post += '"author": {'
  # serialized_post += '"name": "' + post.author.name + '"}'

  #and end with the close brace
  #serialized_post += '}'
 #end
end
