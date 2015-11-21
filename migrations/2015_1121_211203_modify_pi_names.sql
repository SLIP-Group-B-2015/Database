-- Written by Arthur Verkaik

-- After further discussion, the decision to add names to the Raspberries table
-- was reversed. Instead, we will be opting to create a new table called
-- RaspberryNames which will store the name linked to each raspberry. This
-- means that a raspberry will only ever have one 'name' linked to it at
-- any time. This decision came because Iman and I thought the raspberry
-- should be treated as a router; and also because of storage issues. The
-- RaspberryNames table will only ever be as large as there are raspberries,
-- while the Raspberries table has as many entries as there are users. If we
-- had 1000 users connected to 250 raspberries, we'd be storing 500 pieces of new
-- information in the new table, while the name column in Raspberries would require
-- 1000 entries on its own.


ALTER TABLE Raspberries DROP COLUMN raspberryName;

-- Table for the pi names.
CREATE TABLE Raspberry_names (
  raspberryID uuid PRIMARY KEY,
  raspberryName varchar(30)
);

INSERT INTO Raspberry_names VALUES ('c4ed2373-df65-4c89-bf2e-f45775d9d1bb', 'Arthur is the best right now');
INSERT INTO Raspberry_names VALUES ('8269ed16-7fc0-4328-a6f1-dacbfa18f26d', 'Marshall is the worst');
INSERT INTO Raspberry_names VALUES ('3d7555c3-3e76-4950-a6ca-a5a0588ba0d3', 'Rikki');
INSERT INTO Raspberry_names VALUES ('e2fedebe-2825-4886-ba97-25d569a83b18', 'Iman raspberry');
INSERT INTO Raspberry_names VALUES ('a4a23f9e-07bb-4c7f-98a0-88ad30dc819e', 'Jamie');


ALTER TABLE Events ADD FOREIGN KEY(raspberryID) REFERENCES Raspberry_names(raspberryID);
ALTER TABLE Raspberries ADD FOREIGN KEY(raspberryID) REFERENCES Raspberry_names(raspberryID);
