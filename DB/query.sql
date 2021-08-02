create database flightmanagement;
use flightmanagement;

-- Create Users Table

CREATE TABLE Users(
    userId 	int primary key,
    fname	varchar(100) NOT NULL,
    lname	varchar(100) NOT NULL,
    password	varchar(100) NOT NULL,
    phoneNumber	varchar(100) UNIQUE NOT NULL,
    emailId	varchar(100) UNIQUE NOT NULL,
    userType	varchar(100) NOT NULL,
    DOB		Date 
);


CREATE SEQUENCE user_id
START WITH 1
INCREMENT BY 1
;

INSERT INTO Users (userId, fname, lname, phoneNumber, emailId, DOB, userType, password) VALUES (user_id.nextval,'Henry','Aguayo','516-535-5422','HenryRAguayo@dayrep.com', TO_DATE('10/15/1998', 'MM/DD/YYYY'), 'User','erg06');
INSERT INTO Users (userId, fname, lname, phoneNumber, emailId, DOB, userType, password) VALUES (user_id.nextval,'Douglas','Barker','660-265-2267','DouglasEBarker@jourrapide.com', TO_DATE('05/18/1995', 'MM/DD/YYYY'), 'User','rbs4p');
INSERT INTO Users (userId, fname, lname, phoneNumber, emailId, DOB, userType, password) VALUES (user_id.nextval,'Lamar','Harrigan','781-642-4313','LamarJHarrigan@jourrapide.com', TO_DATE('04/25/2001', 'MM/DD/YYYY'), 'User','tmkgu');
INSERT INTO Users (userId, fname, lname, phoneNumber, emailId, DOB, userType, password) VALUES (user_id.nextval,'Bruce','Wilson','401-444-2462','BruceVWilson@jourrapide.com', TO_DATE('05/14/1985', 'MM/DD/YYYY'), 'User','age6z');
INSERT INTO Users (userId, fname, lname, phoneNumber, emailId, DOB, userType, password) VALUES (user_id.nextval,'Eliza','Medina','817-377-9883','ElizaBMedina@dayrep.com', TO_DATE('07/22/1997', 'MM/DD/YYYY'), 'User','t3s9z');
INSERT INTO Users (userId, fname, lname, phoneNumber, emailId, DOB, userType, password) VALUES (user_id.nextval,'Pamela','Silverman','406-443-0510','PamelaDSilverman@armyspy.com', TO_DATE('05/07/1991', 'MM/DD/YYYY'), 'User','a61fw');
INSERT INTO Users (userId, fname, lname, phoneNumber, emailId, DOB, userType, password) VALUES (user_id.nextval,'Sandra','Toro','209-423-0756','SandraBToro@teleworm.us', TO_DATE('02/03/1993', 'MM/DD/YYYY'), 'User','hd6ru');
INSERT INTO Users (userId, fname, lname, phoneNumber, emailId, DOB, userType, password) VALUES (user_id.nextval,'Stewart','Bremer','440-679-9275','StewartMBremer@armyspy.com', TO_DATE('08/12/1989', 'MM/DD/YYYY'), 'User','7nshz');
INSERT INTO Users (userId, fname, lname, phoneNumber, emailId, DOB, userType, password) VALUES (user_id.nextval,'Erin','Vessels','703-337-8735','ErinCVessels@jourrapide.com', TO_DATE('06/20/1995', 'MM/DD/YYYY'), 'User','clcst');
INSERT INTO Users (userId, fname, lname, phoneNumber, emailId, DOB, userType, password) VALUES (user_id.nextval,'Cynthia','Guthridge','618-830-2032','CynthiaMGuthridge@armyspy.com', TO_DATE('07/28/1975', 'MM/DD/YYYY'), 'User','wlr94');
COMMIT WORK;



-- Create LoginCredentials Table

CREATE TABLE LoginCredentials(
	userEmail varchar(100) primary key,
    userPassword varchar(100) NOT NULL
);
INSERT INTO LoginCredentials (userEmail, userPassword) VALUES ('HenryRAguayo@dayrep.com','erg06');
INSERT INTO LoginCredentials (userEmail, userPassword) VALUES ('DouglasEBarker@jourrapide.com','rbs4p');
INSERT INTO LoginCredentials (userEmail, userPassword) VALUES ('LamarJHarrigan@jourrapide.com','tmkgu');
INSERT INTO LoginCredentials (userEmail, userPassword) VALUES ('BruceVWilson@jourrapide.com','age6z');
INSERT INTO LoginCredentials (userEmail, userPassword) VALUES ('ElizaBMedina@dayrep.com','t3s9z');
INSERT INTO LoginCredentials (userEmail, userPassword) VALUES ('PamelaDSilverman@armyspy.com','a61fw');
INSERT INTO LoginCredentials (userEmail, userPassword) VALUES ('SandraBToro@teleworm.us','hd6ru');
INSERT INTO LoginCredentials (userEmail, userPassword) VALUES ('StewartMBremer@armyspy.com','7nshz');
INSERT INTO LoginCredentials (userEmail, userPassword) VALUES ('ErinCVessels@jourrapide.com','clcst');
INSERT INTO LoginCredentials (userEmail, userPassword) VALUES ('CynthiaMGuthridge@armyspy.com','wlr94');
COMMIT WORK;

CREATE TABLE AdminLoginCredentials(
    adminUserName varchar(100) primary key,
    adminPassword varchar(100) NOT NULL
);

INSERT INTO AdminLoginCredentials (adminUserName, adminPassword) VALUES ('admin','admin');
COMMIT WORK;
-- Create City Table

