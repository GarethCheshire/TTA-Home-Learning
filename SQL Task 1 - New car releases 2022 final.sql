show databases;
use new_cars_2022;
create table new_car_releases(
car_id INT AUTO_INCREMENT,
make VARCHAR (20) NOT NULL, 
model VARCHAR (30) NOT NULL, 
category ENUM ('city car', 'supermini', 'small family', 'large family', 'small premium', 'large premium', 'small SUV', 'medium SUV', 'large SUV', 'sports', 'luxury', 'luxury sports') NOT NULL,
body_type ENUM ('hatchback', 'saloon', 'estate', 'coupe', 'MPV', 'SUV', 'off-roader', 'SUV coupe', '4-door coupe', 'convertible', 'crossover', 'pick-up', 'supercar') NOT NULL,
fuel_type SET ('petrol', 'diesel', 'electric', 'hybrid') NOT NULL,
estimated_month_of_release_MMM char (3), 
PRIMARY KEY (car_id)
);
explain new_car_releases;

alter table new_car_releases
add column estimated_starting_price INT;
explain new_car_releases;

alter table new_car_releases
drop column estimated_starting_price;
alter table new_car_releases
add column estimated_starting_price_£ INT;
explain new_car_releases;

alter table new_car_releases
modify column category ENUM ('city car', 'supermini', 'small family', 'large family', 'small executive', 'large executive', 'small SUV', 'medium SUV', 'large SUV', 'sports') NOT NULL;

alter table new_car_releases
modify column car_id INT AUTO_INCREMENT NOT NULL;

alter table new_car_releases
add column budget ENUM ('budget', 'mainstream', 'premium', 'luxury') NOT NULL;
explain new_car_releases;

alter table new_car_releases
modify budget ENUM ('budget', 'mainstream', 'premium', 'luxury')
after model;
explain new_car_releases;

alter table new_car_releases
modify model VARCHAR (30) NOT NULL unique;
explain new_car_releases;

INSERT INTO new_car_releases (make, model, budget, category, body_type, fuel_type, estimated_month_of_release_MMM, estimated_starting_price_£)
VALUES ('Alfa Romeo', 'Tonale', 'premium', 'medium SUV', 'SUV', 'petrol,diesel,electric,hybrid', 'FEB', '30000'),
('Aston Martin', 'DBX Coupe', 'luxury', 'large SUV', 'SUV coupe', 'petrol,hybrid', 'DEC', '170000'),
('Audi', 'Q6 e-tron', 'premium', 'large SUV', 'SUV', 'electric', 'SEP', '60000'),
('BMW', '7 Series', 'luxury', 'large executive', 'saloon', 'electric,hybrid', 'DEC', '75000');
SELECT * FROM new_car_releases;

INSERT INTO new_car_releases (make, model, budget, category, body_type, fuel_type, estimated_starting_price_£)
VALUES ('BMW', 'iX1', 'premium', 'small SUV', 'crossover', 'electric', '45000'),
('BMW', 'M2', 'premium', 'sports', 'coupe', 'petrol', '60000');
SELECT * FROM new_car_releases;

INSERT INTO new_car_releases (make, model, budget, category, body_type, fuel_type, estimated_month_of_release_MMM, estimated_starting_price_£)
VALUES ('BMW', 'M3 Touring', 'premium', 'sports', 'estate', 'petrol', 'NOV', '77000'),
('Citroen', 'Ami', 'budget', 'city car', 'hatchback', 'electric', 'JAN', '6000');
SELECT * FROM new_car_releases;

INSERT INTO new_car_releases (make, model, budget, category, body_type, fuel_type, estimated_starting_price_£)
VALUES ('Citroen', 'C5X', 'mainstream', 'large family', 'crossover', 'petrol,diesel,hybrid', '27000');

INSERT INTO new_car_releases (make, model, budget, category, body_type, fuel_type, estimated_month_of_release_MMM, estimated_starting_price_£)
VALUES ('Cupra', 'Born', 'premium', 'small family', 'hatchback', 'electric', 'FEB', '32000'),
('Dacia', 'Bigster', 'budget', 'large SUV', 'SUV', 'petrol,diesel,hybrid', 'NOV', '20000'),
('Dacia', 'Jogger', 'budget', 'large family', 'MPV', 'petrol,diesel,hybrid', 'MAR', '15000');

INSERT INTO new_car_releases (make, model, budget, category, body_type, fuel_type, estimated_starting_price_£)
VALUES ('Ferrari', '296 GTB', 'luxury', 'sports', 'supercar', 'hybrid', '230000'),
('Ferrari', 'Purosangue', 'luxury', 'large SUV', 'SUV', 'petrol,hybrid', '200000');

INSERT INTO new_car_releases (make, model, budget, category, body_type, fuel_type, estimated_month_of_release_MMM, estimated_starting_price_£)
VALUES ('Fiat', 'Panda', 'budget', 'city car', 'hatchback', 'petrol,electric,hybrid', 'DEC', '11000'),
('Honda', 'Civic', 'mainstream', 'small family', 'hatchback', 'hybrid', 'OCT', '20000');

INSERT INTO new_car_releases (make, model, budget, category, body_type, fuel_type)
VALUES ('Hyundai', 'Ioniq 6', 'premium', 'small executive', 'saloon', 'electric');

