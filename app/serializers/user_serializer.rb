class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :cpf, :birthday

  has_many :addresses
end
