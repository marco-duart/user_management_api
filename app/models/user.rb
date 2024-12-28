class User < ApplicationRecord
  has_many :addresses, dependent: :destroy

  accepts_nested_attributes_for :addresses, allow_destroy: true

  validates :name, :email, :cpf, :birthday, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true
  validates :cpf, format: { with: /\A\d{11}\z/ }, uniqueness: true
end
