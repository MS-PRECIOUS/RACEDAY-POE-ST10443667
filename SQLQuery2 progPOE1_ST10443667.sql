-- RaceDay Database Schema

CREATE TABLE [User] (
    UserID INT IDENTITY(1,1) PRIMARY KEY,
    FullName NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) NOT NULL UNIQUE,
    PasswordHash NVARCHAR(255) NOT NULL,
    Role NVARCHAR(20) NOT NULL,
    ContactNumber NVARCHAR(20) NULL
);

CREATE TABLE Event (
    EventID INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL,
    Description NVARCHAR(500) NULL,
    EventDate DATE NOT NULL,
    Location NVARCHAR(150) NOT NULL,
    Distance DECIMAL(5,2) NULL,
    EventType NVARCHAR(20) NOT NULL,
    OrganiserID INT NOT NULL,
    CONSTRAINT FK_Event_User FOREIGN KEY (OrganiserID) REFERENCES [User](UserID)
);

CREATE TABLE Category (
    CategoryID INT IDENTITY(1,1) PRIMARY KEY,
    CategoryName NVARCHAR(50) NOT NULL,
    EventID INT NOT NULL,
    CONSTRAINT FK_Category_Event FOREIGN KEY (EventID) REFERENCES Event(EventID)
);

CREATE TABLE Enrolment (
    EnrolmentID INT IDENTITY(1,1) PRIMARY KEY,
    UserID INT NOT NULL,
    EventID INT NOT NULL,
    CategoryID INT NOT NULL,
    EnrolmentStatus NVARCHAR(20) NOT NULL DEFAULT 'Confirmed',
    CONSTRAINT FK_Enrolment_User FOREIGN KEY (UserID) REFERENCES [User](UserID),
    CONSTRAINT FK_Enrolment_Event FOREIGN KEY (EventID) REFERENCES Event(EventID),
    CONSTRAINT FK_Enrolment_Category FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

CREATE TABLE Result (
    ResultID INT IDENTITY(1,1) PRIMARY KEY,
    EnrolmentID INT NOT NULL UNIQUE,
    FinishTime TIME NULL,
    FinishingPosition INT NULL,
    CONSTRAINT FK_Result_Enrolment FOREIGN KEY (EnrolmentID) REFERENCES Enrolment(EnrolmentID)
);

CREATE TABLE EventImage (
    ImageID INT IDENTITY(1,1) PRIMARY KEY,
    EventID INT NOT NULL,
    ImageURL NVARCHAR(255) NOT NULL,
    UploadDate DATETIME NOT NULL DEFAULT GETDATE(),
    CONSTRAINT FK_EventImage_Event FOREIGN KEY (EventID) REFERENCES Event(EventID)
);

-- Seed Data

INSERT INTO [User] (FullName, Email, PasswordHash, Role, ContactNumber) VALUES
('Thabo Mokoena', 'thabo@raceday.com', 'hashedpassword1', 'Organiser', '0821234567'),
('Lindiwe Zulu', 'lindiwe@raceday.com', 'hashedpassword2', 'Organiser', '0827654321'),
('Sipho Ndlovu', 'sipho@raceday.com', 'hashedpassword3', 'Participant', '0731112222'),
('Anna van Wyk', 'anna@raceday.com', 'hashedpassword4', 'Participant', '0739998888');

INSERT INTO Event (Name, Description, EventDate, Location, Distance, EventType, OrganiserID) VALUES
('Comrades Marathon', 'Iconic ultramarathon between Pietermaritzburg and Durban', '2026-06-14', 'Pietermaritzburg', 89.00, 'run', 1),
('Cape Town Cycle Tour', 'Scenic cycling race around Cape Town', '2026-03-08', 'Cape Town', 109.00, 'cycle', 2),
('Soweto Marathon', 'Community marathon through Soweto', '2026-11-01', 'Soweto', 42.20, 'run', 1);

INSERT INTO Category (CategoryName, EventID) VALUES
('Under 20', 1),
('Senior', 1),
('21km', 2),
('109km', 2),
('10km', 3);

INSERT INTO Enrolment (UserID, EventID, CategoryID, EnrolmentStatus) VALUES
(3, 1, 2, 'Confirmed'),
(4, 2, 3, 'Confirmed'),
(3, 3, 5, 'Confirmed');

INSERT INTO Result (EnrolmentID, FinishTime, FinishingPosition) VALUES
(1, '08:45:00', 120),
(2, '03:15:00', 45);