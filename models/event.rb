require('pg')
require_relative('../db/sql_runner')

class Event

  attr_reader :id, :name

  def initialize( options )
    @id = options['id'].to_i
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO events ( name ) VALUES ('#{@name}' ) RETURNING *"
    member = SqlRunner.run(sql).first
    @id = member['id']
  end


  def self.all()
    sql = "SELECT * FROM events"
    return Event.map_items(sql)
  end

  def self.find(id)
    sql = "SELECT * FROM events WHERE id = #{id}"
    return Event.map_item(sql)
  end

  def self.delete_all()
    sql = "DELETE FROM events"
    SqlRunner.run(sql)
  end

  def self.map_items(sql)
    event = SqlRunner.run(sql)
    result = event.map { | name | Event.new( name ) }
    return result
  end

  def self.map_item(sql)
    result = Event.map_items(sql)
    return result.first
  end

end