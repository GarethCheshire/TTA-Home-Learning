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
modify budget ENUM ('budget', 'mainstream', 'premium', 'luxury') NOT NULL
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

CREATE TABLE Telford_Motor_Show(
car_id INT AUTO_INCREMENT,
make VARCHAR (20) NOT NULL,
model VARCHAR (30) NOT NULL, 
concept_or_production ENUM ('concept', 'production') NOT NULL,
stand SET ('A1', 'A2', 'A3', 'A4', 'A5', 'A6', 'A7', 'A8', 'B1', 'B2', 'B3', 'B4', 'B5', 'B6', 'B7', 'B8', 'C1', 'C2', 'C3', 'C4', 'C5', 'P1', 'P2', 'P3', 'S1', 'S2', 'S3', 'S4', 'S5', 'S6', 'S7', 'S8', 'S9', 'S10', 'T1', 'T2', 'T3', 'T4', 'T5', 'T6', 'T7', 'T8') NOT NULL,
location SET ('Hall A', 'Hall B', 'Hall C', 'Southwater', 'Parkside', 'Telford Plaza') NOT NULL,
available_for_test_drive ENUM ('yes', 'no'),
type_of_test_drive ENUM ('off-road experience', 'road test', 'high speed passenger ride'),
primary key (car_id)
);
explain Telford_Motor_Show;

alter table Telford_Motor_Show
add column fuel_type SET ('electric', 'hybrid', 'mild hybrid', 'plug-in hybrid') NOT NULL;
explain Telford_Motor_Show;

alter table Telford_Motor_Show
add column test_drive_stand SET ('P1', 'P2', 'P3', 'S14', 'T1', 'T2', 'T3', 'T4', 'T5', 'T6', 'T7', 'T8', 'T9', 'T10', 'T11');
explain Telford_Motor_Show;

alter table Telford_Motor_Show
modify stand ENUM ('A1', 'A2', 'A3', 'A4', 'A5', 'A6', 'A7', 'A8', 'A9', 'A10', 'B1', 'B2', 'B3', 'B4', 'B5', 'B6', 'B7', 'B8', 'B9', 'B10', 'C1', 'C2', 'C3', 'C4', 'C5', 'C6', 'P4', 'P5', 'P6', 'P7', 'P8', 'P9', 'P10', 'S1', 'S2', 'S3', 'S4', 'S5', 'S6', 'S7', 'S8', 'S9', 'S10', 'S11', 'S12', 'S13') NOT NULL,
modify type_of_test_drive SET ('off-road experience', 'road test', 'high speed passenger ride'),
modify available_for_test_drive ENUM ('yes', 'no') NOT NULL;
explain Telford_Motor_Show;

alter table Telford_Motor_Show
modify fuel_type SET ('electric', 'hybrid', 'mild hybrid', 'plug-in hybrid') NOT NULL
after concept_or_production;
explain Telford_Motor_Show;

alter table Telford_Motor_Show
rename column location to locations,
rename column stand to show_stand;
explain Telford_Motor_Show;

alter table Telford_Motor_Show
modify locations SET ('Hall A', 'Hall B', 'Hall C', 'Southwater', 'Parkside', 'Telford Plaza') NOT NULL after fuel_type;
explain Telford_Motor_Show;

alter table Telford_Motor_Show
modify model VARCHAR (30) NOT NULL unique;
explain Telford_Motor_Show;

