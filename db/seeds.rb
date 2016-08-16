require('pry-byebug')
require_relative('../models/athlete.rb')
require_relative('../models/event.rb')
require_relative('../models/nation.rb')
# require_relative('../models/participation.rb')

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

event1 = Event.new({'name' => '100 metres'})
event2 = Event.new({'name' => 'Heptathlon'})
event3 = Event.new({'name' => 'Mens Pommel Horse'})
event4 = Event.new({'name' => 'Trampoline'})
event5 = Event.new({'name'=>'Mens 73kg Judo'})
event6 = Event.new({'name'=>'Womens Individual Archery'})
event7 = Event.new({'name'=>'Gymnast Rings'})

event1.save
event2.save
event3.save
event4.save
event5.save
event6.save
event7.save

athlete1 = Athlete.new({'name' => 'Usian Bolt', 'nations_id' => nation1.id, 'event_id' => event1.id})
athlete2 = Athlete.new({'name' => 'Justin Gatlin', 'nations_id' => nation2.id, 'event_id' => event1.id })
athlete3 = Athlete.new({'name' => 'Max Witlock', 'nations_id' => nation3.id, 'event_id' => event1.id})
athlete4 = Athlete.new({'name' => 'Rosannagh Maclennan', 'nations_id' => nation4.id, 'event_id' => event1.id})
athlete5 = Athlete.new({'name' => 'Dirk Van Tichelt', 'nations_id' => nation5.id, 'event_id' => event1.id})
athlete6 = Athlete.new({'name' => 'Hyejin Chang', 'nations_id' => nation6.id, 'event_id' => event1.id})
athlete7 = Athlete.new({'name' => 'Eleftherios Petrounias', 'nations_id' => nation7.id, 'event_id' => event1.id})

athlete1.save
athlete2.save
athlete3.save
athlete4.save
athlete5.save
athlete6.save
athlete7.save


binding.pry
nil

