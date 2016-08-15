require('pry-byebug')
require_relative('../models/athlete.rb')
require_relative('../models/event.rb')
require_relative('../models/nation.rb')
require_relative('../models/participation.rb')

Athlete.delete_all()
Event.delete_all()
Nation.delete_all()
Participation.delete_all()

athlete1 = Athlete.new({'name' => 'Usian Bolt', 'Nation' => 'Jamaica', 'event' => '100 metres'})
athlete2 = Athlete.new({'name' => 'Justin Gatlin', 'Nation' => 'USA', 'event' => '100 metres'})
athlete3 = Athlete.new({'name' => 'Andre De Grasse', 'Nation' => 'Canada', 'event' => '100 metres'})
athlete4 = Athlete.new({'name' => 'Nafissatou Thaim', 'Nation' => 'Belguim', 'event' => 'Heptathlon'})
athlete5 = Athlete.new({'name' => 'Jessica Ennis-Hill', 'Nation' => 'UK', 'event' => 'Heptathlon'})
athlete6 = Athlete.new({'name' => 'Brianne Theisen Eaton', 'Nation' => 'Canada', 'event' => 'Heptathlon'})
athlete7 = Athlete.new({'name' => 'Justin Rose', 'Nation' => 'GB', 'event' => 'golf'})
athlete8 = Athlete.new({'name' => 'Henrik Stenson', 'Nation' => 'Sweden', 'event' => 'golf'})
athlete9 = Athlete.new({'name' => 'Matt Kuchar', 'Nation' => 'USA', 'event' => 'golf'})
athlete10 = Athlete.new({'name' => 'Max Whitlock', 'Nation' => 'GB', 'event' => 'Pommel Horse'})
athlete11 = Athlete.new({'name' => 'Louis Smith', 'Nation' => 'GB', 'event' => 'Pommel Horse'})
athlete12 = Athlete.new({'name' => 'Alexander Nddour', 'Nation' => 'USA', 'event' => 'Pommel Horse'})
athlete13 = Athlete.new({'name' => 'Simone Biles', 'Nation' => 'USA', 'event' => 'All round Individual Gymanst'})
athlete14 = Athlete.new({'name' => 'Alenandra Raisman', 'Nation' => 'USA', 'event' => 'All round Individual Gymanst'})
athlete15 = Athlete.new({'name' => 'Ailya Mustafina', 'Nation' => 'Russia', 'event' => 'All round Individual Gymanst'})

athlete1.save
athlete2.save
athlete3.save
athlete4.save
athlete5.save
athlete6.save
athlete7.save
athlete8.save
athlete9.save
athlete10.save
athlete11.save
athlete12.save
athlete13.save
athlete14.save
athlete15.save

event1 = Event.new({'name' => '100 metres', 'gold_id' => 'athlete1.id', 'silver_id' => 'athlete2.id', 'brozne' => 'athlete3.id'})
event2 = Event.new({'name' => 'Heptathlon', 'gold_id' => 'athlete4.id', 'silver_id' => 'athlete5.id', 'brozne' => 'athlete6.id'})
event3 = Event.new({'name' => 'Golf''gold_id' => 'athlete7.id', 'silver_id' => 'athlete8.id', 'brozne' => 'athlete9.id'})
event4 = Event.new({'name' => 'Pommel Horse' 'gold_id' => 'athlete10.id', 'silver_id' => 'athlete11.id', 'brozne' => 'athlete12.id'})
event5 = Event.new({'name' => 'All round individual Gymanst''gold_id' => 'athlete13.id', 'silver_id' => 'athlete14.id', 'brozne' => 'athlete15.id'})

event1.save
event2.save
event3.save
event4.save
event5.save