INSERT INTO Telford_Motor_Show (make, model, concept_or_production, fuel_type, locations, show_stand, available_for_test_drive, type_of_test_drive, test_drive_stand)
VALUES ('Alfa Romeo', 'Tonale', 'production', 'mild hybrid,plug-in hybrid', 'Hall B', 'B2', 'no', '', ''),
('Alfa Romeo', 'Palade', 'concept', 'electric', 'Hall B', 'B2', 'no', '', ''),
('Alpine', '5 E-Sport', 'concept', 'electric', 'Hall B', 'B5', 'no', '', ''),
('Alpine', 'A130', 'concept', 'electric', 'Hall B', 'B5', 'no', '', ''),
('Alpine', 'Megane E-Sport', 'concept', 'electric', 'Hall B', 'B5', 'no', '', ''),
('Aston Martin', 'DBX Coupe', 'production', 'plug-in hybrid', 'Hall C', 'C3', 'no', '', ''),
('Aston Martin', 'Valhalla', 'concept', 'plug-in hybrid', 'Hall C', 'C3', 'no', '', ''),
('Audi', 'A3', 'production', 'plug-in hybrid', 'Hall A,Telford Plaza', 'A1', 'yes', 'road test', 'T2'),
('Audi', 'A6', 'production', 'plug-in hybrid', 'Hall A,Telford Plaza', 'A1', 'yes', 'road test', 'T2'),
('Audi', 'A7', 'production', 'plug-in hybrid', 'Hall A,Telford Plaza', 'A1', 'yes', 'road test', 'T2'),
('Audi', 'e-tron', 'production', 'electric', 'Hall A,Telford Plaza', 'A1', 'yes', 'road test', 'T2'),
('Audi', 'e-tron GT', 'production', 'electric', 'Hall A,Parkside', 'A1', 'yes', 'road test', 'T2'),
('Audi', 'Grandsphere', 'concept', 'electric', 'Hall A', 'A1', 'no', '', ''),
('Audi', 'Q4 e-tron', 'production', 'electric', 'Hall A,Telford Plaza', 'A1', 'yes', 'road test', 'T2'),
('Audi', 'Q5', 'production', 'plug-in hybrid', 'Hall A,Telford Plaza', 'A1', 'yes', 'road test', 'T2'),
('Audi', 'Q8', 'production', 'plug-in hybrid', 'Hall A,Telford Plaza', 'A1', 'yes', 'road test', 'T2'),
('Audi', 'RS e-tron GT', 'production', 'electric', 'Hall A,Parkside', 'A1', 'yes', 'road test,high speed passenger ride', 'T2,P3'),
('Bentley', 'Bentayga Hybrid', 'production', 'plug-in hybrid', 'Hall C', 'C2', 'no', '', ''),
('Bentley', 'Flying Spur Hybrid', 'production', 'plug-in hybrid', 'Hall C', 'C2', 'no', '', ''),
('BMW', '3 Series', 'production', 'plug-in hybrid', 'Hall B,Telford Plaza', 'B3', 'yes', 'road test', 'T3'),
('BMW', '5 Series', 'production', 'plug-in hybrid', 'Hall B,Telford Plaza', 'B3', 'yes', 'road test', 'T3'),
('BMW', '7 Series', 'production', 'plug-in hybrid', 'Hall B', 'B3', 'no', '', ''),
('BMW', 'iX3', 'production', 'electric', 'Hall B,Telford Plaza', 'B3', 'yes', 'road test', 'T3'),
('BMW', 'iX1', 'production', 'electric', 'Hall B,Telford Plaza', 'B3', 'yes', 'road test', 'T3'),
('BMW', 'iX', 'production', 'electric', 'Hall B,Telford Plaza', 'B3', 'yes', 'road test', 'T3'),
('BMW', 'i4', 'production', 'electric', 'Hall B', 'B3', 'no', '', ''),
('BMW', 'i4M', 'production', 'electric', 'Hall B,Telford Plaza', 'B3', 'yes', 'road test', 'T3');
SELECT * FROM Telford_Motor_Show;

INSERT INTO Telford_Motor_Show (make, model, concept_or_production, fuel_type, locations, show_stand, available_for_test_drive, type_of_test_drive, test_drive_stand)
VALUES ('Citroen', 'Ami', 'production', 'electric', 'Southwater,Telford Plaza', 'S8', 'yes', 'road test', 'T9'),
('Citroen', 'C5 Aircross', 'production', 'plug-in hybrid', 'Southwater', 'S8', 'no', '', ''),
('Citroen', 'C5 X', 'production', 'plug-in hybrid', 'Southwater', 'S8', 'yes', 'road test', 'T9'),
('Citroen', 'E-Berlingo Electric', 'production', 'electric', 'Southwater', 'S8', 'no', '', ''),
('Citroen', 'E-C4', 'production', 'electric', 'Southwater', 'S8', 'yes', 'road test', 'T9'),
('Citroen', 'E-Spacetourer Electric', 'production', 'electric', 'Southwater', 'S8', 'no', '', ''),
('Cupra', 'Born', 'production', 'electric', 'Southwater,Telford Plaza', 'S10', 'yes', 'road test', 'T2'),
('Cupra', 'Formentor', 'production', 'plug-in hybrid', 'Southwater,Telford Plaza', 'S10', 'no', 'road test', 'T2'),
('Cupra', 'Leon', 'production', 'plug-in hybrid', 'Southwater', 'S10', 'yes', 'road test', 'T2'),
('Cupra', 'Leon SW', 'production', 'plug-in hybrid', 'Southwater', 'S10', 'yes', 'road test', 'T2'),
('Cupra', 'Tavascan', 'concept', 'electric', 'Southwater', 'S10', 'no', '', ''),
('Cupra', 'Urban Rebel', 'concept', 'electric', 'Southwater', 'S10', 'no', '', ''),
('Dacia', 'Bigster', 'production', 'hybrid', 'Parkside,Telford Plaza', 'P8', 'yes', 'road test', 'T1'),
('Dacia', 'Jogger', 'production', 'hybrid', 'Parkside,Telford Plaza', 'P8', 'yes', 'road test', 'T1'),
('DS Automobiles', 'DS3 Crossback E-Tense', 'production', 'electric', 'Southwater,Telford Plaza', 'S11', 'yes', 'road test', 'T9'),
('DS Automobiles', 'DS4 E-Tense', 'production', 'plug-in hybrid', 'Southwater,Telford Plaza', 'S11', 'yes', 'road test', 'T9'),
('DS Automobiles', 'DS7 E-Tense', 'production', 'plug-in hybrid', 'Southwater,Telford Plaza', 'S11', 'yes', 'road test', 'T9'),
('DS Automobiles', 'DS9 E-Tense', 'production', 'plug-in hybrid', 'Southwater,Telford Plaza', 'S11', 'yes', 'road test', 'T9'),
('Fiat', '500e', 'production', 'electric', 'Southwater,Telford Plaza', 'S2', 'yes', 'road test', 'T10'),
('Fiat', 'Panda', 'production', 'electric,hybrid,plug-in hybrid', 'Southwater,Telford Plaza', 'S2', 'yes', 'road test', 'T10'),
('Ford', 'Fiesta', 'production', 'mild hybrid', 'Hall A', 'A8', 'no', '', ''),
('Ford', 'Focus', 'production', 'mild hybrid', 'Hall A', 'A8', 'no', '', ''),
('Ford', 'Kuga', 'production', 'hybrid,mild hybrid,plug-in hybrid', 'Hall A,Telford Plaza', 'A8', 'yes', 'road test', 'T8'),
('Ford', 'Mustang Mach-E', 'production', 'electric', 'Hall A,Telford Plaza', 'A8', 'yes', 'road test', 'T8'),
('Ford', 'Puma', 'production', 'mild hybrid', 'Hall A', 'A8', 'no', '', '');
SELECT * FROM Telford_Motor_Show;

