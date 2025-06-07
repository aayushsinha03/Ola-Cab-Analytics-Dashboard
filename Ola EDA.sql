use ola;
RENAME TABLE `bookings-100000-rows july` TO bookings;
SELECT * FROM bookings;
SELECT count(*) FROM bookings;



-- To retrive all sucessful booking 
SELECT COUNT(*) FROM bookings
WHERE Booking_Status = 'Success';
CREATE VIEW Successful_Bookings AS
SELECT * FROM bookings
WHERE Booking_Status = 'Success';

SELECT * FROM Successful_Bookings;

-- TO Find Avg Distance For Each VEhicle type 
CREATE VIEW  Ride_Distance_For_Each_VEhicle AS
SELECT Vehicle_Type , AVG(Ride_Distance)
FROM bookings
Group BY Vehicle_Type;


-- Get The TOTAL NUMBER oF CANCELLED rIDES by customers
Create VIEW Rides_canceld_by_customer AS 
SELECT COUNT(*) FROM bookings 
WHERE Booking_Status = "Canceled By Customer";


-- Top 5 Customers who booked highest number of rides 
CREATE VIEW Top_5_Customers AS 
SELECT Customer_ID , COUNT(Booking_ID) as Total_Rides
FROM bookings
GROUP BY Customer_ID
ORDER BY Total_Rides desc Limit 5;

--  count rides cancelled by drivers by personal and car related issue 
CREATE VIEW cancelled_by_drivers_by_personal_and_car_related_issue AS  
SELECT COUNT(*)
FROM bookings 
WHERE Canceled_Rides_by_Driver = 'Personal & Car related issue';

-- Find max and min driver ratings for prime sedan booking
CREATE VIEW max_min_driver_rating AS
SELECT MAX(Driver_Ratings) as max_rating,
MIN(Driver_Ratings) as min_rating
FROM bookings
WHERE Vehicle_Type = 'Prime Sedan';

SELECT * FROM max_min_driver_rating;

-- Retrive all rides where payment was made through UPI 
CREATE VIEW PAYMENT_METHOD_UPI AS 
SELECT * FROM bookings 
WHERE Payment_Method = 'UPI';

-- FIND AVG Customer Rating Per Vehicle Type 
CREATE View customer_rating_per_vehicle_type AS 
SELECT Vehicle_Type ,CAST( Avg(Customer_Rating) AS DECIMAL(10,2)) as Customer_rating
from bookings 
GROUP BY Vehicle_Type ;

-- Calculate total booking value of ride completed succesfully
CREATE VIEW toatal_succesful_ride_value AS 
SELECT SUM(Booking_Value)
FROM bookings 
WHERE Booking_Status = 'Success';

-- List All incomplete Rides along with the Reason 
CREATE VIEW incomplete_rides AS 
SELECT Booking_ID , Incomplete_Rides_Reason 
FROM bookings 
WHERE Incomplete_Rides = 'Yes';

-- BEST DRIVER
SELECT Booking_ID , Driver_Ratings
FROM bookings 
WHERE Driver_Ratings >= 4.5;
