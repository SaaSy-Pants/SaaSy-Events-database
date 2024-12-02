use `USER`;
INSERT INTO `user_tab` (`UID`, `Name`, `Email`, `Pic_URL`, `PhoneNo`, `Address`, `Age`)
VALUES
('U001', 'John Doe', 'johndoe@example.com', 'example.com', '+1234567890', '123 Main St, City, Country', 30),
('U002', 'Jane Smith', 'janesmith@example.com', 'example.com', '+0987654321', '456 Elm St, City, Country', 25),
('U003', 'Robert Brown', 'robertbrown@example.com', 'example.com', '+1122334455', '789 Oak St, City, Country', 28),
('U004', 'Emily Davis', 'emilydavis@example.com', 'example.com', '+1223344556', '321 Pine St, City, Country', 35),
('U005', 'Michael Johnson', 'michaeljohnson@example.com', 'example.com', '+1555666777', '654 Birch St, City, Country', 40);
select * from user_tab;

use `ORGANISER`;
INSERT INTO `org_tab` (`OID`, `Name`, `Email`, `Pic_URL`, `PhoneNo`, `Address`, `Age`)
VALUES
('O001', 'Alice Johnson', 'alice.johnson@example.com', 'example.com', '+1987654321', '789 Maple Ave, Cityville, Country', 28),
('O002', 'David Smith', 'david.smith@example.com', 'example.com', '+1456789012', '456 Oak St, Townsville, Country', 34),
('O003', 'Sophia Garcia', 'sophia.garcia@example.com', 'example.com', '+1357924680', '321 Birch St, Villagetown, Country', 22),
('O004', 'Liam Thompson', 'liam.thompson@example.com', 'example.com', '+1765432109', '654 Pine St, Countrytown, Country', 29),
('O005', 'Emma Brown', 'emma.brown@example.com', 'example.com', '+1098765432', '987 Cedar Ln, Citycenter, Country', 31);
select * from org_tab;

use `events`;
INSERT INTO `eve_tab` (`EID`, `OID`, `Name`, `EventCategory`, `EventDesc`, `Location`, `EventDate`, `EventTimeStart`, `EventTimeEnd`, `GuestsRem`, `MaxGuestsPerTicket`, `Price`)
VALUES
('E001', 'O001', 'Tech Conference 2024', 'Technology', 'A conference for tech professionals to discuss the latest trends in technology.', 'Convention Center, City', '2024-05-15', '09:00:00', '17:00:00', 197, 3, 150),
('E002', 'O002', 'Music Festival', 'Music', 'An outdoor festival featuring various music bands and artists.', 'Central Park, City', '2024-06-20', '12:00:00', '23:00:00', 495, 4, 80),
('E003', 'O003', 'Art Exhibition', 'Art', 'A showcase of contemporary art by local and international artists.', 'Art Gallery, City', '2024-07-10', '10:00:00', '18:00:00', 149, 2, 20),
('E004', 'O001', 'Cooking Workshop', 'Food', 'A hands-on workshop to learn cooking techniques from professional chefs.', 'Culinary School, City', '2024-08-05', '14:00:00', '17:00:00', 30, 1, 50),
('E005', 'O002', 'Charity Run', 'Sports', 'A 5K charity run to raise funds for local charities.', 'City Stadium', '2024-09-12', '07:00:00', '10:00:00', 300, 4, 30);
select * from eve_tab;

use `tickets`;
INSERT INTO `tick_tab` (`TID`, `EID`, `UID`, `NumGuests`)
VALUES
('T001', 'E001', 'U001', 2),
('T002', 'E002', 'U002', 3),
('T003', 'E003', 'U003', 1),
('T004', 'E001', 'U002', 1),
('T005', 'E002', 'U004', 2);
select * from tick_tab;