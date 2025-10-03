require 'ostruct'

FactoryBot.define do
  factory :participante, class: OpenStruct do
    name {"John Doe"}
    email {"johndoe@example.com"}
    short_id {"#123ABC"}
  end
  factory :documento, class: OpenStruct do
    title {"Paris - França"}
  end
end