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
    nation = SqlRunner.run(sql).first
    @id = nation['id']
  end

  def athletes
    sql = "SELECT * FROM athletes WHERE nations_id = #{@id}"
    return SqlRunner.run(sql).map {|athlete| Athlete.new(athlete)}
  end


  def self.find(id)
    sql = "SELECT * FROM nations WHERE id = #{id}"
    return Nation.map_items(sql)
  end

  def self.all()
    sql = "SELECT * FROM nations"
    return Nation.map_items(sql)
  end

  def self.delete_all()
    sql = "DELETE FROM athletes"
    SqlRunner.run(sql)
  end

  def self.map_items(sql)
    nation = SqlRunner.run(sql)
    result = nation.map { |name| Nation.new(name) }
    return result
  end

  def self.map_item(sql)
    result = Nation.map_items(sql)
    return result.first
  end
  
end