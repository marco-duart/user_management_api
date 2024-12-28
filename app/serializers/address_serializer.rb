class AddressSerializer < ActiveModel::Serializer
  attributes :id, :street, :number, :complement, :neighborhood, :city, :state, :country, :zip_code
end
