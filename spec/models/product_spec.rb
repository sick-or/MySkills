# frozen_string_literal: true

# == Schema Information
#
# Table name: products
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :text
#  price       :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'rails_helper'

RSpec.describe Product, type: :model do
  describe '.create' do
    context 'with valid attributes' do
      include_examples 'creates_object_for', :product
    end

    context 'with invalid attributes' do
      context 'with too short title' do
        include_examples 'not_create_object_for', :product, name: 'a'
      end

      context 'with negative price' do
        include_examples 'not_create_object_for', :product, price: -1
      end

      context 'with zero price' do
        include_examples 'not_create_object_for', :product, price: 0
      end
    end

    context 'with missing attributes' do
      context 'with empty title' do
        # before { create(:product, title: "test") }

        include_examples 'not_create_object_for', :product, name: nil
      end

      context 'with empty description' do
        include_examples 'creates_object_for', :product, description: nil
      end

      context 'with empty price' do
        include_examples 'not_create_object_for', :product, price: nil
      end
    end
  end
end