INSERT INTO Telford_Motor_Show (make, model, concept_or_production, fuel_type, locations, show_stand, available_for_test_drive, type_of_test_drive, test_drive_stand)
VALUES ('Genesis', 'G80', 'production', 'electric', 'Parkside,Telford Plaza', 'P9', 'yes', 'road test', 'T11'),
('Genesis', 'GV60', 'production', 'electric', 'Parkside,Telford Plaza', 'P9', 'yes', 'road test', 'T11'),
('Genesis', 'GV70', 'production', 'electric', 'Parkside,Telford Plaza', 'P9', 'yes', 'road test', 'T11'),
('Honda', 'Civic', 'production', 'hybrid,plug-in hybrid', 'Hall A', 'A7', 'no', '', ''),
('Honda', 'CR-V', 'production', 'hybrid', 'Hall A', 'A7', 'no', '', ''),
('Honda', 'E', 'production', 'electric', 'Hall A', 'A7', 'no', '', ''),
('Honda', 'HR-V', 'production', 'hybrid', 'Hall A', 'A7', 'no', '', ''),
('Honda', 'Jazz', 'production', 'hybrid', 'Hall A', 'A7', 'no', '', ''),
('Hyundai', 'Bayon', 'production', 'mild hybrid', 'Hall A', 'A9', 'no', '', ''),
('Hyundai', 'i20', 'production', 'mild hybrid', 'Hall A', 'A9', 'no', '', ''),
('Hyundai', 'Ioniq 5', 'production', 'electric', 'Hall A', 'A9', 'yes', 'road test', 'T11'),
('Hyundai', 'Ioniq 6', 'production', 'electric', 'Hall A', 'A9', 'yes', 'road test', 'T11'),
('Hyundai', 'Kona', 'production', 'electric,hybrid', 'Hall A', 'A9', 'no', '', ''),
('Hyundai', 'Santa Fe', 'production', 'hybrid', 'Hall A', 'A9', 'no', '', ''),
('Hyundai', 'Tucson', 'production', 'hybrid,plug-in hybrid', 'Hall A', 'A9', 'yes', 'road test', 'T11');
SELECT * FROM Telford_Motor_Show;

alter table Telford_Motor_Show
modify show_stand ENUM ('A1', 'A2', 'A3', 'A4', 'A5', 'A6', 'A7', 'A8', 'A9', 'A10', 'B1', 'B2', 'B3', 'B4', 'B5', 'B6', 'B7', 'B8', 'B9', 'B10', 'C1', 'C2', 'C3', 'C4', 'C5', 'C6', 'P4', 'P5', 'P6', 'P7', 'P8', 'P9', 'P10', 'P11', 'S1', 'S2', 'S3', 'S4', 'S5', 'S6', 'S7', 'S8', 'S9', 'S10', 'S11', 'S12', 'S13') NOT NULL;
explain Telford_Motor_Show;

