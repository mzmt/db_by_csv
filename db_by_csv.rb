require 'csv'

class Database
  def initialize
    unless File.exist?('db.csv')
      CSV.open('db.csv', 'w') do |column|
        column << ['A', 'B', 'C']
      end
    end
  end

  def add_column(value)
    csv = CSV.read('db.csv')
    CSV.open('db.csv', 'w') do |column|
      csv[0] << value
      column << csv[0]
    end
  end

  def add_row(value)
  end
end

db = Database.new
value = 'apple'
db.add_column(value)
