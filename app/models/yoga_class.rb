class YogaClass < ApplicationRecord
  belongs_to :user#, optional: true
  belongs_to :client #, optional: true#, inverse_of: :yoga_classes
  has_many :comments
  validates :title, presence: true
  validates :class_plan, presence: true

  def self.thirty_minute_yoga_classes
    where("duration = 30")
  end

  def self.fourty_five_minute_yoga_classes
    where("duration = 45")
  end

  def self.sixty_minute_yoga_classes
    where("duration = 60")
  end
end