INSERT INTO Telford_Motor_Show (make, model, concept_or_production, fuel_type, locations, show_stand, available_for_test_drive, type_of_test_drive, test_drive_stand)
VALUES ('Jaguar', 'E-Pace', 'production', 'plug-in hybrid', 'Parkside,Telford Plaza', 'P10', 'yes', 'road test', 'T8'),
('Jaguar', 'I-Pace', 'production', 'electric', 'Parkside,Telford Plaza', 'P10', 'yes', 'road test', 'T8'),
('Jaguar', 'F-Pace', 'production', 'plug-in hybrid', 'Parkside,Telford Plaza', 'P10', 'yes', 'road test', 'T8'),
('Jeep', 'Compass 4xe', 'production', 'plug-in hybrid', 'Southwater', 'S12', 'yes', 'off-road experience', 'S14'),
('Jeep', 'Grand Cherokee 4xe', 'production', 'plug-in hybrid', 'Southwater', 'S12', 'yes', 'off-road experience', 'S14'),
('Jeep', 'Renegade 4xe', 'production', 'plug-in hybrid', 'Southwater', 'S12', 'yes', 'off-road experience', 'S14'),
('Kia', 'Concept EV9', 'concept', 'electric', 'Hall B', 'B9', 'no', '', ''),
('Kia', 'e-Niro', 'production', 'electric', 'Hall B,Telford Plaza', 'B9', 'yes', 'road test', 'T11'),
('Kia', 'EV6', 'production', 'electric', 'Hall B,Telford Plaza', 'B9', 'yes', 'road test', 'T11'),
('Kia', 'Niro', 'production', 'hybrid,plug-in hybrid', 'Hall B', 'B9', 'no', '', ''),
('Kia', 'Sorento', 'production', 'plug-in hybrid', 'Hall B,Telford Plaza', 'B9', 'yes', 'road test', 'T11'),
('Kia', 'Sportage', 'production', 'mild hybrid', 'Hall B', 'B9', 'no', '', '');
SELECT * FROM Telford_Motor_Show;

INSERT INTO Telford_Motor_Show (make, model, concept_or_production, fuel_type, locations, show_stand, available_for_test_drive, type_of_test_drive, test_drive_stand)
VALUES ('Land Rover', 'Defender', 'production', 'plug-in hybrid', 'Southwater', 'S13', 'yes', 'off-road experience', 'S14'),
('Land Rover', 'Defender 130 Pick-up', 'production', 'plug-in hybrid', 'Southwater', 'S13', 'yes', 'off-road experience', 'S14'),
('Land Rover', 'Discovery Sport', 'production', 'plug-in hybrid', 'Southwater', 'S13', 'yes', 'off-road experience', 'S14'),
('Land Rover', 'Range Rover', 'production', 'electric,plug-in hybrid', 'Southwater', 'S13', 'yes', 'off-road experience', 'S14'),
('Land Rover', 'Range Rover Evoque', 'production', 'plug-in hybrid', 'Southwater', 'S13', 'yes', 'off-road experience', 'S14'),
('Land Rover', 'Range Rover Sport', 'production', 'electric,plug-in hybrid', 'Southwater', 'S13', 'yes', 'off-road experience', 'S14'),
('Land Rover', 'Range Rover Velar', 'production', 'plug-in hybrid', 'Southwater', 'S13', 'yes', 'off-road experience', 'S14'),
('Lexus', 'ES', 'production', 'hybrid', 'Parkside', 'P4', 'no', '', ''),
('Lexus', 'LS', 'production', 'hybrid', 'Parkside', 'P4', 'no', '', ''),
('Lexus', 'NX', 'production', 'hybrid,plug-in hybrid', 'Parkside', 'P4', 'no', '', ''),
('Lexus', 'RX', 'production', 'hybrid', 'Parkside', 'P4', 'no', '', ''),
('Lexus', 'UX', 'production', 'electric,hybrid', 'Parkside', 'P4', 'no', '', ''),
('Lotus', 'Evija', 'production', 'electric', 'Hall C', 'C6', 'no', '', ''),
('Lotus', 'Type 132 SUV', 'concept', 'electric', 'Hall C', 'C6', 'no', '', ''),
('Lynk & Co', '01', 'production', 'hybrid,plug-in hybrid', 'Parkside', 'P5', 'no', '', ''),
('Lynk & Co', '02', 'production', 'hybrid', 'Parkside', 'P5', 'no', '', ''),
('Maserati', 'Gran Turismo', 'production', 'electric', 'Hall C', 'C1', 'no', '', ''),
('Maserati', 'Grecale', 'production', 'electric', 'Hall C', 'C1', 'no', '', ''),
('Mazda', 'MX-30', 'production', 'electric', 'Parkside', 'P6', 'no', '', ''),
('McLaren', 'Artura', 'production', 'hybrid', 'Hall C', 'C5', 'no', '', '');
SELECT * FROM Telford_Motor_Show;

