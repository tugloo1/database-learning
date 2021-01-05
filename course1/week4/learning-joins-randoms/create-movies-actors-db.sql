/********************************************************
* This script creates the database named my_guitar_shop 
*********************************************************/

DROP DATABASE IF EXISTS test_joins;
CREATE DATABASE test_joins;
USE test_joins;


-- create the tables for the database
CREATE TABLE actors (
  actor_id        INT            PRIMARY KEY   AUTO_INCREMENT,
  actor_name      VARCHAR(255)   NOT NULL      UNIQUE
);

CREATE TABLE movies (
  movie_id           INT            PRIMARY KEY   AUTO_INCREMENT,
  primary_actor_id   INT,
  movie_title        VARCHAR(255)   NOT NULL,
  CONSTRAINT movies_fk_actors
    FOREIGN KEY (primary_actor_id)
    REFERENCES actors (actor_id)
);

INSERT INTO actors (actor_id, actor_name) VALUES
(1, 'Robert Downey JR.'),
(2, 'Chris Evans'),
(3, 'Piyush Gupta'),
(4, 'Kenny Szeto');

INSERT INTO movies (movie_id, primary_actor_id, movie_title) VALUES
(1, 1, 'Ironman'),
(2, 2, 'Captain America'),
(3, 2, 'The Winter Solider'),
(4, 1, 'Avengers'),
(5, 1, 'Sherlock'),
(6, NULL, 'some random movie');