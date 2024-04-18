DROP TABLE stock;
DROP TABLE nation;
CREATE TABLE stock (
	stkcode CHAR(3),
	stkfirm VARCHAR(20) NOT NULL,
	stkprice DECIMAL(6,2),
	stkqty DECIMAL(8),
	stkdiv DECIMAL(5,2),
	stkpe DECIMAL(2),
	PRIMARY KEY (stkcode));

INSERT INTO stock VALUES ('FC', 'Freedonia Copper', 27.5,10529,1.84,16);
INSERT INTO stock VALUES ('PT', 'Patagonian Tea',55.25,12635,2.5,10);
INSERT INTO stock VALUES ('AR','Ayssinian Ruby',31.82,22010,1.32,13);
INSERT INTO stock VALUES ('SLG','Sri Lankan Gold',50.37,32868,2.68,16);
INSERT INTO stock VALUES ('ILZ','Indian Lead & Zinc',37.75,6390,3,12);
INSERT INTO stock VALUES ('BE','Burmese Elephant',0.07,154713,0.01,3);
INSERT INTO stock VALUES ('BS','Bolivian Sheep',12.75,231678,1.78,11);
INSERT INTO stock VALUES ('NG','Nigerian Geese',35,12323,1.68,10);
INSERT INTO stock VALUES ('CS','Canadian Sugar',52.78,4716,2.5,15);
INSERT INTO stock VALUES ('ROF','Royal Ostrich Farms',33.75,1234923,3,6);
INSERT INTO stock VALUES ('MG','Minnesota Gold',53.87,816122,1,25);
INSERT INTO stock VALUES ('GP','Georgia Peach',2.35,387333,0.2,5);
INSERT INTO stock VALUES ('NE','Narembeen Emu',12.34,45619,1,8);
INSERT INTO stock VALUES ('QD','Queensland Diamond',6.73,89251,0.5,20);
INSERT INTO stock VALUES ('IR','Indooroopilly Ruby',15.92,56147,0.5,20);
INSERT INTO stock VALUES ('MD','Mumbai Duck',25.55,167382,1,12);

CREATE TABLE nation (
	natcode CHAR(3),
	natname VARCHAR(30),
	exchrate DECIMAL(5,5),
	PRIMARY KEY (natcode));
	
-- ALTER TABLE COMMAND TO ADD THE FK
--
--  ????

-- Need to delete the rows so we can add the FK and it's data

DELETE FROM stock;

INSERT INTO stock VALUES ('FC', 'Freedonia Copper', 27.5,10529,1.84,16, 'UK');
INSERT INTO stock VALUES ('PT', 'Patagonian Tea',55.25,12635,2.5,10,'UK');
INSERT INTO stock VALUES ('AR','Ayssinian Ruby',31.82,22010,1.32,13,'UK');
INSERT INTO stock VALUES ('SLG','Sri Lankan Gold',50.37,32868,2.68,16,'UK');
INSERT INTO stock VALUES ('ILZ','Indian Lead & Zinc',37.75,6390,3,12,'UK');
INSERT INTO stock VALUES ('BE','Burmese Elephant',0.07,154713,0.01,3,'UK');
INSERT INTO stock VALUES ('BS','Bolivian Sheep',12.75,231678,1.78,11,'UK');
INSERT INTO stock VALUES ('NG','Nigerian Geese',35,12323,1.68,10,'UK');
INSERT INTO stock VALUES ('CS','Canadian Sugar',52.78,4716,2.5,15,'UK');
INSERT INTO stock VALUES ('ROF','Royal Ostrich Farms',33.75,1234923,3,6,'UK');
INSERT INTO stock VALUES ('MG','Minnesota Gold',53.87,816122,1,25,'USA');
INSERT INTO stock VALUES ('GP','Georgia Peach',2.35,387333,0.2,5,'USA');
INSERT INTO stock VALUES ('NE','Narembeen Emu',12.34,45619,1,8,'AUS');
INSERT INTO stock VALUES ('QD','Queensland Diamond',6.73,89251,0.5,20,'AUS');
INSERT INTO stock VALUES ('IR','Indooroopilly Ruby',15.92,56147,0.5,20,'AUS');
INSERT INTO stock VALUES ('MD','Mumbai Duck',25.55,167382,1,12,'IND');
