CREATE DATABASE nationalbasketball;
CREATE DATABASE IF NOT EXISTS nationalbasketball;
USE nationalbasketball;
CREATE TABLE Arenas (id INT, nickname VARCHAR(50), city VARCHAR(50), team VARCHAR(50), state VARCHAR(50), country VARCHAR(3), Zip_Code VARCHAR(8), capacity INT, sponsor VARCHAR(35), Year_Opened INT(4));
INSERT INTO Arenas (id, nickname, city, team,  state, country, Zip_Code, capacity, sponsor, Year_Opened)
VALUES ('1', "American Airlines Center", "Dallas", "Mavericks" "Texas", "USA", '75219', '19200', "Chime", '2001');
INSERT INTO Arenas (id, nickname, city, team, state, country, Zip_Code, capacity, sponsor, Year_Opened)
VALUES ('2', "Amway Arena", "Orlando", "Magic", "Florida", "USA", '32801', '18846', "Walt Disney World", '2010');
INSERT INTO Arenas (id, nickname, city, team, state, country, Zip_Code, capacity, sponsor, Year_Opened)
VALUES ('3', "AT&T Center", "San Antonio", "Spurs", "Texas", "USA", '78219', '18418', "Frost Bank", '2002');
INSERT INTO Arenas (id, nickname, city, team, state,country, Zip_Code, capacity, sponsor, Year_Opened)
VALUES ('4', "Pepsi Center", "Denver","Nuggets",  "Colorado", "USA", '78219', '19520', "Western Union", '1999');
INSERT INTO Arenas (id, nickname, city, team, state, country, Zip_Code, capacity, sponsor, Year_Opened)
VALUES ('5', "Barclays Center", "Brooklyn", "Nets" "New York", "USA", '11217', 17732, "Infor", 2012);
INSERT INTO Arenas (id, nickname, city, team, state, country, Zip_Code, capacity, sponsor, Year_Opened)
VALUES ('6', "Captitol One Arena", "Washington, D.C.", "Wizards", null, "USA", '20004', '20356', "Geico", '1997');
INSERT INTO Arenas (id, nickname, city, team, state, country, Zip_Code, capacity, sponsor, Year_Opened)
VALUES ('7', "Oracle Arena", "Oakland", "Warriors", "California", "USA", '94621', '19596', "Rakuten", '1966');
INSERT INTO Arenas (id, nickname, city, team,  state, country, Zip_Code, capacity, sponsor, Year_Opened)
VALUES ('8', "STAPLES Center", "Los Angeles", "Lakedrs", "California", "USA", '90015', '19079', "Wish", '1999');
INSERT INTO Arenas (id, nickname, city, team, state,  country, Zip_Code, capacity, sponsor, Year_Opened)
VALUES ('8', "STAPLES Center", "Los Angeles", "Clippers", "California", "USA", '90015', '19079', "Bumble", '1999');
INSERT INTO Arenas (id, nickname, city, team, state, country, Zip_Code, capacity, sponsor, Year_Opened)
VALUES ('9', "FedexForum", "Memphis", "Grizzlies", "Tennessee", "USA", '38103', '18119', "FedEx", '2004');
INSERT INTO Arenas (id, nickname, city, team,  state, country, Zip_Code, capacity,sponsor, Year_Opened)
VALUES ('10', "Fiserv Forum", "Milwaukee", "Bucks", "Wisconsin", "USA", '53203', '17341', "Harley-Davidson", '2018');
INSERT INTO Arenas (id, nickname, city, team, state, country, Zip_Code, capacity, sponsor, Year_Opened)
VALUES ('11', "Talking Stick Resort Arena", "Phoenix", "Suns", "Arizona", "USA", '85004', '18422', "PayPal", '1992');
INSERT INTO Arenas (id, nickname, city, team, state, country, Zip_Code, capacity, sponsor, Year_Opened)
VALUES ('12', "American Airlines Arena", "Miami", "Heat", "Florida", "USA", '33132', '19600', "Ultimate Software", '1999');
INSERT INTO Arenas (id, nickname, city, team, state, country, Zip_Code, capacity, sponsor, Year_Opened)
VALUES ('13', "Gainbridge Fieldhouse", "Indianapolis", "Pacers","Indiana", "USA", '46204', '17923', "Motorola", '1999');
INSERT INTO Arenas (id, nickname, city, team, state, country, Zip_Code, capacity, sponsor, Year_Opened)
VALUES ('14', "Golden 1  Center", "Sacramento", "Kings", "California", "USA", '95814', '17608', "Blue Diamond Growers", '2016');
INSERT INTO Arenas (id, nickname, city, team,  state, country, Zip_Code, capacity,sponsor, Year_Opened)
VALUES ('15', "Little Caesars Arena", "Detroit","Pistons", "Michigan", "USA", '48201', '20332', "Flagstar Bank", '2017');
INSERT INTO Arenas (id, nickname, city, team, state, country, Zip_Code, capacity, sponsor, Year_Opened)
VALUES ('16', "Madison Square Garden", "New York City", "Knicks" , "New York", "USA", '10001', '20789', "Squarespace", '1968');
INSERT INTO Arenas (id, nickname, city, team, state, country, Zip_Code, capacity, sponsor, Year_Opened)
VALUES ('17', "Moda Center", "Portland", "Trail Blazers", "Oregon", "USA", '97227', '19980', "Biofreeze", '1995');
INSERT INTO Arenas (id, nickname, city, team, state, country, Zip_Code, capacity, sponsor, Year_Opened)
VALUES ('18', "Paycom Center", "Oklahoma City", "Thunder", "Oklahoma", "USA", '73102', '18203', "Love's Travel Stops & Country Stores", '2002');
INSERT INTO Arenas (id, nickname, city, team, state, country, Zip_Code, capacity, sponsor, Year_Opened)
VALUES ('19', "Rocket Mortgage FieldHouse", "Cleveland", "Cavaliers", "Ohio", "USA", '44115', '19432', "Goodyear Tire and Rubber Company", '1994');
INSERT INTO Arenas (id, nickname, city, team, state, country, Zip_Code, capacity, sponsor, Year_Opened)
VALUES ('20', "ScotiaBank Arena", "Toronto", "Raptors", "Ontario", "Canada", 'M5J 2X2', '19800', "Sun Life Financial", '1999');
INSERT INTO Arenas (id, nickname, city, team, state, country, Zip_Code, capacity, sponsor, Year_Opened)
VALUES ('21', "Smoothie King Center", "New Orleans", "Pelicans", "Louisiana", "USA", '70113', 16867, "Zatarain's", '1999');
INSERT INTO Arenas (id, nickname, city, team, state, country, Zip_Code, capacity, sponsor, Year_Opened)
VALUES ('23', "Spectrum Center", "Charlotte", "Hornets", "North Carolina", "USA", '28202', 19077, "LendingTree", '2005');
INSERT INTO Arenas (id, nickname, city, team, state, country, Zip_Code, capacity, sponsor, Year_Opened)
VALUES ('24', "State Farm Arena", "Atlanta", "Hawks", "Georgia", "USA", '30303', '16600', "Sharecare", '1999');
INSERT INTO Arenas (id, nickname, city, team, state, country, Zip_Code, capacity, sponsor, Year_Opened)
VALUES ('25', "Target Center", "Minneapolis", "Timberwolves", "Minnesota", "USA", '55403', '18798', "Fitbit", '1990');
INSERT INTO Arenas (id, nickname, city, team,  state, country, Zip_Code, capacity, sponsor, Year_Opened)
VALUES ('26', "TD Garden", "Boston", "Celtics", "Massachusetts", "USA", '02114', '19156', "General Electric", '1995');
INSERT INTO Arenas (id, nickname, city, team, state, country, Zip_Code, capacity, sponsor, Year_Opened)
VALUES ('27', "Toyota Center", "Houston", "Rockets","Texas", "USA", '77002', '18055', "ROKiT Phones", '2003');
INSERT INTO Arenas (id, nickname, city, team,  state, country, Zip_Code, capacity, sponsor, Year_Opened)
VALUES ('28', "United Center", "Chicago", "Bulls", "Illinois", "USA", '60612', '20917', "Zenni Optical", '1994');
INSERT INTO Arenas (id, nickname, city, team, state, country, Zip_Code, capacity, sponsor, Year_Opened)
VALUES ('29', "Vivint Arena", "Salt Lake City", "Utah", "USA", '84101', '18300',"Qualtrics", '1991');
INSERT INTO Arenas (id, nickname, city, state, country, Zip_Code, capacity, sponsor, Year_Opened)
VALUES ('30', "Wells Fargo Center", "Philadelphia", "Pennsylvania", "USA", '19148', '20478', "Stubhub", '1996');
SHOW TABLES; 
