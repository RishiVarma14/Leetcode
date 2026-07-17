Create table drivers(
    driver_id INT PRIMARY KEY,
    driver_name VARCHAR(100),
    experience_years INT,
    city VARCHAR(50),
    salary DECIMAL(10,2)
);


INSERT INTO drivers 
(driver_id, driver_name, experience_years, city, salary)
VALUES
(1, 'Ramesh Kumar', 5, 'Hyderabad', 35000.00),
(2, 'Suresh Reddy', 8, 'Warangal', 42000.00),
(3, 'Mahesh Naidu', 3, 'Karimnagar', 30000.00),
(4, 'Praveen Yadav', 10, 'Nizamabad', 50000.00),
(5, 'Kiran Kumar', 6, 'Khammam', 38000.00),
(6, 'Venkatesh Rao', 12, 'Adilabad', 55000.00),
(7, 'Anil Sharma', 4, 'Nalgonda', 32000.00),
(8, 'Rajesh Patel', 7, 'Medak', 41000.00),
(9, 'Santosh Kumar', 9, 'Mahabubnagar', 47000.00),
(10, 'Ravi Teja', 2, 'Siddipet', 28000.00),
(11, 'Harish Varma', 11, 'Hyderabad', 53000.00),
(12, 'Naresh Goud', 5, 'Warangal', 36000.00),
(13, 'Srikanth Reddy', 6, 'Karimnagar', 39000.00),
(14, 'Arun Kumar', 8, 'Khammam', 45000.00),
(15, 'Manoj Yadav', 1, 'Nizamabad', 25000.00),
(16, 'Vijay Kumar', 13, 'Adilabad', 60000.00),
(17, 'Pavan Kalyan', 7, 'Hyderabad', 43000.00),
(18, 'Lokesh Naik', 4, 'Nalgonda', 31000.00),
(19, 'Rohit Sharma', 9, 'Warangal', 48000.00),
(20, 'Sai Krishna', 5, 'Mahabubnagar', 37000.00);


CREATE TABLE routes (
    route_id INT PRIMARY KEY,
    source_city VARCHAR(50),
    destination_city VARCHAR(50),
    distance_km INT
);

INSERT INTO routes
(route_id, source_city, destination_city, distance_km)
VALUES
(1, 'Hyderabad', 'Warangal', 150),
(2, 'Hyderabad', 'Karimnagar', 165),
(3, 'Hyderabad', 'Nizamabad', 175),
(4, 'Warangal', 'Khammam', 120),
(5, 'Karimnagar', 'Adilabad', 210),
(6, 'Nizamabad', 'Nirmal', 80),
(7, 'Hyderabad', 'Mahabubnagar', 105),
(8, 'Hyderabad', 'Nalgonda', 100),
(9, 'Khammam', 'Suryapet', 135),
(10, 'Warangal', 'Siddipet', 140),
(11, 'Adilabad', 'Mancherial', 90),
(12, 'Hyderabad', 'Medak', 95),
(13, 'Karimnagar', 'Jagtial', 55),
(14, 'Nalgonda', 'Miryalaguda', 65),
(15, 'Mahabubnagar', 'Gadwal', 115),
(16, 'Hyderabad', 'Vikarabad', 75),
(17, 'Warangal', 'Mulugu', 110),
(18, 'Khammam', 'Bhadrachalam', 180),
(19, 'Siddipet', 'Kamareddy', 130),
(20, 'Hyderabad', 'Sangareddy', 60);

CREATE TABLE bus_trips (
    trip_id INT PRIMARY KEY,
    bus_number VARCHAR(20),
    route_id INT,
    driver_id INT,
    trip_date DATE,
    pickup_time TIME,
    drop_time TIME,
    fuel_cost DECIMAL(10,2),
    passengers INT,
    revenue DECIMAL(10,2),
    FOREIGN KEY(route_id) REFERENCES routes(route_id),
    FOREIGN KEY(driver_id) REFERENCES drivers(driver_id)
);


INSERT INTO bus_trips
(trip_id, bus_number, route_id, driver_id, trip_date, pickup_time, drop_time, fuel_cost, passengers, revenue)
VALUES
(1, 'TS09AB1234', 1, 1, '2026-05-01', '06:00:00', '09:00:00', 4500.00, 42, 21000.00),

(2, 'TS10CD5678', 2, 2, '2026-05-01', '07:30:00', '11:00:00', 5000.00, 38, 19500.00),

(3, 'TS08EF9012', 3, 3, '2026-05-01', '05:45:00', '10:15:00', 6200.00, 45, 24000.00),

(4, 'TS11GH3456', 4, 4, '2026-05-02', '08:00:00', '11:30:00', 3900.00, 35, 17000.00),

(5, 'TS12IJ7890', 5, 5, '2026-05-02', '06:15:00', '12:00:00', 7200.00, 48, 28500.00),

(6, 'TS13KL2345', 6, 6, '2026-05-02', '09:00:00', '11:00:00', 2500.00, 28, 12000.00),

(7, 'TS14MN6789', 7, 7, '2026-05-03', '07:00:00', '09:30:00', 3200.00, 30, 14500.00),

