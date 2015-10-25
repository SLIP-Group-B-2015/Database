-- Written by Arthur Verkaik

-- Adds the sent field in Events to allow the server to know which Events
-- have/have not been sent yet, and use that information to send those for which
-- sent is False and ignore those for which it is True.

ALTER TABLE Events ADD COLUMN sent boolean DEFAULT false;
