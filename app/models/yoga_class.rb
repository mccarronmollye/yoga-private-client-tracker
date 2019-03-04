class YogaClass < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :client, optional: true
end