INSERT INTO new_car_releases (make, model, budget, category, body_type, fuel_type, estimated_month_of_release_MMM, estimated_starting_price_£)
VALUES ('Ineos', 'Grenadier', 'premium', 'large SUV', 'off-roader', 'petrol,diesel', 'DEC', '48000'),
('Kia', 'Sportage', 'mainstream', 'medium SUV', 'SUV', 'petrol,diesel,hybrid', 'FEB', '25000');

INSERT INTO new_car_releases (make, model, budget, category, body_type, fuel_type, estimated_starting_price_£)
VALUES ('Lamborghini', 'Countach', 'luxury', 'sports', 'supercar', 'hybrid', '1900000');

INSERT INTO new_car_releases (make, model, budget, category, body_type, fuel_type, estimated_month_of_release_MMM, estimated_starting_price_£)
VALUES ('Land Rover', 'Defender 130 Pick-up', 'premium', 'large SUV', 'off-roader', 'petrol,diesel,hybrid', 'SEP', '32000'),
('Land Rover', 'Range Rover', 'luxury', 'large SUV', 'off-roader', 'petrol,diesel,electric,hybrid', 'JAN', '80000'),
('Land Rover', 'Range Rover Sport', 'luxury', 'large SUV', 'off-roader', 'petrol,diesel,electric,hybrid', 'MAY', '65000'),
('Lotus', 'Emira', 'premium', 'sports', 'coupe', 'petrol', 'MAR', '60000'),
('Maserati', 'Gran Turismo', 'luxury', 'sports', 'coupe', 'electric', 'NOV', '100000'),
('Maserati', 'Grecale', 'premium', 'medium SUV', 'SUV', 'petrol,electric', 'APR', '40000'),
('Mercedes', 'EQE', 'premium', 'large executive', 'saloon', 'electric', 'MAY', '60000'),
('Mercedes', 'EQE SUV', 'premium', 'large SUV', 'SUV', 'electric', 'JUN', '65000');

INSERT INTO new_car_releases (make, model, budget, category, body_type, fuel_type, estimated_month_of_release_MMM)
VALUES ('Mercedes', 'EQS SUV', 'luxury', 'large SUV', 'SUV', 'electric', 'DEC');
SELECT * FROM new_car_releases;

INSERT INTO new_car_releases (make, model, budget, category, body_type, fuel_type)
VALUES ('MG', 'E-Motion', 'mainstream', 'sports', 'coupe', 'electric');

INSERT INTO new_car_releases (make, model, budget, category, body_type, fuel_type, estimated_month_of_release_MMM, estimated_starting_price_£)
VALUES ('Nissan', 'X-Trail', 'mainstream', 'large SUV', 'SUV', 'petrol,hybrid', 'JUL', '27000');

INSERT INTO new_car_releases (make, model, budget, category, body_type, fuel_type, estimated_starting_price_£)
VALUES ('Polestar', '3', 'premium', 'medium SUV', 'SUV', 'electric', '65000');

INSERT INTO new_car_releases (make, model, budget, category, body_type, fuel_type, estimated_month_of_release_MMM, estimated_starting_price_£)
VALUES ('Porsche', '911 GT3 RS', 'luxury', 'sports', 'coupe', 'petrol', 'AUG', '150000');

INSERT INTO new_car_releases (make, model, budget, category, body_type, fuel_type, estimated_month_of_release_MMM)
VALUES ('Renault', 'Austral', 'mainstream', 'medium SUV', 'SUV', 'petrol,diesel,hybrid', 'DEC');

INSERT INTO new_car_releases (make, model, budget, category, body_type, fuel_type, estimated_month_of_release_MMM, estimated_starting_price_£)
VALUES ('Renault', 'Megane E-Tech Electric', 'mainstream', 'small family', 'hatchback', 'electric', 'OCT', '35000'),
('Skoda', 'Fabia', 'mainstream', 'supermini', 'hatchback', 'petrol', 'JAN', '15000');

INSERT INTO new_car_releases (make, model, budget, category, body_type, fuel_type)
VALUES ('Ssangyong', 'J100', 'budget', 'medium SUV', 'SUV', 'electric');

INSERT INTO new_car_releases (make, model, budget, category, body_type, fuel_type, estimated_month_of_release_MMM, estimated_starting_price_£)
VALUES ('Subaru', 'Solterra', 'mainstream', 'medium SUV', 'crossover', 'electric', 'DEC', '30000'),
('Toyota', 'Aygo', 'budget', 'city car', 'hatchback', 'petrol', 'JAN', '13500'),
('Toyota', 'bZ4X', 'mainstream', 'medium SUV', 'crossover', 'electric', 'DEC', '30000'),
('Toyota', 'GR86', 'mainstream', 'sports', 'coupe', 'petrol', 'OCT', '30000'),
('Vauxhall', 'Insignia', 'mainstream', 'large family', 'crossover', 'petrol,diesel,hybrid', 'DEC', '28000'),
('Volkswagen', 'iD5', 'mainstream', 'medium SUV', 'SUV coupe', 'electric', 'DEC', '40000');

SELECT * FROM new_car_releases;
