-- Written by Arthur Verkaik
-- Adds a new field in Events called name (firstName + lastName from Users)
-- Also changes the name of the description field to note.

ALTER TABLE Events ADD COLUMN name varchar(50);
ALTER TABLE Events RENAME COLUMN description TO note;
ALTER TABLE Events RENAME COLUMN eventid TO eventtype;
