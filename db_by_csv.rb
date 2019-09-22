require 'csv'

class Database
  def add_column(value)
    csv = CSV.read('db.csv')
    CSV.open('db.csv', 'w') do |column|
      csv[0] << value
      column << csv[0]
    end
  end
end

db = Database.new
value = 'apple'
db.add_column(value)
