class Client < ApplicationRecord
  has_many :yoga_classes
  has_many :users, through: :yoga_classes
end
