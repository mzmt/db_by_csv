require 'csv'

class Database
  def initialize
    unless File.exist?('db.csv')
      CSV.open('db.csv', 'w') do |column|
        column << ['id']
      end
    end
  end

  def add_column(value)
    csv = CSV.read('db.csv')
    CSV.open('db.csv', 'w') do |column|
      array = Array.new
      array << 'id'
      unless csv[0].nil?
        csv[0].shift
        array += csv[0]
      end
      array << value
      column << array
    end
  end

  def create_record(value)
  end

  def update_record(value)
  end

  def delete_record(value)
  end
end

db = Database.new
db.add_column('apple')
# db.add_row()
