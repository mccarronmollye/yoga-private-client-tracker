class YogaClass < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :client, optional: true#, inverse_of: :yoga_classes
  validates :title, presence: true
  validates :class_plan, presence: true

  def self.thirty_minute_yoga_classes
    where("duration = 30")
  end
end
