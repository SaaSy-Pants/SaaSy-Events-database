use `USER`;
INSERT INTO `user_tab` (`UID`, `Name`, `Email`, `PhoneNo`, `HashedPswd`, `Address`, `Age`)
VALUES
('U001', 'John Doe', 'johndoe@example.com', '+1234567890', '$2b$12$OaUaypuWIjhd7eO7RsWNyuQoJx0hCJ2dx8.AYx5H1P7RBW3DpJIyS', '123 Main St, City, Country', 30),
('U002', 'Jane Smith', 'janesmith@example.com', '+0987654321', '$2b$12$rdqS7U54TlThHfs1Rll9CuE8jfq2wK6lNTM6CsWY6098Nr2pDiTmS', '456 Elm St, City, Country', 25),
('U003', 'Robert Brown', 'robertbrown@example.com', '+1122334455', '$2b$12$/G8ZQQeEdj41WbTfK9MeJ.goNL8hSY62HTf35vHUgUu0/TN2Au1s6', '789 Oak St, City, Country', 28),
('U004', 'Emily Davis', 'emilydavis@example.com', '+1223344556', '$2b$12$3ldvQwLop/1RqFDKlX0dLeG1Fhdhjw7qPoccjsB4A6znzHUfS80JO', '321 Pine St, City, Country', 35),
('U005', 'Michael Johnson', 'michaeljohnson@example.com', '+1555666777', '$2b$12$30FFZcNnHm1JMyucEEwwJ.kbH4T9ipMFZGSI.fe1Wv3hp9GAG/yvK', '654 Birch St, City, Country', 40);
select * from user_tab;

use `ORGANISER`;
INSERT INTO `org_tab` (`OID`, `Name`, `Email`, `PhoneNo`, `HashedPswd`, `Address`, `Age`)
VALUES
('O001', 'Alice Johnson', 'alice.johnson@example.com', '+1987654321', '$2b$12$W3Nm.HN38Dmhke6GfEvZneiNUM3pjbl6a7D2SGnQXWkhnMIYsn.H6', '789 Maple Ave, Cityville, Country', 28),
('O002', 'David Smith', 'david.smith@example.com', '+1456789012', '$2b$12$DUJEZnSL1KV4HI5ps3jw/euKk4PzofdrMJGehVfFveXhZG2Ksn7/K', '456 Oak St, Townsville, Country', 34),
('O003', 'Sophia Garcia', 'sophia.garcia@example.com', '+1357924680', '$2b$12$mkWLSYmE6u3B7CkjiTGx8eSm0OGpS3Gn9AiKd30qP4VsTd.8Ck9c6', '321 Birch St, Villagetown, Country', 22),
('O004', 'Liam Thompson', 'liam.thompson@example.com', '+1765432109', '$2b$12$nSJ95FoAtbcTaLbdG1qqs.3B.3i6cFc01gI8UgOV4yicArinneYbm', '654 Pine St, Countrytown, Country', 29),
('O005', 'Emma Brown', 'emma.brown@example.com', '+1098765432', '$2b$12$rObWw3aKivJPhNNUsiiR2OR10lw0.pspE2loYpouWKLDYfRZUeelO', '987 Cedar Ln, Citycenter, Country', 31);
select * from org_tab;

use `EVENTS`;
INSERT INTO `eve_tab` (`EID`, `OID`, `Name`, `EventCategory`, `EventDesc`, `Location`, `EventDate`, `EventTimeStart`, `EventTimeEnd`, `TicketsAvb`, `Price`)
VALUES
('E001', 'O001', 'Tech Conference 2024', 'Technology', 'A conference for tech professionals to discuss the latest trends in technology.', 'Convention Center, City', '2024-05-15', '09:00:00', '17:00:00', 200, 150),
('E002', 'O002', 'Music Festival', 'Music', 'An outdoor festival featuring various music bands and artists.', 'Central Park, City', '2024-06-20', '12:00:00', '23:00:00', 500, 80),
('E003', 'O003', 'Art Exhibition', 'Art', 'A showcase of contemporary art by local and international artists.', 'Art Gallery, City', '2024-07-10', '10:00:00', '18:00:00', 150, 20),
('E004', 'O001', 'Cooking Workshop', 'Food', 'A hands-on workshop to learn cooking techniques from professional chefs.', 'Culinary School, City', '2024-08-05', '14:00:00', '17:00:00', 30, 50),
('E005', 'O002', 'Charity Run', 'Sports', 'A 5K charity run to raise funds for local charities.', 'City Stadium', '2024-09-12', '07:00:00', '10:00:00', 300, 30);
select * from eve_tab;

use `TICKETS`;
INSERT INTO `tick_tab` (`TID`, `EID`, `UID`, `QRLink`)
VALUES
('T001', 'E001', 'U001', 'https://example.com/qrcode/T001'),
('T002', 'E002', 'U002', 'https://example.com/qrcode/T002'),
('T003', 'E003', 'U003', 'https://example.com/qrcode/T003'),
('T004', 'E001', 'U002', 'https://example.com/qrcode/T004'), 
('T005', 'E002', 'U004', 'https://example.com/qrcode/T005'); 
select * from tick_tab;