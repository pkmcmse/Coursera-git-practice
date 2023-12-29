DELIMITER //
CREATE PROCEDURE AddBooking(IN BookingID INT, IN TableNo int, in firstname varchar(100), in lastname varchar(100), in  timestam time)
BEGIN
INSERT INTO Bookings VALUES(BookingID,TableNo,firstname,lastname,timestam);
END//

DELIMITER //
CREATE PROCEDURE UpdateBooking(IN Booking_ID int,in  timestam time)
BEGIN
UPDATE Bookings SET BookingSlot=timestam WHERE BookingID=Booking_ID;
END//

DELIMITER //
create procedure CancelBooking(IN Book_ID int)
BEGIN
DELETE FROM bookings WHERE BookingID=Book_ID;
END //