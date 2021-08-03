
CREATE TABLE Users(
    userId 	int UNIQUE,
    fname	varchar(100) NOT NULL,
    lname	varchar(100) NOT NULL,
    password	varchar(100) NOT NULL,
    phoneNumber	varchar(100) UNIQUE NOT NULL,
    emailId	varchar(100) PRIMARY KEY,
    userType	varchar(100) NOT NULL,
    DOB		Date
);

CREATE TABLE LoginCredentials(
	userEmail varchar(100) primary key,
    userPassword varchar(100) NOT NULL
);



CREATE TABLE AdminLoginCredentials(
    adminUserName varchar(100) primary key,
    adminPassword varchar(100) NOT NULL
);



CREATE TABLE City(
	cityId varchar(100) primary key,
	cityName varchar(100) NOT NULL
);


CREATE TABLE Airport(
	airportId varchar(100) primary key,
	airportName varchar(100) NOT NULL,
	city varchar(100) NOT NULL,
    FOREIGN KEY(city) REFERENCES City(cityId)
);

CREATE TABLE Flight(
	flightId varchar(100) primary key,
	flightName varchar(100) NOT NULL,
	airlineName varchar(100) NOT NULL
);

CREATE TABLE Schedules(
	scheduleId varchar(100) primary key,
	sourceId varchar(100) NOT NULL,
	destinationId varchar(100) NOT NULL,
    capacity int NOT NULL,
    scheduledDate date NOT NULL,
    scheduledtime TIMESTAMP NOT NULL,
    returnDate date NOT NULL,
    flightId varchar(100) NOT NULL,
    FOREIGN KEY(sourceId) REFERENCES Airport(airportId),
    FOREIGN KEY(destinationId) REFERENCES Airport(airportId),
    FOREIGN KEY(flightId) REFERENCES Flight(flightId)
);

CREATE TABLE Booking(
	bookingId varchar(100) primary key,
	emailId varchar(100) NOT NULL,
	scheduleId varchar(100) NOT NULL,
    bookingDate date NOT NULL,
    seatNumber varchar(10) NOT NULL,
    FOREIGN KEY(emailId) REFERENCES Users(emailId),
    FOREIGN KEY(scheduleId) REFERENCES Schedules(scheduleId)
);

CREATE TABLE Payment(
	paymentId varchar(100) primary key,
	paymentMode varchar(100) NOT NULL,
	amount varchar(100) NOT NULL,
    bookingId varchar(100) NOT NULL,
    FOREIGN KEY(bookingId) REFERENCES Booking(bookingId)
);
