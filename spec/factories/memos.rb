# frozen_string_literal: true

FactoryBot.define do
  factory :memo do
    title { 'MyString' }
    content { 'MyText' }
  end
end
