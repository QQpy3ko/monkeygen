require_relative 'monkeys_generator'
require_relative 'csv_writer'
# require 'pry'

amount_of_records = ARGV[0]

data = MonkeysGenerator.new.generate(amount_of_records)

CsvWriter.write('monkeys.csv', data)
