User.destroy_all
Address.destroy_all

10.times do
  user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    cpf: CPF.generate,
    birthday: Faker::Date.birthday(min_age: 18, max_age: 80)
  )

  rand(1..3).times do
    user.addresses.create!(
      street: Faker::Address.street_name,
      number: Faker::Address.building_number,
      complement: Faker::Address.secondary_address,
      neighborhood: Faker::Address.community,
      city: Faker::Address.city,
      state: Faker::Address.state,
      country: Faker::Address.country,
      zip_code: Faker::Address.zip_code
    )
  end
end