CREATE TABLE City(
	cityId varchar(100) primary key,
	cityName varchar(100) NOT NULL
);
INSERT INTO City (cityName, cityId) VALUES ('Birmingham','BHM');
INSERT INTO City (cityName, cityId) VALUES ('Dothan','DHN');
INSERT INTO City (cityName, cityId) VALUES ('Huntsville','HSV');
INSERT INTO City (cityName, cityId) VALUES ('Mobile','MOB');
INSERT INTO City (cityName, cityId) VALUES ('Montgomery','MGM');
INSERT INTO City (cityName, cityId) VALUES ('Anchorage','LHD');
INSERT INTO City (cityName, cityId) VALUES ('Anchorage','MRI');
INSERT INTO City (cityName, cityId) VALUES ('Anchorage','ANC');
INSERT INTO City (cityName, cityId) VALUES ('Aniak','ANI');
INSERT INTO City (cityName, cityId) VALUES ('Bethel','BET');
INSERT INTO City (cityName, cityId) VALUES ('Cordova','CDV');
INSERT INTO City (cityName, cityId) VALUES ('Deadhorse','SCC');
INSERT INTO City (cityName, cityId) VALUES ('Dillingham','DLG');
INSERT INTO City (cityName, cityId) VALUES ('Fairbanks','FAI');
INSERT INTO City (cityName, cityId) VALUES ('Gustavus','GST');
INSERT INTO City (cityName, cityId) VALUES ('Homer','HOM');
INSERT INTO City (cityName, cityId) VALUES ('Juneau','JNU');
INSERT INTO City (cityName, cityId) VALUES ('Kenai','ENA');
INSERT INTO City (cityName, cityId) VALUES ('Ketchikan','KTN');
INSERT INTO City (cityName, cityId) VALUES ('King Salmon','AKN');
INSERT INTO City (cityName, cityId) VALUES ('Klawock','AKW');
INSERT INTO City (cityName, cityId) VALUES ('Kodiak','ADQ');
INSERT INTO City (cityName, cityId) VALUES ('Kotzebue','OTZ');
INSERT INTO City (cityName, cityId) VALUES ('Nome','OME');
INSERT INTO City (cityName, cityId) VALUES ('Petersburg','PSG');
INSERT INTO City (cityName, cityId) VALUES ('St. Mary''s','KSM');
INSERT INTO City (cityName, cityId) VALUES ('Sitka','SIT');
INSERT INTO City (cityName, cityId) VALUES ('Unalakleet','UNK');
INSERT INTO City (cityName, cityId) VALUES ('Unalaska','DUT');
INSERT INTO City (cityName, cityId) VALUES ('Utqiaġvik','BRW');
INSERT INTO City (cityName, cityId) VALUES ('Valdez','VDZ');
INSERT INTO City (cityName, cityId) VALUES ('Wrangell','WRG');
INSERT INTO City (cityName, cityId) VALUES ('Yakutat','YAK');
INSERT INTO City (cityName, cityId) VALUES ('Bullhead City','IFP');
INSERT INTO City (cityName, cityId) VALUES ('Flagstaff','FLG');
INSERT INTO City (cityName, cityId) VALUES ('Grand Canyon','GCN');
INSERT INTO City (cityName, cityId) VALUES ('Mesa','IWA');
INSERT INTO City (cityName, cityId) VALUES ('Page','PGA');
INSERT INTO City (cityName, cityId) VALUES ('Phoenix','PHX');
INSERT INTO City (cityName, cityId) VALUES ('Prescott','PRC');
INSERT INTO City (cityName, cityId) VALUES ('Tucson','TUS');
INSERT INTO City (cityName, cityId) VALUES ('Yuma','NYL');
INSERT INTO City (cityName, cityId) VALUES ('Fayetteville','XNA');
INSERT INTO City (cityName, cityId) VALUES ('Fort Smith','FSM');
INSERT INTO City (cityName, cityId) VALUES ('Little Rock','LIT');
INSERT INTO City (cityName, cityId) VALUES ('Texarkana','TXK');
INSERT INTO City (cityName, cityId) VALUES ('Arcata','ACV');
INSERT INTO City (cityName, cityId) VALUES ('Bakersfield','BFL');
INSERT INTO City (cityName, cityId) VALUES ('Burbank','BUR');
INSERT INTO City (cityName, cityId) VALUES ('Concord','CCR');
INSERT INTO City (cityName, cityId) VALUES ('Fresno','FAT');
INSERT INTO City (cityName, cityId) VALUES ('Long Beach','LGB');
INSERT INTO City (cityName, cityId) VALUES ('Los Angeles','LAX');
INSERT INTO City (cityName, cityId) VALUES ('Mammoth Lakes','MMH');
INSERT INTO City (cityName, cityId) VALUES ('Monterey','MRY');
INSERT INTO City (cityName, cityId) VALUES ('Oakland','OAK');
INSERT INTO City (cityName, cityId) VALUES ('Ontario','ONT');
INSERT INTO City (cityName, cityId) VALUES ('Orange County','SNA');
INSERT INTO City (cityName, cityId) VALUES ('Palm Springs','PSP');
INSERT INTO City (cityName, cityId) VALUES ('Redding','RDD');
INSERT INTO City (cityName, cityId) VALUES ('Sacramento','SMF');
INSERT INTO City (cityName, cityId) VALUES ('San Diego','SAN');
INSERT INTO City (cityName, cityId) VALUES ('San Francisco','SFO');
INSERT INTO City (cityName, cityId) VALUES ('San Jose','SJC');
INSERT INTO City (cityName, cityId) VALUES ('San Luis Obispo','SBP');
INSERT INTO City (cityName, cityId) VALUES ('Santa Barbara','SBA');
INSERT INTO City (cityName, cityId) VALUES ('Santa Maria','SMX');
INSERT INTO City (cityName, cityId) VALUES ('Santa Rosa','STS');
INSERT INTO City (cityName, cityId) VALUES ('Stockton','SCK');
INSERT INTO City (cityName, cityId) VALUES ('Aspen','ASE');
INSERT INTO City (cityName, cityId) VALUES ('Colorado Springs','COS');
INSERT INTO City (cityName, cityId) VALUES ('Denver','DEN');
INSERT INTO City (cityName, cityId) VALUES ('Durango','DRO');
INSERT INTO City (cityName, cityId) VALUES ('Eagle','EGE');
INSERT INTO City (cityName, cityId) VALUES ('Grand Junction','GJT');
INSERT INTO City (cityName, cityId) VALUES ('Gunnison','GUC');
INSERT INTO City (cityName, cityId) VALUES ('Hayden','HDN');
INSERT INTO City (cityName, cityId) VALUES ('Montrose','MTJ');
INSERT INTO City (cityName, cityId) VALUES ('Pueblo','PUB');
INSERT INTO City (cityName, cityId) VALUES ('Hartford','BDL');
INSERT INTO City (cityName, cityId) VALUES ('New Haven','HVN');
INSERT INTO City (cityName, cityId) VALUES ('Daytona Beach','DAB');
INSERT INTO City (cityName, cityId) VALUES ('Fort Lauderdale','FLL');
INSERT INTO City (cityName, cityId) VALUES ('Fort Myers','RSW');
INSERT INTO City (cityName, cityId) VALUES ('Fort Walton Beach','VPS');
INSERT INTO City (cityName, cityId) VALUES ('Gainesville','GNV');
INSERT INTO City (cityName, cityId) VALUES ('Jacksonville','JAX');
INSERT INTO City (cityName, cityId) VALUES ('Key West','EYW');
INSERT INTO City (cityName, cityId) VALUES ('Melbourne','MLB');
INSERT INTO City (cityName, cityId) VALUES ('Miami','MIA');
INSERT INTO City (cityName, cityId) VALUES ('Orlando','MCO');
INSERT INTO City (cityName, cityId) VALUES ('Panama City','ECP');
INSERT INTO City (cityName, cityId) VALUES ('Pensacola','PNS');
INSERT INTO City (cityName, cityId) VALUES ('Punta Gorda','PGD');
INSERT INTO City (cityName, cityId) VALUES ('Sanford','SFB');
INSERT INTO City (cityName, cityId) VALUES ('Sarasota','SRQ');
INSERT INTO City (cityName, cityId) VALUES ('St. Augustine','SGJ');
INSERT INTO City (cityName, cityId) VALUES ('St. Petersburg','PIE');
INSERT INTO City (cityName, cityId) VALUES ('Tallahassee','TLH');
INSERT INTO City (cityName, cityId) VALUES ('Tampa','TPA');
INSERT INTO City (cityName, cityId) VALUES ('West Palm Beach','PBI');
INSERT INTO City (cityName, cityId) VALUES ('Albany','ABY');
INSERT INTO City (cityName, cityId) VALUES ('Atlanta','ATL');
INSERT INTO City (cityName, cityId) VALUES ('Augusta','AGS');
INSERT INTO City (cityName, cityId) VALUES ('Brunswick','BQK');
INSERT INTO City (cityName, cityId) VALUES ('Columbus','CSG');
INSERT INTO City (cityName, cityId) VALUES ('Macon','MCN');
INSERT INTO City (cityName, cityId) VALUES ('Savannah','SAV');
INSERT INTO City (cityName, cityId) VALUES ('Valdosta','VLD');
INSERT INTO City (cityName, cityId) VALUES ('Hilo','ITO');
INSERT INTO City (cityName, cityId) VALUES ('Honolulu,','HNL');
INSERT INTO City (cityName, cityId) VALUES ('Kahului','OGG');
INSERT INTO City (cityName, cityId) VALUES ('Kailua-Kona','KOA');
INSERT INTO City (cityName, cityId) VALUES ('Kaunakakai','MKK');
INSERT INTO City (cityName, cityId) VALUES ('Lanai City','LNY');
INSERT INTO City (cityName, cityId) VALUES ('Lihue','LIH');
INSERT INTO City (cityName, cityId) VALUES ('Boise','BOI');
INSERT INTO City (cityName, cityId) VALUES ('Hailey','SUN');
INSERT INTO City (cityName, cityId) VALUES ('Idaho Falls','IDA');
INSERT INTO City (cityName, cityId) VALUES ('Lewiston','LWS');
INSERT INTO City (cityName, cityId) VALUES ('Pocatello','PIH');
INSERT INTO City (cityName, cityId) VALUES ('Twin Falls','TWF');
INSERT INTO City (cityName, cityId) VALUES ('Belleville','BLV');
INSERT INTO City (cityName, cityId) VALUES ('Bloomington','BMI');
INSERT INTO City (cityName, cityId) VALUES ('Champaign','CMI');
INSERT INTO City (cityName, cityId) VALUES ('Chicago','MDW');
INSERT INTO City (cityName, cityId) VALUES ('Chicago','ORD');
INSERT INTO City (cityName, cityId) VALUES ('Marion','MWA');
INSERT INTO City (cityName, cityId) VALUES ('Moline','MLI');
INSERT INTO City (cityName, cityId) VALUES ('Peoria','PIA');
INSERT INTO City (cityName, cityId) VALUES ('Quincy','UIN');
INSERT INTO City (cityName, cityId) VALUES ('Rockford','RFD');
INSERT INTO City (cityName, cityId) VALUES ('Springfield','SPI');
INSERT INTO City (cityName, cityId) VALUES ('Evansville','EVV');
INSERT INTO City (cityName, cityId) VALUES ('Fort Wayne','FWA');
INSERT INTO City (cityName, cityId) VALUES ('Indianapolis','IND');
INSERT INTO City (cityName, cityId) VALUES ('South Bend','SBN');
INSERT INTO City (cityName, cityId) VALUES ('Cedar Rapids','CID');
INSERT INTO City (cityName, cityId) VALUES ('Des Moines','DSM');
INSERT INTO City (cityName, cityId) VALUES ('Dubuque','DBQ');
INSERT INTO City (cityName, cityId) VALUES ('Sioux City','SUX');
INSERT INTO City (cityName, cityId) VALUES ('Waterloo','ALO');
INSERT INTO City (cityName, cityId) VALUES ('Garden City','GCK');
INSERT INTO City (cityName, cityId) VALUES ('Hays','HYS');
INSERT INTO City (cityName, cityId) VALUES ('Manhattan','MHK');
INSERT INTO City (cityName, cityId) VALUES ('Salina','SLN');
INSERT INTO City (cityName, cityId) VALUES ('Wichita','ICT');
INSERT INTO City (cityName, cityId) VALUES ('Cincinnati','CVG');
INSERT INTO City (cityName, cityId) VALUES ('Lexington','LEX');
INSERT INTO City (cityName, cityId) VALUES ('Louisville','SDF');
INSERT INTO City (cityName, cityId) VALUES ('Owensboro','OWB');
INSERT INTO City (cityName, cityId) VALUES ('Paducah','PAH');
INSERT INTO City (cityName, cityId) VALUES ('Alexandria','AEX');
INSERT INTO City (cityName, cityId) VALUES ('Baton Rouge','BTR');
INSERT INTO City (cityName, cityId) VALUES ('Lafayette','LFT');
INSERT INTO City (cityName, cityId) VALUES ('Lake Charles','LCH');
INSERT INTO City (cityName, cityId) VALUES ('Monroe','MLU');
INSERT INTO City (cityName, cityId) VALUES ('New Orleans','MSY');
INSERT INTO City (cityName, cityId) VALUES ('Shreveport','SHV');
INSERT INTO City (cityName, cityId) VALUES ('Bangor','BGR');
INSERT INTO City (cityName, cityId) VALUES ('Portland','PWM');
INSERT INTO City (cityName, cityId) VALUES ('Presque Isle','PQI');
INSERT INTO City (cityName, cityId) VALUES ('Rockland','RKD');
INSERT INTO City (cityName, cityId) VALUES ('Baltimore','BWI');
INSERT INTO City (cityName, cityId) VALUES ('Hagerstown','HGR');
INSERT INTO City (cityName, cityId) VALUES ('Salisbury','SBY');
INSERT INTO City (cityName, cityId) VALUES ('Bedford','BED');
INSERT INTO City (cityName, cityId) VALUES ('Boston','BOS');
INSERT INTO City (cityName, cityId) VALUES ('Hyannis','HYA');
INSERT INTO City (cityName, cityId) VALUES ('Nantucket','ACK');
INSERT INTO City (cityName, cityId) VALUES ('Provincetown','PVC');
INSERT INTO City (cityName, cityId) VALUES ('Vineyard Haven','MVY');
INSERT INTO City (cityName, cityId) VALUES ('Worcester','ORH');
INSERT INTO City (cityName, cityId) VALUES ('Alpena','APN');
INSERT INTO City (cityName, cityId) VALUES ('Detroit','DTW');
INSERT INTO City (cityName, cityId) VALUES ('Escanaba','ESC');
INSERT INTO City (cityName, cityId) VALUES ('Flint','FNT');
INSERT INTO City (cityName, cityId) VALUES ('Grand Rapids','GRR');
INSERT INTO City (cityName, cityId) VALUES ('Houghton','CMX');
INSERT INTO City (cityName, cityId) VALUES ('Iron Mountain','IMT');
INSERT INTO City (cityName, cityId) VALUES ('Kalamazoo','AZO');
INSERT INTO City (cityName, cityId) VALUES ('Lansing','LAN');
INSERT INTO City (cityName, cityId) VALUES ('Marquette','SAW');
INSERT INTO City (cityName, cityId) VALUES ('Muskegon','MKG');
INSERT INTO City (cityName, cityId) VALUES ('Pellston','PLN');
INSERT INTO City (cityName, cityId) VALUES ('Saginaw','MBS');
INSERT INTO City (cityName, cityId) VALUES ('Sault Ste. Marie','CIU');
INSERT INTO City (cityName, cityId) VALUES ('Traverse City','TVC');
INSERT INTO City (cityName, cityId) VALUES ('Bemidji','BJI');
INSERT INTO City (cityName, cityId) VALUES ('Brainerd','BRD');
INSERT INTO City (cityName, cityId) VALUES ('Duluth','DLH');
INSERT INTO City (cityName, cityId) VALUES ('Hibbing','HIB');
INSERT INTO City (cityName, cityId) VALUES ('International Falls','INL');
INSERT INTO City (cityName, cityId) VALUES ('Minneapolis','MSP');
INSERT INTO City (cityName, cityId) VALUES ('Rochester','RST');
INSERT INTO City (cityName, cityId) VALUES ('St. Cloud','STC');
INSERT INTO City (cityName, cityId) VALUES ('Columbus','GTR');
INSERT INTO City (cityName, cityId) VALUES ('Gulfport','GPT');
INSERT INTO City (cityName, cityId) VALUES ('Jackson','JAN');
INSERT INTO City (cityName, cityId) VALUES ('Meridian','MEI');
INSERT INTO City (cityName, cityId) VALUES ('Tupelo','TUP');
INSERT INTO City (cityName, cityId) VALUES ('Columbia','COU');
INSERT INTO City (cityName, cityId) VALUES ('Joplin','JLN');
INSERT INTO City (cityName, cityId) VALUES ('Kansas City','MCI');
INSERT INTO City (cityName, cityId) VALUES ('Springfield','SGF');
INSERT INTO City (cityName, cityId) VALUES ('St. Louis','STL');
INSERT INTO City (cityName, cityId) VALUES ('Billings','BIL');
INSERT INTO City (cityName, cityId) VALUES ('Bozeman','BZN');
INSERT INTO City (cityName, cityId) VALUES ('Butte','BTM');
INSERT INTO City (cityName, cityId) VALUES ('Great Falls','GTF');
INSERT INTO City (cityName, cityId) VALUES ('Helena','HLN');
INSERT INTO City (cityName, cityId) VALUES ('Kalispell','GPI');
INSERT INTO City (cityName, cityId) VALUES ('Missoula','MSO');
INSERT INTO City (cityName, cityId) VALUES ('Sidney','SDY');
INSERT INTO City (cityName, cityId) VALUES ('West Yellowstone','WYS');
INSERT INTO City (cityName, cityId) VALUES ('Grand Island','GRI');
INSERT INTO City (cityName, cityId) VALUES ('Lincoln','LNK');
INSERT INTO City (cityName, cityId) VALUES ('North Platte','LBF');
INSERT INTO City (cityName, cityId) VALUES ('Omaha','OMA');
INSERT INTO City (cityName, cityId) VALUES ('Scottsbluff','BFF');
INSERT INTO City (cityName, cityId) VALUES ('Boulder City','BVU');
INSERT INTO City (cityName, cityId) VALUES ('Elko','EKO');
INSERT INTO City (cityName, cityId) VALUES ('Las Vegas','LAS');
INSERT INTO City (cityName, cityId) VALUES ('Reno','RNO');
INSERT INTO City (cityName, cityId) VALUES ('Lebanon','LEB');
INSERT INTO City (cityName, cityId) VALUES ('Manchester','MHT');
INSERT INTO City (cityName, cityId) VALUES ('Portsmouth','PSM');
INSERT INTO City (cityName, cityId) VALUES ('Atlantic City','ACY');
INSERT INTO City (cityName, cityId) VALUES ('New York','EWR');
INSERT INTO City (cityName, cityId) VALUES ('Trenton','TTN');
INSERT INTO City (cityName, cityId) VALUES ('Albuquerque','ABQ');
INSERT INTO City (cityName, cityId) VALUES ('Hobbs','HOB');
INSERT INTO City (cityName, cityId) VALUES ('Roswell','ROW');
INSERT INTO City (cityName, cityId) VALUES ('Santa Fe','SAF');
INSERT INTO City (cityName, cityId) VALUES ('Albany','ALB');
INSERT INTO City (cityName, cityId) VALUES ('Binghamton','BGM');
INSERT INTO City (cityName, cityId) VALUES ('Buffalo','BUF');
INSERT INTO City (cityName, cityId) VALUES ('Elmira','ELM');
INSERT INTO City (cityName, cityId) VALUES ('Islip','ISP');
INSERT INTO City (cityName, cityId) VALUES ('Ithaca','ITH');
INSERT INTO City (cityName, cityId) VALUES ('New York','JFK');
INSERT INTO City (cityName, cityId) VALUES ('New York','LGA');
INSERT INTO City (cityName, cityId) VALUES ('Newburgh','SWF');
INSERT INTO City (cityName, cityId) VALUES ('Niagara Falls','IAG');
INSERT INTO City (cityName, cityId) VALUES ('Ogdensburg','OGS');
INSERT INTO City (cityName, cityId) VALUES ('Plattsburgh','PBG');
INSERT INTO City (cityName, cityId) VALUES ('Rochester','ROC');
INSERT INTO City (cityName, cityId) VALUES ('Syracuse','SYR');
INSERT INTO City (cityName, cityId) VALUES ('Watertown','ART');
INSERT INTO City (cityName, cityId) VALUES ('White Plains','HPN');
INSERT INTO City (cityName, cityId) VALUES ('Asheville','AVL');
INSERT INTO City (cityName, cityId) VALUES ('Charlotte','CLT');
INSERT INTO City (cityName, cityId) VALUES ('Concord','JQF');
INSERT INTO City (cityName, cityId) VALUES ('Fayetteville','FAY');
INSERT INTO City (cityName, cityId) VALUES ('Greensboro','GSO');
INSERT INTO City (cityName, cityId) VALUES ('Greenville','PGV');
INSERT INTO City (cityName, cityId) VALUES ('Jacksonville','OAJ');
INSERT INTO City (cityName, cityId) VALUES ('New Bern','EWN');
INSERT INTO City (cityName, cityId) VALUES ('Raleigh','RDU');
INSERT INTO City (cityName, cityId) VALUES ('Wilmington','ILM');
INSERT INTO City (cityName, cityId) VALUES ('Bismarck','BIS');
INSERT INTO City (cityName, cityId) VALUES ('Dickinson','DIK');
INSERT INTO City (cityName, cityId) VALUES ('Fargo','FAR');
INSERT INTO City (cityName, cityId) VALUES ('Grand Forks','GFK');
INSERT INTO City (cityName, cityId) VALUES ('Jamestown','JMS');
INSERT INTO City (cityName, cityId) VALUES ('Minot','MOT');
INSERT INTO City (cityName, cityId) VALUES ('Williston','XWA');
INSERT INTO City (cityName, cityId) VALUES ('Akron','CAK');
INSERT INTO City (cityName, cityId) VALUES ('Cleveland','CLE');
INSERT INTO City (cityName, cityId) VALUES ('Columbus','CMH');
INSERT INTO City (cityName, cityId) VALUES ('Columbus','LCK');
INSERT INTO City (cityName, cityId) VALUES ('Dayton','DAY');
INSERT INTO City (cityName, cityId) VALUES ('Toledo','TOL');
INSERT INTO City (cityName, cityId) VALUES ('Lawton','LAW');
INSERT INTO City (cityName, cityId) VALUES ('Oklahoma City','OKC');
INSERT INTO City (cityName, cityId) VALUES ('Stillwater','SWO');
INSERT INTO City (cityName, cityId) VALUES ('Tulsa','TUL');
INSERT INTO City (cityName, cityId) VALUES ('Eugene','EUG');
INSERT INTO City (cityName, cityId) VALUES ('Medford','MFR');
INSERT INTO City (cityName, cityId) VALUES ('North Bend','OTH');
INSERT INTO City (cityName, cityId) VALUES ('Portland','PDX');
INSERT INTO City (cityName, cityId) VALUES ('Redmond','RDM');
INSERT INTO City (cityName, cityId) VALUES ('Allentown','ABE');
INSERT INTO City (cityName, cityId) VALUES ('Erie','ERI');
INSERT INTO City (cityName, cityId) VALUES ('Harrisburg','MDT');
INSERT INTO City (cityName, cityId) VALUES ('Latrobe','LBE');
INSERT INTO City (cityName, cityId) VALUES ('Philadelphia','PHL');
INSERT INTO City (cityName, cityId) VALUES ('Pittsburgh','PIT');
INSERT INTO City (cityName, cityId) VALUES ('State College','UNV');
INSERT INTO City (cityName, cityId) VALUES ('Wilkes-Barre','AVP');
INSERT INTO City (cityName, cityId) VALUES ('Williamsport','IPT');
INSERT INTO City (cityName, cityId) VALUES ('Block Island','BID');
INSERT INTO City (cityName, cityId) VALUES ('Providence','PVD');
INSERT INTO City (cityName, cityId) VALUES ('Westerly','WST');
INSERT INTO City (cityName, cityId) VALUES ('Charleston','CHS');
INSERT INTO City (cityName, cityId) VALUES ('Columbia','CAE');
INSERT INTO City (cityName, cityId) VALUES ('Florence','FLO');
INSERT INTO City (cityName, cityId) VALUES ('Greenville','GSP');
INSERT INTO City (cityName, cityId) VALUES ('Hilton Head','HXD');
INSERT INTO City (cityName, cityId) VALUES ('Myrtle Beach','MYR');
INSERT INTO City (cityName, cityId) VALUES ('Aberdeen','ABR');
INSERT INTO City (cityName, cityId) VALUES ('Pierre','PIR');
INSERT INTO City (cityName, cityId) VALUES ('Rapid City','RAP');
INSERT INTO City (cityName, cityId) VALUES ('Sioux Falls','FSD');
INSERT INTO City (cityName, cityId) VALUES ('Watertown','ATY');
INSERT INTO City (cityName, cityId) VALUES ('Chattanooga','CHA');
INSERT INTO City (cityName, cityId) VALUES ('Knoxville','TYS');
INSERT INTO City (cityName, cityId) VALUES ('Memphis','MEM');
INSERT INTO City (cityName, cityId) VALUES ('Nashville','BNA');
INSERT INTO City (cityName, cityId) VALUES ('Tri-Cities','TRI');
INSERT INTO City (cityName, cityId) VALUES ('Abilene','ABI');
INSERT INTO City (cityName, cityId) VALUES ('Amarillo','AMA');
INSERT INTO City (cityName, cityId) VALUES ('Austin','AUS');
INSERT INTO City (cityName, cityId) VALUES ('Beaumont','BPT');
INSERT INTO City (cityName, cityId) VALUES ('Brownsville','BRO');
INSERT INTO City (cityName, cityId) VALUES ('College Station','CLL');
INSERT INTO City (cityName, cityId) VALUES ('Corpus Christi','CRP');
INSERT INTO City (cityName, cityId) VALUES ('Dallas','DAL');
INSERT INTO City (cityName, cityId) VALUES ('Dallas','DFW');
INSERT INTO City (cityName, cityId) VALUES ('El Paso','ELP');
INSERT INTO City (cityName, cityId) VALUES ('Harlingen','HRL');
INSERT INTO City (cityName, cityId) VALUES ('Houston','IAH');
INSERT INTO City (cityName, cityId) VALUES ('Houston','HOU');
INSERT INTO City (cityName, cityId) VALUES ('Killeen','GRK');
INSERT INTO City (cityName, cityId) VALUES ('Laredo','LRD');
INSERT INTO City (cityName, cityId) VALUES ('Longview','GGG');
INSERT INTO City (cityName, cityId) VALUES ('Lubbock','LBB');
INSERT INTO City (cityName, cityId) VALUES ('McAllen','MFE');
INSERT INTO City (cityName, cityId) VALUES ('Midland','MAF');
INSERT INTO City (cityName, cityId) VALUES ('San Angelo','SJT');
INSERT INTO City (cityName, cityId) VALUES ('San Antonio','SAT');
INSERT INTO City (cityName, cityId) VALUES ('Tyler','TYR');
INSERT INTO City (cityName, cityId) VALUES ('Waco','ACT');
INSERT INTO City (cityName, cityId) VALUES ('Wichita Falls','SPS');
INSERT INTO City (cityName, cityId) VALUES ('Cedar City','CDC');
INSERT INTO City (cityName, cityId) VALUES ('Moab','CNY');
INSERT INTO City (cityName, cityId) VALUES ('Ogden','OGD');
INSERT INTO City (cityName, cityId) VALUES ('Provo','PVU');
INSERT INTO City (cityName, cityId) VALUES ('Salt Lake City','SLC');
INSERT INTO City (cityName, cityId) VALUES ('St. George','SGU');
INSERT INTO City (cityName, cityId) VALUES ('Vernal','VEL');
INSERT INTO City (cityName, cityId) VALUES ('Burlington','BTV');
INSERT INTO City (cityName, cityId) VALUES ('Charlottesville','CHO');
INSERT INTO City (cityName, cityId) VALUES ('Lynchburg','LYH');
INSERT INTO City (cityName, cityId) VALUES ('Newport News','PHF');
INSERT INTO City (cityName, cityId) VALUES ('Norfolk','ORF');
INSERT INTO City (cityName, cityId) VALUES ('Richmond','RIC');
INSERT INTO City (cityName, cityId) VALUES ('Roanoke','ROA');
INSERT INTO City (cityName, cityId) VALUES ('Staunton','SHD');
INSERT INTO City (cityName, cityId) VALUES ('Washington, D.C.','DCA');
INSERT INTO City (cityName, cityId) VALUES ('Washington, D.C.','IAD');
INSERT INTO City (cityName, cityId) VALUES ('Bellingham','BLI');
INSERT INTO City (cityName, cityId) VALUES ('Eastsound','ORS');
INSERT INTO City (cityName, cityId) VALUES ('Friday Harbor','FHR');
INSERT INTO City (cityName, cityId) VALUES ('Pasco','PSC');
INSERT INTO City (cityName, cityId) VALUES ('Pullman','PUW');
INSERT INTO City (cityName, cityId) VALUES ('Seattle','BFI');
INSERT INTO City (cityName, cityId) VALUES ('Seattle','SEA');
INSERT INTO City (cityName, cityId) VALUES ('Spokane','GEG');
INSERT INTO City (cityName, cityId) VALUES ('Walla Walla','ALW');
INSERT INTO City (cityName, cityId) VALUES ('Wenatchee','EAT');
INSERT INTO City (cityName, cityId) VALUES ('Yakima','YKM');
INSERT INTO City (cityName, cityId) VALUES ('Charleston','CRW');
INSERT INTO City (cityName, cityId) VALUES ('Clarksburg','CKB');
INSERT INTO City (cityName, cityId) VALUES ('Huntington','HTS');
INSERT INTO City (cityName, cityId) VALUES ('Lewisburg','LWB');
INSERT INTO City (cityName, cityId) VALUES ('Appleton','ATW');
INSERT INTO City (cityName, cityId) VALUES ('Eau Claire','EAU');
INSERT INTO City (cityName, cityId) VALUES ('Green Bay','GRB');
INSERT INTO City (cityName, cityId) VALUES ('La Crosse','LSE');
INSERT INTO City (cityName, cityId) VALUES ('Madison','MSN');
INSERT INTO City (cityName, cityId) VALUES ('Milwaukee','MKE');
INSERT INTO City (cityName, cityId) VALUES ('Mosinee','CWA');
INSERT INTO City (cityName, cityId) VALUES ('Rhinelander','RHI');
INSERT INTO City (cityName, cityId) VALUES ('Casper','CPR');
INSERT INTO City (cityName, cityId) VALUES ('Cody','COD');
INSERT INTO City (cityName, cityId) VALUES ('Gillette','GCC');
INSERT INTO City (cityName, cityId) VALUES ('Jackson','JAC');
INSERT INTO City (cityName, cityId) VALUES ('Laramie','LAR');
INSERT INTO City (cityName, cityId) VALUES ('Riverton','RIW');
INSERT INTO City (cityName, cityId) VALUES ('Rock Springs','RKS');
INSERT INTO City (cityName, cityId) VALUES ('Sheridan','SHR');
INSERT INTO City (cityName, cityId) VALUES ('Pago Pago','PPG');
INSERT INTO City (cityName, cityId) VALUES ('Agana','GUM');
INSERT INTO City (cityName, cityId) VALUES ('Obyan','GSN');
INSERT INTO City (cityName, cityId) VALUES ('Rota Island','GRO');
INSERT INTO City (cityName, cityId) VALUES ('Tinian Island','TNI');
INSERT INTO City (cityName, cityId) VALUES ('Aguadilla','BQN');
INSERT INTO City (cityName, cityId) VALUES ('Ceiba','RVR');
INSERT INTO City (cityName, cityId) VALUES ('Culebra','CPX');
INSERT INTO City (cityName, cityId) VALUES ('Ponce','PSE');
INSERT INTO City (cityName, cityId) VALUES ('San Juan','SJU');
INSERT INTO City (cityName, cityId) VALUES ('San Juan','SIG');
INSERT INTO City (cityName, cityId) VALUES ('Vieques','VQS');
INSERT INTO City (cityName, cityId) VALUES ('St. Thomas','STT');
INSERT INTO City (cityName, cityId) VALUES ('St. Croix','STX');
COMMIT WORK;




