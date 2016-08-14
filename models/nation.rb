require('pg')
require_relative('../db/sql_runner')

class Nation

  attr_reader :id, :name

  def initialize( options )
    @id = options['id'].to_i
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO nations (name) VALUES ('#{@name}' ) RETURNING *"
    member = SqlRunner.run(sql).first
    @id = member['id']
  end

  def initialize( options )
    @id = options['id'].to_i
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO nations (name) VALUES ('#{@name}') RETURNING *"
    nations = SqlRunner.run(sql).frist
    @id = nation['id']
  end

  # def ?what to put here?()
  #   sql = ?
  #   return ?.map_items(sql)
  # end

  def self.all()
    sql = "SELECT * FROM nations"
    return Nation.map_items(sql)
  end




  
end