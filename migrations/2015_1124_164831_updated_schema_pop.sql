-- Written by Arthur Verkaik
-- ensure everything is empty beforehand.
DELETE FROM connections;
DELETE FROM raspberries;
DELETE FROM events;

-- Users table population
INSERT INTO Users VALUES ('1884087f-bb5f-43d9-9d53-794ec3a7c0ae', 'arthur', 'arthur@mail.com', 'Arthur', 'Verkaik', '$pbkdf2-sha256$2000$7T2n1Pp/jxGiFCJkTOm9Nw$08SpbelApLbaf3rPWqPN9Lda6pTk4JWfh3rTR1otq.4');
INSERT INTO Users VALUES ('b67d69b1-aa3e-4d07-82af-7c4cc6a5d26f', 'marshall', 'marshall@mail.com', 'Marshall', 'Bradley', '$pbkdf2-sha256$2000$Maa01pqzFmLsPSfEOGestQ$tpiLKk76D73nnAdzLGeCZ6/aOJwCZLzlplrb6rqi.SE');
INSERT INTO Users VALUES ('11766785-7f86-4b93-9821-1ed79aed41f1', 'rikki', 'rikki@mail.com', 'Rikki', 'Guy', '$pbkdf2-sha256$2000$DwEAwBhDSEnp/V.rdY4x5g$vwhAfl8ZFVPkdnvWi.LVPuhdL5Dny6a6duRpc4bdFmo');
INSERT INTO Users VALUES ('0f7763e8-2d4b-44dd-b9a5-5bf653c1cf50', 'iman', 'iman@mail.com', 'Iman', 'Majumdar', '$pbkdf2-sha256$2000$0Xrv3Xvvvbf2XqvVmjOGsA$r3epV1xvYsLU8xKDEjpOlwJrF4OBzsoNRJrQHrIvCkA');
INSERT INTO Users VALUES ('f0c58b7d-6a9d-428f-9e58-bfff6e5f3d82', 'jamie', 'jamie@mail.com', 'Jamie', 'McCracken', '$pbkdf2-sha256$2000$KyVEiBFi7B0DgHDunVOK8Q$PrIzVbfRyQyGKrn06hG6EY76kxYcduLQrEZur7E7uIw');

-- Raspberries table population
INSERT INTO Raspberries VALUES ('c4ed2373-df65-4c89-bf2e-f45775d9d1bb');
INSERT INTO Raspberries VALUES ('8269ed16-7fc0-4328-a6f1-dacbfa18f26d');
INSERT INTO Raspberries VALUES ('3d7555c3-3e76-4950-a6ca-a5a0588ba0d3');
INSERT INTO Raspberries VALUES ('e2fedebe-2825-4886-ba97-25d569a83b18');
INSERT INTO Raspberries VALUES ('a4a23f9e-07bb-4c7f-98a0-88ad30dc819e');
INSERT INTO Raspberries VALUES ('967d75f3-f929-48ea-a1dd-3fe7dd7140bd');

-- Connections - add one pi per user.
INSERT INTO Connections VALUES('c4ed2373-df65-4c89-bf2e-f45775d9d1bb', '1884087f-bb5f-43d9-9d53-794ec3a7c0ae', 'Home');
INSERT INTO Connections VALUES('8269ed16-7fc0-4328-a6f1-dacbfa18f26d', 'b67d69b1-aa3e-4d07-82af-7c4cc6a5d26f', 'Marshall Home');
INSERT INTO Connections VALUES('3d7555c3-3e76-4950-a6ca-a5a0588ba0d3', '11766785-7f86-4b93-9821-1ed79aed41f1', 'Rikki <3 Pies');
INSERT INTO Connections VALUES('e2fedebe-2825-4886-ba97-25d569a83b18', '0f7763e8-2d4b-44dd-b9a5-5bf653c1cf50', 'Subway');
INSERT INTO Connections VALUES('a4a23f9e-07bb-4c7f-98a0-88ad30dc819e', 'f0c58b7d-6a9d-428f-9e58-bfff6e5f3d82', 'Jim Bob');
-- Connections - create a pi which all of us are connected to.
INSERT INTO Connections VALUES('967d75f3-f929-48ea-a1dd-3fe7dd7140bd', '1884087f-bb5f-43d9-9d53-794ec3a7c0ae', 'SLIP Room');
INSERT INTO Connections VALUES('967d75f3-f929-48ea-a1dd-3fe7dd7140bd', 'b67d69b1-aa3e-4d07-82af-7c4cc6a5d26f', 'SLIP Room');
INSERT INTO Connections VALUES('967d75f3-f929-48ea-a1dd-3fe7dd7140bd', '11766785-7f86-4b93-9821-1ed79aed41f1', 'SLIP Room');
INSERT INTO Connections VALUES('967d75f3-f929-48ea-a1dd-3fe7dd7140bd', '0f7763e8-2d4b-44dd-b9a5-5bf653c1cf50', 'SLIP Room');
INSERT INTO Connections VALUES('967d75f3-f929-48ea-a1dd-3fe7dd7140bd', 'f0c58b7d-6a9d-428f-9e58-bfff6e5f3d82', 'SLIP Room');
-- Connections - connect marshall to arthur's pi and name it differently.
INSERT INTO Connections VALUES('c4ed2373-df65-4c89-bf2e-f45775d9d1bb', 'b67d69b1-aa3e-4d07-82af-7c4cc6a5d26f', 'Arthur Pi');
