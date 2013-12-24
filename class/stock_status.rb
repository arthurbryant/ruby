require_relative 'csv_reader'

reader = CSVReader.new
ARGV.each do |argv|
  reader.read_in_csv_data(argv)
end

puts reader.total_value_in_stock
