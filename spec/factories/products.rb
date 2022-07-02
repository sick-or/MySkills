# frozen_string_literal: true

FactoryBot.define do
  factory :product do
    name { Faker::Lorem.words(number: 2) }
    description { Faker::Lorem.sentence }
    price { Faker::Number.decimal }
  end
end
