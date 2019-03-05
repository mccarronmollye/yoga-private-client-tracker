class YogaClass < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :client, optional: true#, inverse_of: :yoga_classes
  validates :title, presence: true
  validates :class_plan, presence: true
end 
