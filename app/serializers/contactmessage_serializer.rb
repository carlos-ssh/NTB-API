class ContactmessageSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :phone, :message
end
