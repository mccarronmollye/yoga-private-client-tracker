class CommentSerializer < ActiveModel::Serializer
  attributes :content, :user_id
  belongs_to :user #render explicitly
end
