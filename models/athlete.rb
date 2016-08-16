require('pg')
require_relative('../db/sql_runner')

class Athlete

  attr_reader :id, :name, :nation, :event_id  #or :nation_id

def initialize(options)
  @id = options['id'].to_i
  @name = options['name']
  @nations_id = options['nations_id']
  @event_id = options['event_id']
end

def save()
  sql = "INSERT INTO athletes (name, nations_id, event_id ) VALUES ('#{@name}', '#{@nations_id}', '#{@event_id}' )RETURNING *"
  athlete = SqlRunner.run(sql).first
  @id = athlete['id']
end

def delete
  sql = "DELETE FROM athletes WHERE id = #{@id}"
  SqlRunner.run(sql)
end


def self.find(id)
  sql = "SELECT * FROM athletes WHERE id = #{id}"
  return Athlete.map_item(sql)
end

def self.all()
  sql = "SELECT * FROM athletes"
  return Athlete.map_items(sql)
end

def self.delete_all()
  sql = "DELETE FROM athletes"
  SqlRunner.run(sql)
end

def self.map_items(sql)
  athlete = SqlRunner.run(sql)
  result = athlete.map { |name| Athlete.new(name)}
  return result
end

def self.map_item(sql)
  result = Athlete.map_items(sql)
  return result.first
end


def nation
 sql = "SELECT * FROM nations WHERE id = #{@nations_id}"
 nation = SqlRunner.run(sql).first 
 result = Nation.new(nation)
 return result
 end

 def event
  sql = "SELECT * FROM events WHERE id = #{@event_id}"
  event = SqlRunner.run(sql).first
  result = Event.new(event)
end

end