(8, 'TS15OP1122', 8, 8, '2026-05-03', '06:45:00', '09:00:00', 3100.00, 32, 15000.00),

(9, 'TS16QR3344', 9, 9, '2026-05-03', '10:00:00', '13:45:00', 4800.00, 40, 20500.00),

(10, 'TS17ST5566', 10, 10, '2026-05-04', '05:30:00', '08:30:00', 4300.00, 37, 18500.00),

(11, 'TS18UV7788', 11, 11, '2026-05-04', '11:00:00', '13:00:00', 2600.00, 25, 11000.00),

(12, 'TS19WX9900', 12, 12, '2026-05-04', '06:20:00', '08:00:00', 2200.00, 29, 12500.00),

(13, 'TS20YZ1212', 13, 13, '2026-05-05', '07:15:00', '08:45:00', 1800.00, 24, 9800.00),

(14, 'TS21AA3434', 14, 14, '2026-05-05', '09:30:00', '11:00:00', 2000.00, 26, 10500.00),

(15, 'TS22BB5656', 15, 15, '2026-05-05', '05:50:00', '09:20:00', 4100.00, 33, 16800.00),

(16, 'TS23CC7878', 16, 16, '2026-05-06', '08:10:00', '09:40:00', 1700.00, 21, 9000.00),

(17, 'TS24DD9090', 17, 17, '2026-05-06', '06:30:00', '09:15:00', 3500.00, 34, 16000.00),

(18, 'TS25EE1111', 18, 18, '2026-05-06', '04:45:00', '10:30:00', 7600.00, 50, 31000.00),

(19, 'TS26FF2222', 19, 19, '2026-05-07', '07:40:00', '10:50:00', 4400.00, 39, 19000.00),

(20, 'TS27GG3333', 20, 20, '2026-05-07', '06:00:00', '07:30:00', 1500.00, 20, 8500.00);


#Show trip details with driver names.
Select
    bt.trip_id,
    bt.bus_number,
    d.driver_name,
    bt.passengers,
    bt.revenue
FROM bus_trips bt
INNER JOIN drivers d
ON bt.driver_id = d.driver_id;


SELECT
    bt.trip_id,
    bt.bus_number,
    d.driver_name,
    bt.passengers,
    bt.revenue
FROM bus_trips bt
LEFT JOIN drivers d
ON bt.driver_id = d.driver_id;


SELECT 
    bt.trip_id,
    r.source_city,
    r.destination_city,
    bt.revenue
FROM bus_trips bt
INNER JOIN routes r
ON bt.route_id = r.route_id;

SELECT
    d.driver_id,
    d.driver_name
FROM drivers d
LEFT JOIN bus_trips bt
ON d.driver_id = bt.driver_id
WHERE bt.trip_id IS NULL;


SELECT
    bt.trip_id,
    bt.bus_number,
    d.driver_name,
    bt.passengers
FROM bus_trips bt
RIGHT JOIN drivers d
ON bt.driver_id = d.driver_id;

Use Apsrtc_Analysis;
SELECT bt.trip_id, bt.bus_number, d.driver_name, bt.passengers
FROM   bus_trips bt
RIGHT JOIN drivers d ON bt.driver_id = d.driver_id;




USE Apsrtc_Analysis;

START TRANSACTION;

INSERT INTO drivers (driver_id, driver_name, experience_years, city, salary)
VALUES (21, 'Arjun Reddy', 6, 'Hyderabad', 40000.00);

INSERT INTO bus_trips (trip_id, bus_number, route_id, driver_id, trip_date,
                       pickup_time, drop_time, fuel_cost, passengers, revenue)
VALUES (21, 'TS28HH4444', 1, 21, '2026-05-09',
        '07:00:00', '10:00:00', 4600.00, 44, 22000.00);
        
        COMMIT;
        
        USE Apsrtc_Analysis;

START TRANSACTION;

UPDATE drivers
SET salary = 999999.00
WHERE driver_id = 1;


ROLLBACK;

USE Apsrtc_Analysis;

START TRANSACTION;

-- Step 1: Insert new driver
INSERT INTO drivers (driver_id, driver_name, experience_years, city, salary)
VALUES (22, 'Deepak Varma', 5, 'Warangal', 36000.00);

SAVEPOINT sp1;  -- Safe checkpoint after driver insert

-- Step 2: Insert a trip (maybe wrong data entered)
INSERT INTO bus_trips (trip_id, bus_number, route_id, driver_id, trip_date,
                       pickup_time, drop_time, fuel_cost, passengers, revenue)
VALUES (22, 'TS29II5555', 1, 22, '2026-05-09',
        '08:00:00', '11:00:00', 4500.00, 40, 20000.00);

-- Step 3: Update salary
UPDATE drivers
SET salary = 99999.00   -- Oops! Wrong amount
WHERE driver_id = 22;

-- Undo only trip + salary update, keep driver insert
ROLLBACK TO sp1;

-- Now fix and redo properly
UPDATE drivers
SET salary = 38000.00   -- Correct salary
WHERE driver_id = 22;

COMMIT;  -- Driver + correct salary saved. Wrong trip was rolled back.


USE Apsrtc_Analysis;
select * from bus_trips;


