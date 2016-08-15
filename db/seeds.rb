require('pry-byebug')
require_relative('../models/athlete.rb')
require_relative('../models/event.rb')
require_relative('../models/nation.rb')
require_relative('../models/participation.rb')

Athlete.delete_all()
Event.delete_all()
Nation.delete_all()
Participation.delete_all()

nation1 = Nation.new({'name'=>'Jamaica'})
nation2 = Nation.new({'name'=>'USA'})
nation3 = Nation.new({'name' => 'Canada'})
nation4 = Nation.new({'name' => 'Belguim'})
nation5 = Nation.new({'name' => 'UK'})
nation6 = Nation.new({'name' => 'Sweden'})
nation7 = Nation.new({'name' => 'Russia'})

nation1.save
nation2.save
nation3.save
nation4.save
nation5.save
nation6.save
nation7.save

athlete1 = Athlete.new({'name' => 'Usian Bolt', 'Nation' => 'nation1.id', 'event' => '100 metres'})
athlete2 = Athlete.new({'name' => 'Justin Gatlin', 'Nation' => 'nation2.id', 'event' => '100 metres'})
athlete3 = Athlete.new({'name' => 'Andre De Grasse', 'Nation' => 'nation3.id', 'event' => '100 metres'})
athlete4 = Athlete.new({'name' => 'Nafissatou Thaim', 'Nation' => 'nation4.id', 'event' => 'Heptathlon'})
athlete5 = Athlete.new({'name' => 'Jessica Ennis-Hill', 'Nation' => 'nation5.id', 'event' => 'Heptathlon'})
athlete6 = Athlete.new({'name' => 'Brianne Theisen Eaton', 'Nation' => 'nation3.id', 'event' => 'Heptathlon'})
athlete7 = Athlete.new({'name' => 'Justin Rose', 'Nation' => 'nation5.id', 'event' => 'golf'})
athlete8 = Athlete.new({'name' => 'Henrik Stenson', 'Nation' => 'nation6.id', 'event' => 'golf'})
athlete9 = Athlete.new({'name' => 'Matt Kuchar', 'Nation' => 'nation2.id', 'event' => 'golf'})
athlete10 = Athlete.new({'name' => 'Max Whitlock', 'Nation' => 'nation5.id', 'event' => 'Pommel Horse'})
athlete11 = Athlete.new({'name' => 'Louis Smith', 'Nation' => 'nation5.id', 'event' => 'Pommel Horse'})
athlete12 = Athlete.new({'name' => 'Alexander Nddour', 'Nation' => 'nation2.id', 'event' => 'Pommel Horse'})
athlete13 = Athlete.new({'name' => 'Simone Biles', 'Nation' => 'nation2.id', 'event' => 'All round Individual Gymanst'})
athlete14 = Athlete.new({'name' => 'Alenandra Raisman', 'Nation' => 'nation2.id', 'event' => 'All round Individual Gymanst'})
athlete15 = Athlete.new({'name' => 'Ailya Mustafina', 'Nation' => 'nation7.id', 'event' => 'All round Individual Gymanst'})

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
event3 = Event.new({'name' => 'Golf','gold_id' => 'athlete7.id', 'silver_id' => 'athlete8.id', 'brozne' => 'athlete9.id'})
event4 = Event.new({'name' => 'Pommel Horse', 'gold_id' => 'athlete10.id', 'silver_id' => 'athlete11.id', 'brozne' => 'athlete12.id'})
event5 = Event.new({'name' => 'All round individual Gymanst','gold_id' => 'athlete13.id', 'silver_id' => 'athlete14.id', 'brozne' => 'athlete15.id'})

event1.save
event2.save
event3.save
event4.save
event5.save

participation1 = Participation.new('event_id' => 'event1.id', 'athlete_id' => 'athlete1.id')
participation2 = Participation.new('event_id' => 'event1.id', 'athlete_id' => 'athlete2.id')
participation3 = Participation.new('event_id' => 'event1.id', 'athlete_id' => 'athlete3.id')
participation4 = Participation.new('event_id' => 'event2.id', 'athlete_id' => 'athlete4.id')
participation5 = Participation.new('event_id' => 'event2.id', 'athlete_id' => 'athlete5.id')
participation6 = Participation.new('event_id' => 'event2.id', 'athlete_id' => 'athlete6.id')
participation7 = Participation.new('event_id' => 'event3.id', 'athlete_id' => 'athlete7.id')
participation8 = Participation.new('event_id' => 'event3.id', 'athlete_id' => 'athlete8.id')
participation9 = Participation.new('event_id' => 'event3.id', 'athlete_id' => 'athlete9.id')
participation10 = Participation.new('event_id' => 'event4.id', 'athlete_id' => 'athlete10.id')
participation11 = Participation.new('event_id' => 'event4.id', 'athlete_id' => 'athlete11.id')
participation12 = Participation.new('event_id' => 'event4.id', 'athlete_id' => 'athlete12.id')
participation13 = Participation.new('event_id' => 'event5.id', 'athlete_id' => 'athlete13.id')
participation14 = Participation.new('event_id' => 'event5.id', 'athlete_id' => 'athlete14.id')
participation4 = Participation.new('event_id' => 'event5.id', 'athlete_id' => 'athlete14.id')

participation1.save
participation2.save
participation3.save
participation4.save
participation5.save
participation6.save
participation7.save
participation8.save
participation9.save
participation10.save
participation11.save
participation12.save
participation13.save
participation14.save
participation15.save

binding.pry
nil

