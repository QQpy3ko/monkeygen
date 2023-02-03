require 'csv'
require 'faker'
num = ARGV[0]
monks = num.to_i.times.map do
  { first_name: Faker::Name.first_name,   last_name: Faker::Name.last_name,    reason: Faker::Emotion.noun,
    release: Faker::Stripe.year,    gender: Faker::Gender.type,    birthdate: Faker::Date.between(from: '1901-09-23', to: '2014-09-25')
  }
end
CSV.open 'monkeys.csv', 'w' do |csv|
  csv << monks[0].keys
  monks.each do |i|
    csv << i.values
  end
end