INSERT INTO Telford_Motor_Show (make, model, concept_or_production, fuel_type, locations, show_stand, available_for_test_drive, type_of_test_drive, test_drive_stand)
VALUES ('Mercedes-Benz', 'EQA', 'production', 'electric', 'Southwater,Telford Plaza', 'S6', 'yes', 'road test', 'T4'),
('Mercedes-Benz', 'EQB', 'production', 'electric', 'Southwater,Telford Plaza', 'S6', 'yes', 'road test', 'T4'),
('Mercedes-Benz', 'EQC', 'production', 'electric', 'Southwater,Telford Plaza', 'S6', 'yes', 'road test', 'T4'),
('Mercedes-Benz', 'EQE', 'production', 'electric', 'Southwater,Telford Plaza', 'S6', 'yes', 'road test', 'T4'),
('Mercedes-Benz', 'EQE SUV', 'production', 'electric', 'Southwater,Telford Plaza', 'S6', 'yes', 'road test', 'T4'),
('Mercedes-Benz', 'EQS', 'production', 'electric', 'Southwater', 'S6', 'no', '', ''),
('Mercedes-Benz', 'EQS SUV', 'production', 'electric', 'Southwater', 'S6', 'no', '', ''),
('Mercedes-Benz', 'EQT', 'concept', 'electric', 'Southwater', 'S6', 'no', '', ''),
('Mercedes-Benz', 'EQV', 'production', 'electric', 'Southwater', 'S6', 'no', '', ''),
('Mercedes-Benz', 'Vision EQXX', 'concept', 'electric', 'Southwater', 'S6', 'no', '', ''),
('MG', '5 EV', 'production', 'electric', 'Parkside,Telford Plaza', 'P11', 'yes', 'road test', 'T5'),
('MG', 'E-Motion', 'production', 'electric', 'Parkside', 'P11', 'no', '', ''),
('MG', 'HS', 'production', 'electric', 'Parkside', 'P11', 'no', '', ''),
('MG', 'ZS EV', 'production', 'electric', 'Parkside,Telford Plaza', 'P11', 'yes', 'road test', 'T5'),
('Mini', 'Electric', 'production', 'electric', 'Parkside,Telford Plaza', 'P7', 'yes', 'road test', 'T3'),
('Mini', 'Countryman', 'production', 'plug-in hybrid', 'Parkside,Telford Plaza', 'P7', 'yes', 'road test', 'T3'),
('Nio', 'eC6', 'production', 'electric', 'Southwater', 'S9', 'no', '', ''),
('Nio', 'eS6', 'production', 'electric', 'Southwater', 'S9', 'no', '', ''),
('Nio', 'eS8', 'production', 'electric', 'Southwater', 'S9', 'no', '', ''),
('Nio', 'eT5', 'production', 'electric', 'Southwater', 'S9', 'no', '', ''),
('Nio', 'eT7', 'production', 'electric', 'Southwater', 'S9', 'no', '', ''),
('Nissan', 'Ariya', 'production', 'electric', 'Southwater,Telford Plaza', 'S1', 'yes', 'road test', 'T1'),
('Nissan', 'Qashqai', 'production', 'hybrid,mild hybrid', 'Southwater,Telford Plaza', 'S1', 'yes', 'road test', 'T1'),
('Nissan', 'X-Trail', 'production', 'plug-in hybrid', 'Southwater,Telford Plaza', 'S1', 'yes', 'road test', 'T1'),
('Ora', 'Cat', 'production', 'electric', 'Hall A', 'A10', 'no', '', ''),
('Ora', 'Cat GT', 'production', 'electric', 'Hall A', 'A10', 'no', '', ''),
('Peugeot', '208', 'production', 'electric', 'Hall B,Telford Plaza', 'B8', 'yes', 'road test', 'T9'),
('Peugeot', '2008', 'production', 'electric', 'Hall B,Telford Plaza', 'B8', 'yes', 'road test', 'T9'),
('Peugeot', '308', 'production', 'plug-in hybrid', 'Hall B,Telford Plaza', 'B8', 'yes', 'road test', 'T9'),
('Peugeot', '3008', 'production', 'plug-in hybrid', 'Hall B,Telford Plaza', 'B8', 'yes', 'road test', 'T9'),
('Peugeot', '508 Peugeot Sport Engineered', 'production', 'plug-in hybrid', 'Hall B,Telford Plaza', 'B8', 'yes', 'road test', 'T9'),
('Polestar', '1', 'production', 'plug-in hybrid', 'Hall B', 'B4', 'no', '', ''),
('Polestar', '2', 'production', 'electric', 'Hall B,Telford Plaza', 'B4', 'yes', 'road test', 'T7'),
('Polestar', '3', 'production', 'electric', 'Hall B,Telford Plaza', 'B4', 'yes', 'road test', 'T7'),
('Polestar', '4concept', 'concept', 'electric', 'Hall B', 'B4', 'no', '', ''),
('Porsche', 'Taycan', 'production', 'electric', 'Southwater,Telford Plaza', 'S4', 'yes', 'road test', 'T2'),
('Porsche', 'Taycan Cross Turismo', 'production', 'electric', 'Southwater,Telford Plaza', 'S4', 'yes', 'road test', 'T2');
SELECT * FROM Telford_Motor_Show;

