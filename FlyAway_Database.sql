create database flyaway
use flyaway

create table flight( flight_id int primary key not null, name varchar(25), source varchar(25), destination varchar(25), days varchar(25), price int)

INSERT INTO `flight` (`flight_id`, `name`, `source`, `destination`, `days`, `price`) VALUES
(101, 'Indian AirIndialines', 'India', 'USA', 'MONDAY', '32000'),
(102, 'Indian AirIndialines', 'India', 'USA', 'TUESDAY', '32040'),
(103, 'Indian AirIndialines', 'India', 'USA', 'WEDNESDAY', '42500'),
(104, 'AirIndia', 'India', 'USA', 'THURSDAY', '23500'),
(105, 'AirIndia', 'India', 'USA', 'FRIDAY', '24400'),
(106, 'AirIndia', 'India', 'USA', 'SATURDAY', '44400'),
(107, 'Vistara', 'India', 'USA', 'SUNDAY', '28400'),
(108, 'Vistara', 'India', 'Canada', 'SUNDAY', '28400'),
(109, 'SpiceJet', 'India', 'Canada', 'MONDAY', '21400'),
(110, 'SpiceJet', 'India', 'Canada', 'TUESDAY', '21600'),
(111, 'SpiceJet', 'India', 'Canada', 'WEDNESDAY', '22600'),
(112, 'Alliance Air', 'India', 'Canada', 'THURSDAY', '22600'),
(113, 'Alliance Air', 'India', 'Canada', 'FRIDAY', '24400'),
(114, 'Alliance Air', 'India', 'Canada', 'SATURDAY', '34400'),
(115, 'USAirIndia', 'USA', 'India', 'MONDAY', '23426'),
(116, 'USAirIndia', 'USA', 'India', 'TUESDAY', '43426'),
(117, 'USAirIndia', 'USA', 'India', 'WEDNESDAY', '43426'),
(118, 'United Airlines', 'USA', 'India', 'THURSDAY', '43426'),
(119, 'United Airlines', 'USA', 'India', 'FRIDAY', '43000'),
(120, 'United Airlines', 'USA', 'India', 'SATURDAY', '23400'),
(121, 'TruJet', 'USA', 'India', 'SUNDAY', '22200'),
(122, 'TruJet', 'USA', 'Canada', 'SUNDAY', '21342'),
(123, 'United Airlines', 'USA', 'Canada', 'MONDAY', '21000'),
(124, 'Emirates', 'USA', 'Canada', 'TUESDAY', '25000'),
(125, 'Vistara', 'USA', 'Canada', 'WEDNESDAY', '65000'),
(126, 'Emirates', 'USA', 'Canada', 'THURSDAY', '65000'),
(127, 'SpiceJet', 'USA', 'Canada', 'FRIDAY', '45000'),
(128, 'Vistara', 'USA', 'Canada', 'FRIDAY', '45000'),
(129, 'Emirates', 'USA', 'Canada', 'SATURDAY', '45400'),
(130, 'British Airways', 'USA', 'Canada', 'SUNDAY', '22700'),
(131, 'British Airways', 'Canada', 'India', 'SUNDAY', '22700'),
(132, 'British Airways', 'Canada', 'India', 'MONDAY', '25700'),
(133, 'British Airways', 'Canada', 'India', 'TUESDAY', '35700'),
(134, 'Air Asia Airlines', 'Canada', 'India', 'WEDNESDAY', '35700'),
(135, 'Air Asia Airlines', 'Canada', 'India', 'THURSDAY', '65700'),
(136, 'Air Asia Airlines', 'Canada', 'India', 'FRIDAY', '52900'),
(137, 'Emirates', 'Canada', 'India', 'SATURDAY', '52440'),
(138, 'Emirates', 'Canada', 'USA', 'SUNDAY', '99440'),
(139, 'Emirates', 'Canada', 'USA', 'MONDAY', '49440'),
(140, 'Air Canada', 'Canada', 'USA', 'TUESDAY', '49440'),
(141, 'Air Canada', 'Canada', 'USA', 'WEDNESDAY', '23440'),
(142, 'Air Canada', 'Canada', 'USA', 'THURSDAY', '23440'),
(143, 'Air Canada', 'Canada', 'USA', 'FRIDAY', '22240'),
(144, 'Air Canada', 'Canada', 'USA', 'SATURDAY', '22120');

select * from flight

create table admin(id int primary key not null, user varchar(21), pass varchar(100))

insert into admin(id, user, pass) values(1, 'admin', '1234')

select * from admin

update admin set password='1234' where id=1
select * from flight where source='USA' and destination='Canada'
UPDATE flight SET days='FRIDAY' WHERE flight_id=127