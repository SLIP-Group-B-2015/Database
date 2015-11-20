-- Written by Arthur Verkaik

-- Add a name field in Raspberries which will be used to let users name their
-- raspberries.
-- Also, change table Raspberries so it can now let multiple users connect to
-- a single raspberry by changing the primary key to (raspberryID, userID).

ALTER TABLE Raspberries DROP CONSTRAINT raspberries_pkey CASCADE;
ALTER TABLE Raspberries ADD PRIMARY KEY (raspberryID, userID);
ALTER TABLE Raspberries ADD COLUMN raspberryName varchar(30);
