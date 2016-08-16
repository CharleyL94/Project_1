require('pry-byebug')
require_relative('../models/athlete.rb')
require_relative('../models/event.rb')
require_relative('../models/nation.rb')
require_relative('../models/participation.rb')

Athlete.delete_all()
Event.delete_all()
Nation.delete_all()
# Participation.delete_all()

nation1 = Nation.new({'name'=>'Jamacia'})
nation2 = Nation.new({'name'=>'USA'})
nation3 = Nation.new({'name' => 'UK'})
nation4 = Nation.new({'name' => 'Canada'})
nation5 = Nation.new({'name' => 'Belgium'})
nation6 = Nation.new({'name' => 'South Korea'})
nation7 = Nation.new({'name' => 'Greece'})

nation1.save
nation2.save
nation3.save
nation4.save
nation5.save
nation6.save
nation7.save

athlete1 = Athlete.new({'name' => 'Usian Bolt', 'nations_id' => nation1.id})
athlete2 = Athlete.new({'name' => 'Justin Gatlin', 'nations_id' => nation2.id })
athlete3 = Athlete.new({'name' => 'Max Witlock', 'nations_id' => nation3.id})
athlete4 = Athlete.new({'name' => 'Rosannagh Maclennan', 'nations_id' => nation4.id})
athlete5 = Athlete.new({'name' => 'Dirk Van Tichelt', 'nations_id' => nation5.id})
athlete6 = Athlete.new({'name' => 'Hyejin Chang', 'nations_id' => nation6.id})
athlete7 = Athlete.new({'name' => 'Eleftherios Petrounias', 'nations_id' => nation7.id})

athlete1.save
athlete2.save
athlete3.save

event1 = Event.new({'name' => '100 metres', 'gold_id' => athlete1.id, 'silver_id' => athlete2.id, 'bronze' => athlete2.id})
event2 = Event.new({'name' => 'Heptathlon', 'gold_id' => athlete2.id, 'silver_id' => athlete1.id, 'bronze' => athlete1.id})

event1.save
event2.save

binding.pry
nil

