class ClientSerializer < ActiveModel::Serializer
  attributes :id, :org_name, :email, :point_of_contact
end
