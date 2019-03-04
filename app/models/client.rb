class Client < ApplicationRecord
  has_many :yoga_classes#, inverse_of: :client
  has_many :users, through: :yoga_classes
  #accepts_nested_attributes_for :yoga_classes
end
