DROP TABLE athletes;

DROP TABLE events;
DROP TABLE nations;

CREATE TABLE nations(
  id serial4 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE events (
  id serial4 PRIMARY KEY,
  name VARCHAR(255)
 
);

CREATE TABLE athletes (
  id serial4 PRIMARY KEY,
  name VARCHAR(255),
  nations_id int4 references nations(id) ON DELETE CASCADE,
  event_id int4 references events(id) ON DELETE CASCADE
);


