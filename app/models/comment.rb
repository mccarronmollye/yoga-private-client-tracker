class Comment < ApplicationRecord
  belongs_to :yoga_class
  belongs_to :user
end
