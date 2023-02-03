require 'faker'

class MonkeysGenerator
  def generate(amount_of_records)
    amount_of_records.to_i.times.map do
      {
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        reason: Faker::Emotion.noun,
        release: Faker::Stripe.year,
        gender: Faker::Gender.type,
        birthday: Faker::Date.between(from: '1901-09-23', to: '2014-09-25')
      }
    end
  end
end
