-- Written by Arthur Verkaik

-- Users table
CREATE TABLE Users (
  userID uuid PRIMARY KEY,
  username varchar(12) NOT NULL UNIQUE,
  email varchar(50) NOT NULL UNIQUE,
  firstName varchar(30) NOT NULL,
  lastName varchar(30) NOT NULL,
  password varchar(100) NOT NULL
);

-- Table for the raspberry pi's, links them to the users they're connected to.
CREATE TABLE Raspberries (
  raspberryID uuid PRIMARY KEY,
  userID uuid REFERENCES users(userID)
);

-- Events table, linked to the pi (which is linked to different users)
CREATE TABLE Events (
  raspberryID uuid REFERENCES raspberries(raspberryID),
  eventID varchar(10) NOT NULL,
  eventTime timestamp DEFAULT current_timestamp,
  description text,
  PRIMARY KEY(raspberryID,eventID,eventTime)
);
