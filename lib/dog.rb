class Dog
  attr_accessor :id, :name, :breed
  
  def initialize(id: nil, name: , breed: )
    @id = id
    @name = name
    @breed = breed
  end
  
  def self.create_table
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS dogs (
        id INTEGER PRIMARY KEY,
        name TEXT,
        breed TEXT
        )
      SQL
    DB[:conn].execute(sql)
  end
  
  def self.drop_table
    DB[:conn].execute("DROP TABLE IF EXISTS dogs")
  end
  
  def save
  end
  
  def self.create
  end 
  
  def self.new_from_db
  end
  
  def self.find_by_id
  end 
  
  def self.find_or_create_by
  end 
  
  def self.find_by_name(name)
    found_dog = DB[:conn].execute("SELECT * FROM dogs WHERE name = ?", name)[0]
    Dog.new(found_dog[0], found_dog[1], found_dog[2])
  end 
  
  def update
  end

end