INSERT INTO Telford_Motor_Show (make, model, concept_or_production, fuel_type, locations, show_stand, available_for_test_drive, type_of_test_drive, test_drive_stand)
VALUES ('Renault', '4Life', 'concept', 'electric', 'Hall B', 'B1', 'no', '', ''),
('Renault', '5', 'concept', 'electric', 'Hall B', 'B1', 'no', '', ''),
('Renault', 'AIR4', 'concept', 'electric', 'Hall B', 'B1', 'no', '', ''),
('Renault', 'Austral', 'production', 'hybrid,plug-in hybrid', 'Hall B,Telford Plaza', 'B1', 'yes', 'road test', 'T1'),
('Renault', 'Captur', 'production', 'hybrid,plug-in hybrid', 'Hall B,Telford Plaza', 'B1', 'yes', 'road test', 'T1'),
('Renault', 'Clio', 'production', 'hybrid', 'Hall B,Telford Plaza', 'B1', 'yes', 'road test', 'T1'),
('Renault', 'Megane E-Tech Electric', 'production', 'electric', 'Hall B,Telford Plaza', 'B1', 'yes', 'road test', 'T1'),
('Renault', 'Zoe', 'production', 'electric', 'Hall B,Telford Plaza', 'B1', 'yes', 'road test', 'T1'),
('Rolls-Royce', 'Spectre', 'production', 'electric', 'Hall C', 'C4', 'no', '', ''),
('Seat', 'Leon', 'production', 'plug-in hybrid', 'Hall B,Telford Plaza', 'B7', 'yes', 'road test', 'T2'),
('Seat', 'Mii', 'production', 'electric', 'Hall B,Telford Plaza', 'B7', 'yes', 'road test', 'T2'),
('Skoda', 'Enyaq iV', 'production', 'electric', 'Hall B,Telford Plaza', 'B6', 'yes', 'road test', 'T2'),
('Skoda', 'Octavia iV', 'production', 'plug-in hybrid', 'Hall B,Telford Plaza', 'B6', 'yes', 'road test', 'T2'),
('Skoda', 'Superb iV', 'production', 'plug-in hybrid', 'Hall B,Telford Plaza', 'B6', 'yes', 'road test', 'T2'),
('Skoda', 'Vision iV', 'concept', 'plug-in hybrid', 'Hall B', 'B6', 'no', '', ''),
('Smart', 'Concept 1', 'concept', 'plug-in hybrid', 'Southwater', 'S7', 'no', '', ''),
('Smart', 'EQ Fortwo', 'production', 'electric', 'Southwater,Telford Plaza', 'S7', 'yes', 'road test', 'T4');
SELECT * FROM Telford_Motor_Show;

INSERT INTO Telford_Motor_Show (make, model, concept_or_production, fuel_type, locations, show_stand, available_for_test_drive, type_of_test_drive, test_drive_stand)
VALUES ('Subaru', 'Forester', 'production', 'hybrid', 'Southwater', 'S3', 'no', '', ''),
('Subaru', 'Solterra', 'production', 'electric', 'Southwater,Telford Plaza', 'S3', 'yes', 'road test', 'T5'),
('Subaru', 'XV', 'production', 'hybrid', 'Southwater', 'S3', 'no', '', ''),
('Suzuki', 'ACROSS', 'production', 'plug-in hybrid', 'Southwater,Telford Plaza', 'S5', 'yes', 'road test', 'T5'),
('Suzuki', 'SWACE', 'production', 'hybrid', 'Southwater,Telford Plaza', 'S5', 'yes', 'road test', 'T5'),
('Tesla', 'Cybertruck', 'concept', 'electric', 'Hall A', 'A3', 'no', '', ''),
('Tesla', 'Model 3', 'production', 'electric', 'Hall A,Telford Plaza', 'A3', 'yes', 'road test', 'T6'),
('Tesla', 'Model S', 'production', 'electric', 'Hall A,Parkside,Telford Plaza', 'A3', 'yes', 'road test,high speed passenger ride', 'P1,T6'),
('Tesla', 'Model X', 'production', 'electric', 'Hall A,Parkside,Telford Plaza', 'A3', 'yes', 'road test,high speed passenger ride', 'P1,T6'),
('Tesla', 'Model Y', 'production', 'electric', 'Hall A,Telford Plaza', 'A3', 'yes', 'road test', 'T6');
SELECT * FROM Telford_Motor_Show;

