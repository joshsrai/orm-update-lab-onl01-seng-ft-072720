require_relative "../config/environment.rb"

class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
  
  attr_accessor :name, :grade
  attr_reader :id
  
  def initialize(id = nil, name, grade)
    @id, @name, @grade = id, name, grade
  end
  
  def self.create
    sql = <<-SQL
      CREATE TABLE students(
      id INTEGER PRIMARY KEY,
      name TEXT,
      grade INTEGER
      )
      SQL 
      DB[:conn].execute(sql)
    end
  
  



end
