 DROP TABLE IF EXISTS HOTEL_DETAIL;

CREATE TABLE IF NOT EXISTS HOTEL_DETAIL (
  id INTEger PRIMARY KEY AUTOINCREMENT,
  name varchar(50) NOT NULL,
  location varchar(100) NOT NULL,
  rating INTeger,
  manager VArchar(20) NOT NULL
);

INSERT INTO HOTEL_DETAIL
    (name, location,rating, manager) 
VALUES
    ('radhica-regency','orissa-rourkela',5,'john lamping');


DROP TABLE IF EXISTS ROOMS;

CREATE TABLE IF NOT EXISTS ROOMS (
  id INTEger PRIMARY KEY AUTOINCREMENT,
  name varchar(50) NOT NULL,
  room_type varchar(100) NOT NULL,
  ac Bool not NULL,
  price INTeger NOT NULL,
  bed_type Varchar(20) NOT NULL,
  bed_count INteger NOT NULL,
  adult_allowed INTeger NOT NULL,
  children_allowed INTeger NOT NULL,
  state bool NOT NULL
);



INSERT INTO ROOMS
	(name,room_type,ac,price,bed_type,bed_count,adult_allowed,children_allowed,state)  
VALUES 	
	("holiday suit","single",1,2000,"KING",1,1,0,1),
  ("holiday suit","single",0,1500,"KING",1,1,0,1);