INSERT INTO Telford_Motor_Show (make, model, concept_or_production, fuel_type, locations, show_stand, available_for_test_drive, type_of_test_drive, test_drive_stand)
VALUES ('Toyota', 'bZ4X', 'production', 'electric', 'Hall A,Telford Plaza', 'A4', 'yes', 'road test', 'T8'),
('Toyota', 'bZ Compact', 'concept', 'electric', 'Hall A', 'A4', 'no', '', ''),
('Toyota', 'bZ Small Crossover', 'concept', 'electric', 'Hall A', 'A4', 'no', '', ''),
('Toyota', 'Compact Cruiser', 'concept', 'electric', 'Hall A', 'A4', 'no', '', ''),
('Toyota', 'Crossover EV', 'concept', 'electric', 'Hall A', 'A4', 'no', '', ''),
('Toyota', 'Highlander', 'production', 'hybrid', 'Hall A,Telford Plaza', 'A4', 'yes', 'road test', 'T8'),
('Toyota', 'Prius', 'production', 'hybrid,plug-in hybrid', 'Hall A,Telford Plaza', 'A4', 'yes', 'road test', 'T8'),
('Toyota', 'RAV4', 'production', 'hybrid,plug-in hybrid', 'Hall A,Telford Plaza', 'A4', 'yes', 'road test', 'T8'),
('Toyota', 'Small SUEV', 'concept', 'electric', 'Hall A', 'A4', 'no', '', ''),
('Toyota', 'Yaris', 'production', 'hybrid', 'Hall A,Telford Plaza', 'A4', 'yes', 'road test', 'T8'),
('Toyota', 'Yaris Cross', 'production', 'hybrid', 'Hall A,Telford Plaza', 'A4', 'yes', 'road test', 'T8'),
('Vauxhall', 'Astra', 'production', 'plug-in hybrid', 'Hall A,Telford Plaza', 'A6', 'yes', 'road test', 'T10'),
('Vauxhall', 'Combo-e Life', 'production', 'electric', 'Hall A', 'A6', 'no', '', ''),
('Vauxhall', 'Corsa-e', 'production', 'electric', 'Hall A,Telford Plaza', 'A6', 'yes', 'road test', 'T10'),
('Vauxhall', 'Grandland', 'production', 'plug-in hybrid', 'Hall A,Telford Plaza', 'A6', 'yes', 'road test', 'T10'),
('Vauxhall', 'Mokka-e', 'production', 'electric', 'Hall A,Telford Plaza', 'A6', 'yes', 'road test', 'T10'),
('Vauxhall', 'Vivaro-e Life', 'production', 'electric', 'Hall A', 'A6', 'no', '', '');
SELECT * FROM Telford_Motor_Show;

INSERT INTO Telford_Motor_Show (make, model, concept_or_production, fuel_type, locations, show_stand, available_for_test_drive, type_of_test_drive, test_drive_stand)
VALUES ('Volkswagen', 'Aero-B', 'concept', 'electric', 'Hall A', 'A5', 'no', '', ''),
('Volkswagen', 'ID.3', 'production', 'electric', 'Hall A,Telford Plaza', 'A5', 'yes', 'road test', 'T2'),
('Volkswagen', 'ID.4', 'production', 'electric', 'Hall A', 'A5', 'no', '', ''),
('Volkswagen', 'ID.4 GTX', 'production', 'electric', 'Hall A,Telford Plaza', 'A5', 'yes', 'road test', 'T2'),
('Volkswagen', 'ID.5', 'production', 'electric', 'Hall A', 'A5', 'no', '', ''),
('Volkswagen', 'ID.5 GTX', 'production', 'electric', 'Hall A,Telford Plaza', 'A5', 'yes', 'road test', 'T2'),
('Volkswagen', 'ID.Buzz', 'concept', 'electric', 'Hall A', 'A5', 'no', '', ''),
('Volkswagen', 'ID.Life', 'concept', 'electric', 'Hall A', 'A5', 'no', '', ''),
('Volvo', 'C40 Recharge', 'production', 'electric', 'Hall A,Telford Plaza', 'A2', 'yes', 'road test', 'T7'),
('Volvo', 'Concept Recharge', 'concept', 'electric', 'Hall A', 'A2', 'no', '', ''),
('Volvo', 'S60 Recharge', 'production', 'plug-in hybrid', 'Hall A,Telford Plaza', 'A2', 'yes', 'road test', 'T7'),
('Volvo', 'S90 Recharge', 'production', 'plug-in hybrid', 'Hall A,Telford Plaza', 'A2', 'yes', 'road test', 'T7'),
('Volvo', 'V60 Recharge', 'production', 'plug-in hybrid', 'Hall A,Telford Plaza', 'A2', 'yes', 'road test', 'T7'),
('Volvo', 'V90 Recharge', 'production', 'plug-in hybrid', 'Hall A,Telford Plaza', 'A2', 'yes', 'road test', 'T7'),
('Volvo', 'XC40 Recharge', 'production', 'electric,plug-in hybrid', 'Hall A,Telford Plaza', 'A2', 'yes', 'road test', 'T7'),
('Volvo', 'XC60 Recharge', 'production', 'plug-in hybrid', 'Hall A,Telford Plaza', 'A2', 'yes', 'road test', 'T7'),
('Volvo', 'XC90 Recharge', 'production', 'plug-in hybrid', 'Hall A,Telford Plaza', 'A2', 'yes', 'road test', 'T7'),
('Wey', 'Coffee 01', 'production', 'plug-in hybrid', 'Hall B', 'B10', 'no', '', ''),
('Wey', 'Coffee 02', 'production', 'electric', 'Hall B', 'B10', 'no', '', '');
SELECT * FROM Telford_Motor_Show;

