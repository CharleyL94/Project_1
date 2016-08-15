DROP TABLE participations;
DROP TABLE events;
DROP TABLE athletes;
DROP TABLE nations;

CREATE TABLE nations(
  id serial4 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE athletes (
  id serial4 PRIMARY KEY,
  name VARCHAR(255),
  nations_id int4 references nations(id) ON DELETE CASCADE
);

CREATE TABLE events (
  id serial4 PRIMARY KEY,
  name VARCHAR(255),
  gold_id int4 references athletes(id) ON DELETE CASCADE,
  silver_id int4 references athletes(id) ON DELETE CASCADE,
  brozne_id int4 references athletes(id) ON DELETE CASCADE
);

CREATE TABLE participations (
id serial4 PRIMARY KEY,
athlete_id int4 references athletes(id) ON DELETE CASCADE,
event_id int4 references events(id) ON DELETE CASCADE


);