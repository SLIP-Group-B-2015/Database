CREATE EXTENSION "uuid-ossp";
CREATE EXTENSION "pgcrypto";

CREATE TABLE Users (
  userID uuid PRIMARY KEY,
  username varchar(12) NOT NULL,
  email varchar(50) NOT NULL,
  firstName varchar(30) NOT NULL,
  lastName varchar(30) NOT NULL,
  password varchar(100) NOT NULL
);

INSERT INTO users VALUES ('1884087f-bb5f-43d9-9d53-794ec3a7c0ae', 'arthur', 'arthur@mail.com', 'Arthur', 'Verkaik', crypt('password', gen_salt('md5')));
INSERT INTO users VALUES ('b67d69b1-aa3e-4d07-82af-7c4cc6a5d26f', 'marshall', 'marshall@mail.com', 'Marshall', 'Bradley', crypt('password', gen_salt('md5')));
INSERT INTO users VALUES ('11766785-7f86-4b93-9821-1ed79aed41f1', 'rikki', 'rikki@mail.com', 'Rikki', 'Guy', crypt('password', gen_salt('md5')));
INSERT INTO users VALUES ('0f7763e8-2d4b-44dd-b9a5-5bf653c1cf50', 'iman', 'iman@mail.com', 'Iman', 'Majumdar', crypt('password', gen_salt('md5')));
INSERT INTO users VALUES ('f0c58b7d-6a9d-428f-9e58-bfff6e5f3d82', 'jamie', 'jamie@mail.com', 'Jamie', 'McCracken', crypt('password', gen_salt('md5')));

CREATE TABLE Raspberries (
  raspberryID uuid PRIMARY KEY,
  userID uuid REFERENCES users(userID)
);

INSERT INTO raspberries VALUES ('c4ed2373-df65-4c89-bf2e-f45775d9d1bb', '1884087f-bb5f-43d9-9d53-794ec3a7c0ae');
INSERT INTO raspberries VALUES ('8269ed16-7fc0-4328-a6f1-dacbfa18f26d', 'b67d69b1-aa3e-4d07-82af-7c4cc6a5d26f');
INSERT INTO raspberries VALUES ('3d7555c3-3e76-4950-a6ca-a5a0588ba0d3', '11766785-7f86-4b93-9821-1ed79aed41f1');
INSERT INTO raspberries VALUES ('e2fedebe-2825-4886-ba97-25d569a83b18', '0f7763e8-2d4b-44dd-b9a5-5bf653c1cf50');
INSERT INTO raspberries VALUES ('a4a23f9e-07bb-4c7f-98a0-88ad30dc819e', 'f0c58b7d-6a9d-428f-9e58-bfff6e5f3d82');

CREATE TABLE Events (
  raspberryID uuid REFERENCES raspberries(raspberryID),
  eventID varchar(10) NOT NULL,
  eventTime timestamp DEFAULT current_timestamp,
  description text,
  PRIMARY KEY(raspberryID,eventID,eventTime)
);

INSERT INTO events VALUES ('c4ed2373-df65-4c89-bf2e-f45775d9d1bb', 'knock', current_timestamp, '');
INSERT INTO events VALUES ('8269ed16-7fc0-4328-a6f1-dacbfa18f26d', 'mail', current_timestamp, '');
INSERT INTO events VALUES ('3d7555c3-3e76-4950-a6ca-a5a0588ba0d3', 'knock', current_timestamp, 'test description 1');
INSERT INTO events VALUES ('e2fedebe-2825-4886-ba97-25d569a83b18', 'mail', current_timestamp, 'test description 2');
INSERT INTO events VALUES ('a4a23f9e-07bb-4c7f-98a0-88ad30dc819e', 'knock', current_timestamp, 'eyeoeorieor');
