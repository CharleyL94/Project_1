require('pry-byebug')
require_relative('../models/athlete.rb')
require_relative('../models/event.rb')
require_relative('../models/nation.rb')
require_relative('../models/participation.rb')

Athlete.delete_all()
Event.delete_all()
Nation.delete_all()
# Participation.delete_all()

nation1 = Nation.new({'name'=>'Jamaica'})
nation2 = Nation.new({'name'=>'USA'})

nation1.save
nation2.save

athlete1 = Athlete.new({'name' => 'Usian Bolt', 'nations_id' => nation1.id})
athlete2 = Athlete.new({'name' => 'Justin Gatlin', 'nations_id' => nation2.id })

athlete1.save
athlete2.save

event1 = Event.new({'name' => '100 metres', 'gold_id' => athlete1.id, 'silver_id' => athlete2.id, 'bronze' => athlete2.id})
event2 = Event.new({'name' => 'Heptathlon', 'gold_id' => athlete2.id, 'silver_id' => athlete1.id, 'bronze' => athlete1.id})

event1.save
event2.save

binding.pry
nil

