class Address < ApplicationRecord
  belongs_to :user

  validates :street, :number, :neighborhood, :city, :state, :country, :zip_code, presence: true
end
