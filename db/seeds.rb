# frozen_string_literal: true

Product.delete_all

20.times do
  Product.create(
    name: Faker::Lorem.words(number: 2),
    description: Faker::Lorem.sentence,
    price: Faker::Number.decimal
  )
end
