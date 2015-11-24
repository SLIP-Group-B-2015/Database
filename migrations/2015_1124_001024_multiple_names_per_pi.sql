-- Written by Arthur Verkaik
-- After even further discussion with the whole group, we decided to change back
-- to allowing multiple names per pi. This is because of our "office" pitch.
-- To do this, we will keep the raspberry_names table but move the name column
-- to the raspberries table.
-- Some renaming is done to make the tables clearer.

ALTER TABLE Raspberry_names DROP COLUMN raspberryName;
ALTER TABLE Raspberries ADD COLUMN raspberryname varchar(30);

ALTER TABLE Raspberries RENAME TO connections;
ALTER TABLE Raspberry_names RENAME TO raspberries;
