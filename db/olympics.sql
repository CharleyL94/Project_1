DROP TABLE athletes;
DROP TABLE events;
DROP TABLE participation;
DROP TABLE nations;

CREATE TABLE athletes (
  id serial4 PRIMARY KEY,
  name VARCHAR(255),
  nations_id int4 references nations(id) ON DELETE CASCADE
);

CREATE TABLE nations(
  id serial4 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE events (
  id serial4 PRIMARY KEY,
  name VARCHAR(255),
  gold_id references athletes(id) ON DELETE CASCADE,
  silver_id references athletes(id) ON DELETE CASCADE,
  brozne_id references athletes(id) ON DELETE CASCADE
);

CREATE TABLE participations (
id serial4 PRIMARY KEY,
athlete_id int4 references athletes(id) ON DELETE CASCADE,
event_id references events(id) ON DELETE CASCADE


);