-- Create Airport Table

CREATE TABLE Airport(
	airportId varchar(100) primary key,
	airportName varchar(100) NOT NULL,
	city varchar(100) NOT NULL,
    FOREIGN KEY(city) REFERENCES City(cityId)
);

INSERT INTO Airport (airportId, airportName, city) VALUES ('KBHM','Birmingham–Shuttlesworth International Airport','BHM');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KDHN','Dothan Regional Airport','DHN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KHSV','Huntsville International Airport','HSV');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KMOB','Mobile Regional Airport','MOB');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KMGM','Montgomery Regional Airport','MGM');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PALH','Lake Hood Seaplane Base','LHD');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PAMR','Merrill Field','MRI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PANC','Ted Stevens Anchorage International Airport','ANC');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PANI','Aniak Airport','ANI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PABE','Bethel Airport','BET');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PACV','Merle K. (Mudhole) Smith Airport','CDV');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PASC','Deadhorse Airport','SCC');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PADL','Dillingham Airport','DLG');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PAFA','Fairbanks International Airport','FAI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PAGS','Gustavus Airport','GST');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PAHO','Homer Airport','HOM');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PAJN','Juneau International Airport','JNU');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PAEN','Kenai Municipal Airport','ENA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PAKT','Ketchikan International Airport','KTN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PAKN','King Salmon Airport','AKN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PAKW','Klawock Airport','AKW');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PADQ','Kodiak Airport','ADQ');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PAOT','Ralph Wien Memorial Airport','OTZ');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PAOM','Nome Airport','OME');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PAPG','Petersburg James A. Johnson Airport','PSG');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PASM','St. Mary''s Airport','KSM');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PASI','Sitka Rocky Gutierrez Airport','SIT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PAUN','Unalakleet Airport','UNK');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PADU','Unalaska Airport','DUT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PABR','Wiley Post–Will Rogers Memorial Airport','BRW');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PAVD','Valdez Airport','VDZ');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PAWG','Wrangell Airport','WRG');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PAYA','Yakutat Airport','YAK');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KIFP','Laughlin/Bullhead International Airport','IFP');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KFLG','Flagstaff Pulliam Airport','FLG');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KGCN','Grand Canyon National Park Airport','GCN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KIWA','Phoenix–Mesa Gateway Airport','IWA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KPGA','Page Municipal Airport','PGA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KPHX','Phoenix Sky Harbor International Airport','PHX');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KPRC','Prescott Municipal Airport','PRC');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KTUS','Tucson International Airport','TUS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KNYL','Yuma International Airport','NYL');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KXNA','Northwest Arkansas National Airport','XNA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KFSM','Fort Smith Regional Airport','FSM');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KLIT','Clinton National Airport','LIT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KTXK','Texarkana Regional Airport','TXK');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KACV','Arcata Airport','ACV');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KBFL','Meadows Field','BFL');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KBUR','Hollywood Burbank Airport','BUR');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KCCR','Buchanan Field Airport','CCR');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KFAT','Fresno Yosemite International Airport','FAT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KLGB','Long Beach Airport','LGB');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KLAX','Los Angeles International Airport','LAX');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KMMH','Mammoth Yosemite Airport','MMH');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KMRY','Monterey Regional Airport','MRY');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KOAK','Oakland International Airport','OAK');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KONT','Ontario International Airport','ONT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KSNA','John Wayne Airport','SNA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KPSP','Palm Springs International Airport','PSP');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KRDD','Redding Municipal Airport','RDD');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KSMF','Sacramento International Airport','SMF');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KSAN','San Diego International Airport','SAN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KSFO','San Francisco International Airport','SFO');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KSJC','Norman Y. Mineta San José International Airport','SJC');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KSBP','San Luis Obispo County Regional Airport','SBP');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KSBA','Santa Barbara Municipal Airport','SBA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KSMX','Santa Maria Public Airport','SMX');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KSTS','Charles M. Schulz–Sonoma County Airport','STS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KSCK','Stockton Metropolitan Airport','SCK');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KASE','Aspen/Pitkin County Airport','ASE');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KCOS','City of Colorado Springs Municipal Airport','COS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KDEN','Denver International Airport','DEN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KDRO','Durango–La Plata County Airport','DRO');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KEGE','Eagle County Regional Airport','EGE');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KGJT','Grand Junction Regional Airport','GJT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KGUC','Gunnison–Crested Butte Regional Airport','GUC');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KHDN','Yampa Valley Airport','HDN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KMTJ','Montrose Regional Airport','MTJ');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KPUB','Pueblo Memorial Airport','PUB');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KBDL','Bradley International Airport','BDL');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KHVN','Tweed-New Haven Airport','HVN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KDAB','Daytona Beach International Airport','DAB');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KFLL','Fort Lauderdale–Hollywood International Airport','FLL');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KRSW','Southwest Florida International Airport','RSW');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KVPS','Destin–Fort Walton Beach Airport','VPS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KGNV','Gainesville Regional Airport','GNV');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KJAX','Jacksonville International Airport','JAX');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KEYW','Key West International Airport','EYW');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KMLB','Melbourne Orlando International Airport','MLB');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KMIA','Miami International Airport','MIA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KMCO','Orlando International Airport','MCO');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KECP','Northwest Florida Beaches International Airport','ECP');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KPNS','Pensacola International Airport','PNS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KPGD','Punta Gorda Airport','PGD');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KSFB','Orlando Sanford International Airport','SFB');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KSRQ','Sarasota–Bradenton International Airport','SRQ');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KSGJ','Northeast Florida Regional Airport','SGJ');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KPIE','St. Pete–Clearwater International Airport','PIE');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KTLH','Tallahassee International Airport','TLH');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KTPA','Tampa International Airport','TPA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KPBI','Palm Beach International Airport','PBI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KABY','Southwest Georgia Regional Airport','ABY');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KATL','Hartsfield–Jackson Atlanta International Airport','ATL');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KAGS','Augusta Regional Airport','AGS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KBQK','Brunswick Golden Isles Airport','BQK');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KCSG','Columbus Airport','CSG');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KMCN','Middle Georgia Regional Airport','MCN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KSAV','Savannah/Hilton Head International Airport','SAV');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KVLD','Valdosta Regional Airport','VLD');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PHTO','Hilo International Airport','ITO');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PHNL','Daniel K. Inouye International Airport','HNL');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PHOG','Kahului Airport','OGG');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PHKO','Ellison Onizuka Kona International Airport at Keahole','KOA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PHMK','Molokai Airport','MKK');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PHNY','Lanai Airport','LNY');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PHLI','Lihue Airport','LIH');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KBOI','Boise Airport','BOI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KSUN','Friedman Memorial Airport','SUN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KIDA','Idaho Falls Regional Airport','IDA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KLWS','Lewiston–Nez Perce County Airport','LWS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KPIH','Pocatello Regional Airport','PIH');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KTWF','Magic Valley Regional Airport','TWF');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KBLV','MidAmerica St. Louis Airport ','BLV');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KBMI','Central Illinois Regional Airport at Bloomington-Normal','BMI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KCMI','University of Illinois - Willard Airport','CMI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KMDW','Chicago Midway International Airport','MDW');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KORD','Chicago O''Hare International Airport','ORD');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KMWA','Veterans Airport of Southern Illinois','MWA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KMLI','Quad City International Airport','MLI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KPIA','General Downing-Peoria International Airport','PIA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KUIN','Quincy Regional Airport','UIN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KRFD','Chicago Rockford International Airport','RFD');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KSPI','Abraham Lincoln Capital Airport','SPI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KEVV','Evansville Regional Airport','EVV');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KFWA','Fort Wayne International Airport','FWA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KIND','Indianapolis International Airport','IND');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KSBN','South Bend International Airport','SBN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KCID','The Eastern Iowa Airport','CID');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KDSM','Des Moines International Airport','DSM');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KDBQ','Dubuque Regional Airport','DBQ');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KSUX','Sioux Gateway Airport','SUX');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KALO','Waterloo Regional Airport','ALO');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KGCK','Garden City Regional Airport','GCK');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KHYS','Hays Regional Airport','HYS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KMHK','Manhattan Regional Airport','MHK');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KSLN','Salina Regional Airport','SLN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KICT','Wichita Dwight D. Eisenhower National Airport','ICT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KCVG','Cincinnati/Northern Kentucky International Airport','CVG');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KLEX','Blue Grass Airport','LEX');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KSDF','Louisville International Airport','SDF');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KOWB','Owensboro–Daviess County Regional Airport','OWB');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KPAH','Barkley Regional Airport','PAH');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KAEX','Alexandria International Airport','AEX');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KBTR','Baton Rouge Metropolitan Airport','BTR');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KLFT','Lafayette Regional Airport','LFT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KLCH','Lake Charles Regional Airport','LCH');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KMLU','Monroe Regional Airport','MLU');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KMSY','Louis Armstrong New Orleans International Airport','MSY');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KSHV','Shreveport Regional Airport','SHV');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KBGR','Bangor International Airport','BGR');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KPWM','Portland International Jetport','PWM');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KPQI','Presque Isle International Airport','PQI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KRKD','Knox County Regional Airport','RKD');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KBWI','Baltimore/Washington International Airport','BWI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KHGR','Hagerstown Regional Airport','HGR');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KSBY','Salisbury–Ocean City–Wicomico Regional Airport','SBY');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KBED','Hanscom Field','BED');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KBOS','Gen. Edward Lawrence Logan International Airport','BOS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KHYA','Barnstable Municipal Airport','HYA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KACK','Nantucket Memorial Airport','ACK');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KPVC','Provincetown Municipal Airport','PVC');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KMVY','Martha''s Vineyard Airport','MVY');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KORH','Worcester Regional Airport','ORH');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KAPN','Alpena County Regional Airport','APN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KDTW','Detroit Metropolitan Airport','DTW');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KESC','Delta County Airport','ESC');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KFNT','Bishop International Airport','FNT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KGRR','Gerald R. Ford International Airport','GRR');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KCMX','Houghton County Memorial Airport','CMX');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KIMT','Ford Airport','IMT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KAZO','Kalamazoo/Battle Creek International Airport','AZO');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KLAN','Capital Region International Airport','LAN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KSAW','Sawyer International Airport','SAW');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KMKG','Muskegon County Airport','MKG');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KPLN','Pellston Regional Airport','PLN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KMBS','MBS International Airport','MBS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KCIU','Chippewa County International Airport','CIU');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KTVC','Cherry Capital Airport','TVC');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KBJI','Bemidji Regional Airport','BJI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KBRD','Brainerd Lakes Regional Airport','BRD');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KDLH','Duluth International Airport','DLH');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KHIB','Range Regional Airport','HIB');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KINL','Falls International Airport','INL');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KMSP','Minneapolis–St. Paul International Airport','MSP');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KRST','Rochester International Airport','RST');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KSTC','St. Cloud Regional Airport','STC');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KGTR','Golden Triangle Regional Airport','GTR');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KGPT','Gulfport–Biloxi International Airport','GPT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KJAN','Jackson–Medgar Wiley Evers International Airport','JAN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KMEI','Meridian Regional Airport','MEI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KTUP','Tupelo Regional Airport','TUP');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KCOU','Columbia Regional Airport','COU');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KJLN','Joplin Regional Airport','JLN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KMCI','Kansas City International Airport','MCI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KSGF','Springfield–Branson National Airport','SGF');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KSTL','St. Louis Lambert International Airport','STL');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KBIL','Billings Logan International Airport','BIL');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KBZN','Bozeman Yellowstone International Airport','BZN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KBTM','Bert Mooney Airport','BTM');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KGTF','Great Falls International Airport','GTF');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KHLN','Helena Regional Airport','HLN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KGPI','Glacier Park International Airport','GPI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KMSO','Missoula International Airport','MSO');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KSDY','Sidney–Richland Municipal Airport','SDY');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KWYS','Yellowstone Airport','WYS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KGRI','Central Nebraska Regional Airport','GRI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KLNK','Lincoln Airport','LNK');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KLBF','North Platte Regional Airport','LBF');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KOMA','Eppley Airfield','OMA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KBFF','Western Nebraska Regional Airport','BFF');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KBVU','Boulder City Municipal Airport','BVU');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KEKO','Elko Regional Airport','EKO');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KLAS','McCarran International Airport','LAS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KRNO','Reno/Tahoe International Airport','RNO');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KLEB','Lebanon Municipal Airport','LEB');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KMHT','Manchester–Boston Regional Airport','MHT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KPSM','Portsmouth International Airport at Pease','PSM');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KACY','Atlantic City International Airport','ACY');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KEWR','Newark Liberty International Airport','EWR');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KTTN','Trenton Mercer Airport','TTN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KABQ','Albuquerque International Sunport','ABQ');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KHOB','Lea County Regional Airport','HOB');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KROW','Roswell International Air Center','ROW');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KSAF','Santa Fe Regional Airport','SAF');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KALB','Albany International Airport','ALB');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KBGM','Greater Binghamton Airport ','BGM');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KBUF','Buffalo Niagara International Airport','BUF');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KELM','Elmira/Corning Regional Airport','ELM');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KISP','Long Island MacArthur Airport','ISP');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KITH','Ithaca Tompkins International Airport','ITH');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KJFK','John F. Kennedy International Airport','JFK');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KLGA','LaGuardia Airport','LGA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('kSWF','Stewart International Airport','SWF');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KIAG','Niagara Falls International Airport','IAG');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KOGS','Ogdensburg International Airport','OGS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KPBG','Plattsburgh International Airport','PBG');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KROC','Greater Rochester International Airport','ROC');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KSYR','Syracuse Hancock International Airport','SYR');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KART','Watertown International Airport','ART');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KHPN','Westchester County Airport','HPN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KAVL','Asheville Regional Airport','AVL');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KCLT','Charlotte/Douglas International Airport','CLT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KJQF','Concord Regional Airport','JQF');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KFAY','Fayetteville Regional Airport','FAY');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KGSO','Piedmont Triad International Airport','GSO');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KPGV','Pitt–Greenville Airport','PGV');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KOAJ','Albert J. Ellis Airport','OAJ');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KEWN','Coastal Carolina Regional Airport','EWN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KRDU','Raleigh–Durham International Airport','RDU');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KILM','Wilmington International Airport','ILM');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KBIS','Bismarck Municipal Airport','BIS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KDIK','Dickinson Theodore Roosevelt Regional Airport','DIK');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KFAR','Hector International Airport','FAR');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KGFK','Grand Forks International Airport','GFK');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KJMS','Jamestown Regional Airport','JMS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KMOT','Minot International Airport','MOT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KXWA','Williston Basin International Airport','XWA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KCAK','Akron–Canton Airport','CAK');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KCLE','Cleveland Hopkins International Airport','CLE');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KCMH','John Glenn Columbus International Airport','CMH');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KLCK','Rickenbacker International Airport','LCK');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KDAY','James M. Cox Dayton International Airport','DAY');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KTOL','Toledo Express Airport','TOL');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KLAW','Lawton–Fort Sill Regional Airport','LAW');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KOKC','Will Rogers World Airport','OKC');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KSWO','Stillwater Regional Airport','SWO');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KTUL','Tulsa International Airport','TUL');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KEUG','Eugene Airport','EUG');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KMFR','Rogue Valley International–Medford Airport','MFR');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KOTH','Southwest Oregon Regional Airport ','OTH');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KPDX','Portland International Airport','PDX');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KRDM','Redmond Municipal Airport ','RDM');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KABE','Lehigh Valley International Airport','ABE');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KERI','Erie International Airport','ERI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KMDT','Harrisburg International Airport','MDT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KLBE','Arnold Palmer Regional Airport','LBE');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KPHL','Philadelphia International Airport','PHL');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KPIT','Pittsburgh International Airport','PIT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KUNV','University Park Airport','UNV');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KAVP','Wilkes-Barre/Scranton International Airport','AVP');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KIPT','Williamsport Regional Airport','IPT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KBID','Block Island State Airport','BID');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KPVD','Theodore Francis Green State Airport','PVD');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KWST','Westerly State Airport','WST');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KCHS','Charleston International Airport','CHS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KCAE','Columbia Metropolitan Airport','CAE');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KFLO','Florence Regional Airport','FLO');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KGSP','Greenville–Spartanburg International Airport','GSP');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KHXD','Hilton Head Airport','HXD');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KMYR','Myrtle Beach International Airport','MYR');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KABR','Aberdeen Regional Airport','ABR');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KPIR','Pierre Regional Airport','PIR');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KRAP','Rapid City Regional Airport','RAP');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KFSD','Sioux Falls Regional Airport','FSD');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KATY','Watertown Regional Airport','ATY');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KCHA','Chattanooga Metropolitan Airport','CHA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KTYS','McGhee Tyson Airport','TYS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KMEM','Memphis International Airport','MEM');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KBNA','Nashville International Airport','BNA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KTRI','Tri-Cities Regional Airport','TRI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KABI','Abilene Regional Airport','ABI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KAMA','Rick Husband Amarillo International Airport','AMA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KAUS','Austin–Bergstrom International Airport','AUS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KBPT','Jack Brooks Regional Airport','BPT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KBRO','Brownsville/South Padre Island International Airport','BRO');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KCLL','Easterwood Airport','CLL');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KCRP','Corpus Christi International Airport','CRP');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KDAL','Dallas Love Field','DAL');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KDFW','Dallas/Fort Worth International Airport','DFW');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KELP','El Paso International Airport','ELP');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KHRL','Valley International Airport','HRL');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KIAH','George Bush Intercontinental Airport','IAH');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KHOU','William P. Hobby Airport','HOU');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KGRK','Killeen–Fort Hood Regional Airport','GRK');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KLRD','Laredo International Airport','LRD');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KGGG','East Texas Regional Airport','GGG');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KLBB','Lubbock Preston Smith International Airport','LBB');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KMFE','McAllen Miller International Airport','MFE');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KMAF','Midland International Air and Space Port','MAF');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KSJT','San Angelo Regional Airport','SJT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KSAT','San Antonio International Airport','SAT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KTYR','Tyler Pounds Regional Airport','TYR');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KACT','Waco Regional Airport','ACT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KSPS','Wichita Falls Regional Airport','SPS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KCDC','Cedar City Regional Airport','CDC');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KCNY','Canyonlands Field','CNY');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KOGD','Ogden-Hinckley Airport','OGD');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KPVU','Provo Municipal Airport','PVU');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KSLC','Salt Lake City International Airport','SLC');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KSGU','St. George Regional Airport','SGU');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KVEL','Vernal Regional Airport','VEL');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KBTV','Burlington International Airport','BTV');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KCHO','Charlottesville–Albemarle Airport','CHO');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KLYH','Lynchburg Regional Airport','LYH');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KPHF','Newport News/Williamsburg International Airport','PHF');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KORF','Norfolk International Airport','ORF');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KRIC','Richmond International Airport','RIC');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KROA','Roanoke–Blacksburg Regional Airport','ROA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KSHD','Shenandoah Valley Regional Airport','SHD');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KDCA','Ronald Reagan Washington National Airport','DCA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KIAD','Washington Dulles International Airport','IAD');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KBLI','Bellingham International Airport','BLI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KORS','Orcas Island Airport','ORS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KFHR','Friday Harbor Airport','FHR');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KPSC','Tri-Cities Airport','PSC');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KPUW','Pullman–Moscow Regional Airport','PUW');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KBFI','King County International Airport','BFI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KSEA','Seattle–Tacoma International Airport','SEA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KGEG','Spokane International Airport','GEG');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KALW','Walla Walla Regional Airport','ALW');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KEAT','Pangborn Memorial Airport','EAT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KYKM','Yakima Air Terminal','YKM');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KCRW','Yeager Airport','CRW');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KCKB','North Central West Virginia Airport','CKB');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KHTS','Tri-State Airport','HTS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KLWB','Greenbrier Valley Airport','LWB');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KATW','Appleton International Airport','ATW');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KEAU','Chippewa Valley Regional Airport','EAU');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KGRB','Green Bay–Austin Straubel International Airport','GRB');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KLSE','La Crosse Regional Airport','LSE');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KMSN','Dane County Regional Airport','MSN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KMKE','Milwaukee Mitchell International Airport','MKE');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KCWA','Central Wisconsin Airport','CWA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KRHI','Rhinelander–Oneida County Airport','RHI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KCPR','Casper–Natrona County International Airport','CPR');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KCOD','Yellowstone Regional Airport','COD');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KGCC','Gillette–Campbell County Airport','GCC');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KJAC','Jackson Hole Airport','JAC');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KLAR','Laramie Regional Airport','LAR');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KRIW','Central Wyoming Regional Airport','RIW');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KRKS','Southwest Wyoming Regional Airport','RKS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KSHR','Sheridan County Airport','SHR');
INSERT INTO Airport (airportId, airportName, city) VALUES ('NSTU','Pago Pago International Airport','PPG');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PGUM','Antonio B. Won Pat International Airport','GUM');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PGSN','Saipan International Airport','GSN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PGRO','Rota International Airport','GRO');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PGWT','Tinian International Airport','TNI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('TJBQ','Rafael Hernández International Airport','BQN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('TJRV','José Aponte de la Torre Airport','RVR');
INSERT INTO Airport (airportId, airportName, city) VALUES ('TJCP','Benjamín Rivera Noriega Airport','CPX');
INSERT INTO Airport (airportId, airportName, city) VALUES ('TJPS','Mercedita International Airport','PSE');
INSERT INTO Airport (airportId, airportName, city) VALUES ('TJSJ','Luis Muñoz Marín International Airport','SJU');
INSERT INTO Airport (airportId, airportName, city) VALUES ('TJIG','Fernando Luis Ribas Dominicci Airport','SIG');
INSERT INTO Airport (airportId, airportName, city) VALUES ('TJVQ','Antonio Rivera Rodríguez Airport','VQS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('TIST','Cyril E. King Airport','STT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('TISX','Henry E. Rohlsen Airport','STX');
COMMIT WORK;




-- Create Flight Table

CREATE TABLE Flight(
	flightId varchar(100) primary key,
	flightName varchar(100) NOT NULL,
	airlineName varchar(100) NOT NULL
);

INSERT INTO Flight (flightId, flightName, airlineName) VALUES ('UAL1039','United 1039','United Airlines');
INSERT INTO Flight (flightId, flightName, airlineName) VALUES ('SWA1021','Southwest 1021','Southwest Airlines');
INSERT INTO Flight (flightId, flightName, airlineName) VALUES ('JBU1374','JetBlue 1374','JetBlue');
INSERT INTO Flight (flightId, flightName, airlineName) VALUES ('ASA1137','Alaska Airlines 1137','Alaska Airlines');
INSERT INTO Flight (flightId, flightName, airlineName) VALUES ('AAL1003','American Airlines 1003','American Airlines');
INSERT INTO Flight (flightId, flightName, airlineName) VALUES ('DAL1032','Delta 1032','Delta Air Lines');
INSERT INTO Flight (flightId, flightName, airlineName) VALUES ('FFT1511','Frontier 1511','Frontier Airlines');
INSERT INTO Flight (flightId, flightName, airlineName) VALUES ('FFT1513','Frontier 1513','Frontier Airlines');
INSERT INTO Flight (flightId, flightName, airlineName) VALUES ('JBU1258','JetBlue 1258','JetBlue');
INSERT INTO Flight (flightId, flightName, airlineName) VALUES ('AAL1138','American Airlines 1138','American Airlines');
INSERT INTO Flight (flightId, flightName, airlineName) VALUES ('DAL1085','Delta 1085','Delta Air Lines');
COMMIT WORK;


-- Create Schedule Table
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

INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, scheduledtime, returnDate, flightId) VALUES ('1','KLAX','KSFO','142', DATE'2021-08-29', TIMESTAMP '2021-08-29 15:15:00', DATE'2021-08-30', 'UAL1039');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, scheduledtime, returnDate, flightId) VALUES ('2','TISX','KHTS','155', DATE'2021-07-22', TIMESTAMP '2021-07-22 09:05:00', DATE'2021-07-25', 'JBU1374');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, scheduledtime, returnDate, flightId) VALUES ('3','KLYH','KIAH','147', DATE'2021-09-25', TIMESTAMP '2021-09-25 18:33:00', DATE'2021-09-27', 'DAL1032');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, scheduledtime, returnDate, flightId) VALUES ('4','KTYS','KCDC','142', DATE'2021-08-05', TIMESTAMP '2021-08-05 12:38:00', DATE'2021-08-09','ASA1137');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, scheduledtime, returnDate, flightId) VALUES ('5','KPDX','KMOT','145', DATE'2021-07-31', TIMESTAMP '2021-07-31 22:15:00', DATE'2021-08-02', 'FFT1511');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, scheduledtime, returnDate, flightId) VALUES ('6','KIAG','KLAS','146', DATE'2021-08-23', TIMESTAMP '2021-08-23 15:55:00', DATE'2021-08-25', 'SWA1021');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, scheduledtime, returnDate, flightId) VALUES ('7','KIAG','KLAS','154', DATE'2021-09-22', TIMESTAMP '2021-09-22 15:32:00', DATE'2021-09-25', 'FFT1513');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, scheduledtime, returnDate, flightId) VALUES ('8','KMEI','KSTC','147', DATE'2021-09-25', TIMESTAMP '2021-09-25 10:26:00', DATE'2021-09-30', 'JBU1258');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, scheduledtime, returnDate, flightId) VALUES ('9','KAPN','KSBY','142', DATE'2021-08-15', TIMESTAMP '2021-08-15 18:33:00', DATE'2021-08-19', 'AAL1138');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, scheduledtime, returnDate, flightId) VALUES ('10','KLAX','PAVD','145', DATE'2021-08-29', TIMESTAMP '2021-08-29 22:15:00', DATE'2021-08-31', 'DAL1085');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, scheduledtime, returnDate, flightId) VALUES ('11','KPRC','KSFO','142', DATE'2021-07-29', TIMESTAMP '2021-07-29 18:17:00', DATE'2021-08-01', 'UAL1039');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, scheduledtime, returnDate, flightId) VALUES ('12','PANI','KBHM','154', DATE'2021-07-23', TIMESTAMP '2021-07-23 09:45:00', DATE'2021-07-26', 'JBU1374');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, scheduledtime, returnDate, flightId) VALUES ('13','PAMR','PAOT','147', DATE'2021-08-25', TIMESTAMP '2021-08-25 14:32:00', DATE'2021-08-29', 'DAL1032');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, scheduledtime, returnDate, flightId) VALUES ('14','KFSM','KLGB','144', DATE'2021-07-05', TIMESTAMP '2021-07-05 09:36:00', DATE'2021-07-09', 'ASA1137');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, scheduledtime, returnDate, flightId) VALUES ('15','KGUC','KDAB','149', DATE'2021-09-30', TIMESTAMP '2021-09-30 11:15:00', DATE'2021-10-02', 'FFT1511');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, scheduledtime, returnDate, flightId) VALUES ('16','KJAX','KSAV','152', DATE'2021-08-15', TIMESTAMP '2021-08-15 19:55:00', DATE'2021-08-16', 'SWA1021');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, scheduledtime, returnDate, flightId) VALUES ('17','KSUN','KPIA','156', DATE'2021-09-03', TIMESTAMP '2021-09-03 17:32:00', DATE'2021-09-05', 'FFT1513');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, scheduledtime, returnDate, flightId) VALUES ('18','KCID','KLEX','157', DATE'2021-07-14', TIMESTAMP '2021-07-14 14:56:00', DATE'2021-07-16', 'JBU1258');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, scheduledtime, returnDate, flightId) VALUES ('19','KLCH','KPVC','142', DATE'2021-08-15', TIMESTAMP '2021-08-15 10:43:00', DATE'2021-08-17', 'AAL1138');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, scheduledtime, returnDate, flightId) VALUES ('20','KLAX','KIMT','147', DATE'2021-08-24', TIMESTAMP '2021-08-24 17:22:00', DATE'2021-08-26', 'DAL1085');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, scheduledtime, returnDate, flightId) VALUES ('21','KMEI','KHLN','148', DATE'2021-08-28', TIMESTAMP '2021-08-28 13:45:00', DATE'2021-08-30', 'UAL1039');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, scheduledtime, returnDate, flightId) VALUES ('22','TISX','KACY','155', DATE'2021-08-08', TIMESTAMP '2021-08-08 09:10:00', DATE'2021-08-11', 'JBU1374');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, scheduledtime, returnDate, flightId) VALUES ('23','KELM','KIAH','147', DATE'2021-09-04', TIMESTAMP '2021-09-04 10:25:00', DATE'2021-09-06', 'DAL1032');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, scheduledtime, returnDate, flightId) VALUES ('24','KPGV','KCDC','149', DATE'2021-07-13', TIMESTAMP '2021-07-13 19:38:00', DATE'2021-07-15', 'ASA1137');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, scheduledtime, returnDate, flightId) VALUES ('25','KTOL','KMOT','150', DATE'2021-07-26', TIMESTAMP '2021-07-26 20:17:00', DATE'2021-07-28', 'FFT1511');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, scheduledtime, returnDate, flightId) VALUES ('26','KIAG','KLAS','146', DATE'2021-08-23', TIMESTAMP '2021-08-23 23:22:00', DATE'2021-08-25', 'SWA1021');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, scheduledtime, returnDate, flightId) VALUES ('27','KPDX','KAPN','156', DATE'2021-09-06', TIMESTAMP '2021-09-06 19:55:00', DATE'2021-09-18', 'FFT1513');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, scheduledtime, returnDate, flightId) VALUES ('28','KMEI','KCDC','147', DATE'2021-09-19', TIMESTAMP '2021-09-19 10:26:00', DATE'2021-09-22', 'JBU1258');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, scheduledtime, returnDate, flightId) VALUES ('29','TJRV','KSTC','142', DATE'2021-08-23', TIMESTAMP '2021-08-23 22:43:00', DATE'2021-08-25', 'AAL1138');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, scheduledtime, returnDate, flightId) VALUES ('30','KLAX','KSFO','145', DATE'2021-09-28', TIMESTAMP '2021-09-28 22:15:00', DATE'2021-09-30', 'DAL1085');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, scheduledtime, returnDate, flightId) VALUES ('31','KLAX','KFLO','142', DATE'2021-09-04', TIMESTAMP '2021-09-04 17:15:00', DATE'2021-09-06', 'UAL1039');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, scheduledtime, returnDate, flightId) VALUES ('32','TISX','KJMS','155', DATE'2021-08-29', TIMESTAMP '2021-08-29 09:35:00', DATE'2021-09-01', 'JBU1374');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, scheduledtime, returnDate, flightId) VALUES ('33','KLYH','KPDX','147', DATE'2021-08-05', TIMESTAMP '2021-08-05 12:33:00', DATE'2021-08-07', 'DAL1032');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, scheduledtime, returnDate, flightId) VALUES ('34','KTYS','KCDC','142', DATE'2021-07-29', TIMESTAMP '2021-07-29 19:49:00', DATE'2021-07-31', 'ASA1137');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, scheduledtime, returnDate, flightId) VALUES ('35','KPDX','KMOT','145', DATE'2021-07-31', TIMESTAMP '2021-07-31 02:15:00', DATE'2021-08-02', 'FFT1511');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, scheduledtime, returnDate, flightId) VALUES ('36','KIAG','TJPS','146', DATE'2021-09-03', TIMESTAMP '2021-09-03 06:45:00', DATE'2021-09-05', 'SWA1021');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, scheduledtime, returnDate, flightId) VALUES ('37','KSTC','KBNA','154', DATE'2021-09-16', TIMESTAMP '2021-09-16 07:42:00', DATE'2021-09-18', 'FFT1513');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, scheduledtime, returnDate, flightId) VALUES ('38','KHXD','KIAG','147', DATE'2021-09-13', TIMESTAMP '2021-09-13 11:56:00', DATE'2021-09-15', 'JBU1258');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, scheduledtime, returnDate, flightId) VALUES ('39','KAPN','TJCP','142', DATE'2021-08-05', TIMESTAMP '2021-08-05 04:24:00', DATE'2021-08-07', 'AAL1138');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, scheduledtime, returnDate, flightId) VALUES ('40','KACT','KSFO','145', DATE'2021-08-21', TIMESTAMP '2021-08-21 18:38:00', DATE'2021-08-23', 'DAL1085');
COMMIT WORK;

