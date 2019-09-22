require 'csv'

CSV.open('db.csv', 'w') do |column|
  column << ['A', 'B', 'C']
end
