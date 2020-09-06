
DROP TABLE IF EXISTS ratings;
DROP TABLE IF EXISTS responders;

CREATE TABLE responders
(
responder_id int PRIMARY KEY,
responder varchar(100) NOT NULL
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/responders.csv' 
INTO TABLE responders
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

CREATE TABLE ratings
(
survey_id int NOT NULL,
Onward int NULL,
Sonic_the_Hedgehog int NULL,
Parasite int NULL,
Uncut_Gems int NULL,
Cats int NULL,
Joker int NULL,
FOREIGN KEY (survey_id) REFERENCES responders(responder_id)
);
  
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/ratings.csv' 
INTO TABLE ratings
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

/*

CREATE TABLE responders
(
responder_id int AUTO_INCREMENT PRIMARY KEY,
responder varchar(100) NOT NULL
);

CREATE TABLE ratings
(
survey_id int NOT NULL,
Onward int NULL,
Sonic_the_Hedgehog int NULL,
Parasite int NULL,
Uncut_Gems int NULL,
Cats int NULL,
Joker int NULL,
FOREIGN KEY (survey_id) REFERENCES responders(responder_id)
);

INSERT INTO responders (responder)
VALUES
	('Sam'),
    ('Michelle'),
    ('Joey'),
    ('Steph'),
    ('Danny'),
    ('Brian'),
    ('Ariel'),
    ('Amelia');
   
INSERT INTO ratings (survey_id, Onward, Sonic_the_Hedgehog, Parasite, Uncut_Gems, Cats, Joker)
VALUES
	(1, NULL, 2, 4, 4, 1, 5),
	(2, 3, 1, 3, 3, 2, 5),
    (3, 4, 1, 4, 2, 2, 4),
    (4, 5, 5, 5, 5, 5, 5),
    (5, 4, NULL, 5, 4, NULL, 4),
    (6, 3, 2, 3, 1, 3, 5),
    (7, 4, 3, NULL, 3, 2, 5),
    (8, NULL, 2, 3, 3, 1, 5);

*/

