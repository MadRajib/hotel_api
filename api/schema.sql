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