DROP TABLE userBase;
DROP TABLE users;
DROP TABLE games;

CREATE TABLE users(
accountId INT PRIMARY KEY,
accoutName VARCHAR(100),
location VARCHAR(100),
optionalSummary VARCHAR(250)
);

CREATE TABLE games(
gameName VARCHAR(100) PRIMARY KEY
);


INSERT INTO users VALUES
(1, "user1", "San Diego", ""),
(2, "user2", "Wyoming", "I play games"),
(3, "user3", "USA", "Bio goes here");

INSERT INTO games VALUES
("Ring"),
("Battle Bois"),
("First Hit: Wordly Movement");

CREATE TABLE userBase(
userId INT PRIMARY KEY,
accountId INT,
ownedGame VARCHAR(100),
FOREIGN KEY (accountId) REFERENCES users(accountId),
FOREIGN KEY (ownedGame) REFERENCES games(gameName)
);

INSERT INTO userBase VALUES
(1, 1, "Ring"),
(2, 2, "First Hit: Wordly Movement"),
(3, 3, "Battle Bois");

SELECT * FROM userBase;



