class Client < ApplicationRecord
  validates :org_name, uniqueness: true
  validates :org_name, presence: true
  validates :point_of_contact, presence: true
  validates :email, presence: true
  has_many :yoga_classes#, inverse_of: :client
  has_many :users, through: :yoga_classes
  #accepts_nested_attributes_for :yoga_classes
end
