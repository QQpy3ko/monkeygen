require 'csv'

class CsvWriter
  class << self
    def write(filename, data)
      CSV.open filename, 'w' do |csv|
        csv << data[0].keys
        data.each do |hash|
          csv << hash.values
        end
      end
    end
  end
end
