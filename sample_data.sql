INSERT INTO Customer VALUES 
(1, 'Arjun', '9876543210', 'Bangalore'),
(2, 'Priya', '9123456789', 'Hyderabad');

INSERT INTO Restaurant VALUES 
(1, 'Food Court', 'Bangalore'),
(2, 'Spicy House', 'Hyderabad');

INSERT INTO MenuItem VALUES 
(1, 1, 'Burger', 120),
(2, 1, 'Pizza', 250),
(3, 2, 'Biryani', 180);

INSERT INTO Orders VALUES 
(101, 1, 1, '2025-01-15', 'Delivered'),
(102, 2, 2, '2025-01-16', 'Cancelled');

INSERT INTO OrderItem VALUES 
(101, 1, 2),
(101, 2, 1),
(102, 3, 1);

INSERT INTO DeliveryPartner VALUES 
(1, 'Ravi', '9999999999');

INSERT INTO Delivery VALUES 
(1, 101, 1, '13:20:00', 'Completed');

INSERT INTO Payment VALUES 
(1, 101, 490, 'UPI', 'Success');
