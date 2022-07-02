# frozen_string_literal: true

Product.delete_all

20.times do
  Product.create(
    name: Faker::Lorem.words(2).join(' '),
    description: Faker::Lorem.sentence,
    price: Faker::Number.decimal
  )
end
