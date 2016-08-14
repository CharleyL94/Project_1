require('pg')
require_relative('../db/sql_runner')

class Participation

  attr_reader :id, :athlete_id, :event_id

  def initialize( options )
    @id = options['id'].to_i
    @athlete_id = options['athlete_id'].to_i
    @event_id = options['event_id'].to_i
  end

  def save()
    sql = "INSERT INTO participants (athlete_id, event_id) VALUES (#{@athlete_id}, #{@event_id}) RETURNING *"
    rental = SqlRunner.run(sql).first
    @id = participant['id']
  end

  def athlete()
    sql = "SELECT * FROM athletes WHERE id = #{@athlete_id}"
    return Athlete.map_item(sql)
  end

  def event()
    sql = "SELECT * FROM events WHERE id = #{@event_id}"
    return Event.map_item(sql)
  end

  def self.all()
    sql = "SELECT * FROM participants"
    return Participant.map_items(sql)
  end

  def self.delete_all()
    sql = "DELETE FROM participants"
    SqlRunner.run(sql)
  end

  def self.map_items(sql)
    participant = SqlRunner.run(sql)
    result = participant.map { |product| Participant.new( product ) }
    return result
  end

  def self.map_item(sql)
    result = Participant.map_items(sql)
    return result.first
  end

end