-- Create Booking Table

CREATE TABLE Booking(
	bookingId varchar(100) primary key,
	userId int NOT NULL,
	scheduleId varchar(100) NOT NULL,
    bookingDate date NOT NULL,
    seatNumber varchar(10) NOT NULL,
    FOREIGN KEY(userId) REFERENCES Users(userId),
    FOREIGN KEY(scheduleId) REFERENCES Schedules(scheduleId)
);


INSERT INTO Booking (bookingId, userId, scheduleId, bookingDate, seatNumber) VALUES ('1','9','4', TO_DATE('07/12/2021', 'MM/DD/YYYY'),'53');
INSERT INTO Booking (bookingId, userId, scheduleId, bookingDate, seatNumber) VALUES ('2','2','2', TO_DATE('07/12/2021', 'MM/DD/YYYY'),'88');
INSERT INTO Booking (bookingId, userId, scheduleId, bookingDate, seatNumber) VALUES ('3','5','2', TO_DATE('07/16/2021', 'MM/DD/YYYY'), '97');
INSERT INTO Booking (bookingId, userId, scheduleId, bookingDate, seatNumber) VALUES ('4','6','5', TO_DATE('07/06/2021', 'MM/DD/YYYY'),'125');
INSERT INTO Booking (bookingId, userId, scheduleId, bookingDate, seatNumber) VALUES ('5','1','7', TO_DATE('08/23/2021', 'MM/DD/YYYY'),'132');
COMMIT WORK;

-- Create Payment Table

CREATE TABLE Payment(
	paymentId varchar(100) primary key,
	paymentMode varchar(100) NOT NULL,
	amount varchar(100) NOT NULL,
    bookingId varchar(100) NOT NULL,
    FOREIGN KEY(bookingId) REFERENCES Booking(bookingId)
);



INSERT INTO Payment (paymentId, paymentMode, amount,  bookingId) VALUES ('1','Credit Card','152','1');
INSERT INTO Payment (paymentId, paymentMode, amount,  bookingId) VALUES ('2','Credit Card','98','2');
INSERT INTO Payment (paymentId, paymentMode, amount,  bookingId) VALUES ('3','Credit Card','155','3');
INSERT INTO Payment (paymentId, paymentMode, amount,  bookingId) VALUES ('4','Credit Card','169','4');
INSERT INTO Payment (paymentId, paymentMode, amount,  bookingId) VALUES ('5','Credit Card','178','5');
COMMIT WORK;