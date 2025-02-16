use cars;
-- READ DATA--
SELECT * FROM car_dekho;
-- TOTAL Cars:to get a count of total records--
SELECT count(*) FROM car_dekho;
-- the manager asked the employee How many cars will be available in 2023?--
SELECT COUNT(*) FROM car_dekho WHERE year=2023;
-- The manager asked the employee How many cars will be available in 2020,2021,2022--
SELECT COUNT(*) FROM car_dekho WHERE year IN(2020,2021,2022) GROUP BY year;
-- Client asked me to print the total of all cars by year. I dont want to see all the details.--
SELECT year,COUNT(*) FROM car_dekho GROUP BY year;
-- Client asked the car dealer agent how many diesel cars will be there in 2020?--
SELECT COUNT(*) FROM car_dekho WHERE year =2020 AND fuel='Diesel';
-- Client requested a car dealer agent how many petrol cars will be there in 2020?--
SELECT COUNT(*) FROM car_dekho WHERE year=2020 AND fuel='Petrol';
-- The manager told the employee to print all the fuel cars (petrol, diesel, and CNG) by all year--
SELECT COUNT(*) FROM car_dekho WHERE fuel='Petrol' GROUP BY year;
SELECT COUNT(*) FROM car_dekho WHERE fuel='Diesel' GROUP BY year;
SELECT COUNT(*) FROM car_dekho WHERE fuel='CNG' GROUP BY year;
-- Manager said there were more than 100 cars in a given year, which year had more than 100 cars?--
SELECT year, COUNT(*) FROM car_dekho GROUP BY year HAVING COUNT(*)>100;
-- The manager said to the employee all cars count details between 2015 and 2023, we need a complete list--
SELECT COUNT(*) FROM car_dekho WHERE year BETWEEN 2015 AND 2023;
-- The manager said to the employee all cars details between 2015 to 2023, we need a complete list--
SELECT * FROM car_dekho WHERE year between 2015 and 2023;