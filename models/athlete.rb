require('pg')
require_relative('../db/sql_runner')

class Athlete

  attr_reader :id, :name, :nation, :event

def initiaalize(options)
@id = options['id'].to_i
@name = options['name']
@nation = options['nation']
@event = options['event']
end

def save()
  sql = "INSERT INTO athletes (name, nation,event) VALUES ('#{@name}', '#{@nation}', '#{@event}') RETURNING *"
  athlete = SqlRunner.run(sql).first
  @id = athlete['id']
end

def self.find(id)
  sql = "SELECT * FROM athletes WHERE id = #{id}"
  return Athlete.map_items(sql)
end







end