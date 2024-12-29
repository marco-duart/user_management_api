class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :cpf, :birthday

  has_many :addresses, if: :include_addresses?

  def include_addresses?
    instance_options[:include_addresses]
  end
end