update Telford_Motor_Show
set locations = 'Southwater,Parkside,Telford Plaza'
where car_id = 147;
update Telford_Motor_Show
set locations = 'Southwater,Parkside,Telford Plaza'
where car_id = 148;
update Telford_Motor_Show
set test_drive_stand = 'P2,T2'
where car_id = 147;
update Telford_Motor_Show
set test_drive_stand = 'P2,T2'
where car_id = 148;
update Telford_Motor_Show
set type_of_test_drive = 'road test,high speed passenger ride'
where car_id = 147;
update Telford_Motor_Show
set type_of_test_drive = 'road test,high speed passenger ride'
where car_id = 148;
update Telford_Motor_Show
set locations = 'Hall A,Parkside,Telford Plaza'
where car_id = 17;
update Telford_Motor_Show
set locations = 'Hall A,Telford Plaza'
where car_id = 12;
SELECT * FROM Telford_Motor_Show;

update new_car_releases
set make = 'Mercedes-Benz'
where car_id = 27;
update new_car_releases
set make = 'Mercedes-Benz'
where car_id = 28;
update new_car_releases
set make = 'Mercedes-Benz'
where car_id = 29;
update new_car_releases
set model = 'ID.5'
where car_id = 43;
SELECT * FROM new_car_releases;

delete from new_car_releases
where car_id = 42;
SELECT * FROM new_car_releases;

update Telford_Motor_Show
set model = 'Tarraco'
where car_id = 158;
SELECT * FROM Telford_Motor_Show;

SELECT * FROM Telford_Motor_Show
where concept_or_production = 'concept';

SELECT * FROM Telford_Motor_Show
where fuel_type = 'electric';

SELECT * FROM Telford_Motor_Show
where fuel_type = 'mild hybrid';

SELECT * FROM Telford_Motor_Show
where fuel_type = 'hybrid';

SELECT * FROM Telford_Motor_Show
where fuel_type = 'plug-in hybrid';

SELECT * FROM Telford_Motor_Show
where type_of_test_drive = 'off-road experience';

SELECT * FROM Telford_Motor_Show
where type_of_test_drive = '%high speed passenger ride%';

SELECT * FROM Telford_Motor_Show
where type_of_test_drive = 'road test,high speed passenger ride';

SELECT new_car_releases.model , Telford_Motor_Show.model
FROM new_car_releases
INNER JOIN Telford_Motor_Show
ON new_car_releases.model = Telford_Motor_Show.model;

SELECT *
FROM new_car_releases
INNER JOIN Telford_Motor_Show
WHERE new_car_releases.model = Telford_Motor_Show.model AND Telford_Motor_Show.available_for_test_drive = "yes";

SELECT *
FROM new_car_releases
INNER JOIN Telford_Motor_Show
WHERE new_car_releases.model = Telford_Motor_Show.model AND new_car_releases.fuel_type = "%hybrid%";

SELECT *
FROM Telford_Motor_Show
INNER JOIN new_car_releases
WHERE Telford_Motor_Show.model = new_car_releases.model AND new_car_releases.fuel_type = "%electric%";

SELECT *
FROM new_car_releases
where model not in (select model from Telford_Motor_Show);

update new_car_releases
set model = 'C5 X'
where car_id = 9;

INSERT INTO Telford_Motor_Show (make, model, concept_or_production, fuel_type, locations, show_stand, available_for_test_drive, type_of_test_drive, test_drive_stand)
VALUES ('Audi', 'Q6 e-tron', 'production', 'electric', 'Hall A,Telford Plaza', 'A1', 'yes', 'road test', 'T2');
SELECT * FROM Telford_Motor_Show;

SELECT *
FROM new_car_releases
where model not in (select model from Telford_Motor_Show);

SELECT *
FROM new_car_releases
where make not in (select make from Telford_Motor_Show);

SELECT * FROM Telford_Motor_Show order by show_stand;

SELECT * FROM new_car_releases order by estimated_starting_price_£;

SELECT * FROM new_car_releases
where estimated_starting_price_£ between 20000 and 40000 order by estimated_starting_price_£;

SELECT * FROM Telford_Motor_Show
where show_stand between 'A1' and 'C6' order by show_stand;



