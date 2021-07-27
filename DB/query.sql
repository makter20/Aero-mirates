create database flightmanagement;
use flightmanagement;

-- Create Users Table

CREATE TABLE Users(
	userId varchar(100) primary key,
    fname	varchar(100) NOT NULL,
    lname	varchar(100) NOT NULL,
    phoneNumber	varchar(100) NOT NULL,
    emailId	varchar(100) NOT NULL,
    DOB		Date NOT NULL

);

INSERT INTO Users (userId, fname, lname, phoneNumber, emailId, DOB) VALUES ('1','Henry','Aguayo','516-535-5422','HenryRAguayo@dayrep.com', TO_DATE('10/15/1998', 'MM/DD/YYYY'));
INSERT INTO Users (userId, fname, lname, phoneNumber, emailId, DOB) VALUES ('2','Douglas','Barker','
660-265-2267','DouglasEBarker@jourrapide.com', TO_DATE('05/18/1995', 'MM/DD/YYYY'));
INSERT INTO Users (userId, fname, lname, phoneNumber, emailId, DOB) VALUES ('3','Lamar','Harrigan','781-642-4313','LamarJHarrigan@jourrapide.com', TO_DATE('04/25/2001', 'MM/DD/YYYY'));
INSERT INTO Users (userId, fname, lname, phoneNumber, emailId, DOB) VALUES ('4','Bruce','Wilson','401-444-2462','
BruceVWilson@jourrapide.com', TO_DATE('05/14/1985', 'MM/DD/YYYY'));
INSERT INTO Users (userId, fname, lname, phoneNumber, emailId, DOB) VALUES ('5','Eliza','Medina','817-377-9883','
ElizaBMedina@dayrep.com', TO_DATE('07/22/1997', 'MM/DD/YYYY'));
INSERT INTO Users (userId, fname, lname, phoneNumber, emailId, DOB) VALUES ('6','Pamela','Silverman','406-443-0510','PamelaDSilverman@armyspy.com', TO_DATE('05/07/1991', 'MM/DD/YYYY'));
INSERT INTO Users (userId, fname, lname, phoneNumber, emailId, DOB) VALUES ('7','Sandra','Toro','209-423-0756','
SandraBToro@teleworm.us', TO_DATE('02/03/1993', 'MM/DD/YYYY'));
INSERT INTO Users (userId, fname, lname, phoneNumber, emailId, DOB) VALUES ('8','Stewart','Bremer','440-679-9275','StewartMBremer@armyspy.com', TO_DATE('08/12/1989', 'MM/DD/YYYY'));
INSERT INTO Users (userId, fname, lname, phoneNumber, emailId, DOB) VALUES ('9','Erin','Vessels','703-337-8735','ErinCVessels@jourrapide.com', TO_DATE('06/20/1995', 'MM/DD/YYYY'));
INSERT INTO Users (userId, fname, lname, phoneNumber, emailId, DOB) VALUES ('10','Cynthia','Guthridge','618-830-2032','CynthiaMGuthridge@armyspy.com', TO_DATE('07/28/1975', 'MM/DD/YYYY'));




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





-- Create Airport Table

CREATE TABLE Airport(
	airportId varchar(100) primary key,
	airportName varchar(100) NOT NULL,
	city varchar(100) NOT NULL,
    FOREIGN KEY(city) REFERENCES City(cityId)
);

INSERT INTO Airport (airportId, airportName, city) VALUES ('BHM','Birmingham–Shuttlesworth International Airport','BHM');
INSERT INTO Airport (airportId, airportName, city) VALUES ('DHN','Dothan Regional Airport','DHN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('HSV','Huntsville International Airport','HSV');
INSERT INTO Airport (airportId, airportName, city) VALUES ('MOB','Mobile Regional Airport','MOB');
INSERT INTO Airport (airportId, airportName, city) VALUES ('MGM','Montgomery Regional Airport','MGM');
INSERT INTO Airport (airportId, airportName, city) VALUES ('LHD','Lake Hood Seaplane Base','LHD');
INSERT INTO Airport (airportId, airportName, city) VALUES ('MRI','Merrill Field','MRI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('ANC','Ted Stevens Anchorage International Airport','ANC');
INSERT INTO Airport (airportId, airportName, city) VALUES ('ANI','Aniak Airport','ANI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('BET','Bethel Airport','BET');
INSERT INTO Airport (airportId, airportName, city) VALUES ('CDV','Merle K. (Mudhole) Smith Airport','CDV');
INSERT INTO Airport (airportId, airportName, city) VALUES ('SCC','Deadhorse Airport','SCC');
INSERT INTO Airport (airportId, airportName, city) VALUES ('DLG','Dillingham Airport','DLG');
INSERT INTO Airport (airportId, airportName, city) VALUES ('FAI','Fairbanks International Airport','FAI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('GST','Gustavus Airport','GST');
INSERT INTO Airport (airportId, airportName, city) VALUES ('HOM','Homer Airport','HOM');
INSERT INTO Airport (airportId, airportName, city) VALUES ('JNU','Juneau International Airport','JNU');
INSERT INTO Airport (airportId, airportName, city) VALUES ('ENA','Kenai Municipal Airport','ENA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KTN','Ketchikan International Airport','KTN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('AKN','King Salmon Airport','AKN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KLW','Klawock Airport','AKW');
INSERT INTO Airport (airportId, airportName, city) VALUES ('ADQ','Kodiak Airport','ADQ');
INSERT INTO Airport (airportId, airportName, city) VALUES ('OTZ','Ralph Wien Memorial Airport','OTZ');
INSERT INTO Airport (airportId, airportName, city) VALUES ('OME','Nome Airport','OME');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PSG','Petersburg James A. Johnson Airport','PSG');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KSM','St. Mary''s Airport','KSM');
INSERT INTO Airport (airportId, airportName, city) VALUES ('SIT','Sitka Rocky Gutierrez Airport','SIT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('UNK','Unalakleet Airport','UNK');
INSERT INTO Airport (airportId, airportName, city) VALUES ('DUT','Unalaska Airport','DUT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('BRW','Wiley Post–Will Rogers Memorial Airport','BRW');
INSERT INTO Airport (airportId, airportName, city) VALUES ('VDZ','Valdez Airport','VDZ');
INSERT INTO Airport (airportId, airportName, city) VALUES ('WRG','Wrangell Airport','WRG');
INSERT INTO Airport (airportId, airportName, city) VALUES ('YAK','Yakutat Airport','YAK');
INSERT INTO Airport (airportId, airportName, city) VALUES ('IFP','Laughlin/Bullhead International Airport','IFP');
INSERT INTO Airport (airportId, airportName, city) VALUES ('FLG','Flagstaff Pulliam Airport','FLG');
INSERT INTO Airport (airportId, airportName, city) VALUES ('GCN','Grand Canyon National Park Airport','GCN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('AZA','Phoenix–Mesa Gateway Airport','IWA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PGA','Page Municipal Airport','PGA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PHX','Phoenix Sky Harbor International Airport','PHX');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PRC','Prescott Municipal Airport','PRC');
INSERT INTO Airport (airportId, airportName, city) VALUES ('TUS','Tucson International Airport','TUS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('YUM','Yuma International Airport','NYL');
INSERT INTO Airport (airportId, airportName, city) VALUES ('XNA','Northwest Arkansas National Airport','XNA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('FSM','Fort Smith Regional Airport','FSM');
INSERT INTO Airport (airportId, airportName, city) VALUES ('LIT','Clinton National Airport','LIT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('TXK','Texarkana Regional Airport','TXK');
INSERT INTO Airport (airportId, airportName, city) VALUES ('ACV','Arcata Airport','ACV');
INSERT INTO Airport (airportId, airportName, city) VALUES ('BFL','Meadows Field','BFL');
INSERT INTO Airport (airportId, airportName, city) VALUES ('BUR','Hollywood Burbank Airport','BUR');
INSERT INTO Airport (airportId, airportName, city) VALUES ('CCR','Buchanan Field Airport','CCR');
INSERT INTO Airport (airportId, airportName, city) VALUES ('FAT','Fresno Yosemite International Airport','FAT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('LGB','Long Beach Airport','LGB');
INSERT INTO Airport (airportId, airportName, city) VALUES ('LAX','Los Angeles International Airport','LAX');
INSERT INTO Airport (airportId, airportName, city) VALUES ('MMH','Mammoth Yosemite Airport','MMH');
INSERT INTO Airport (airportId, airportName, city) VALUES ('MRY','Monterey Regional Airport','MRY');
INSERT INTO Airport (airportId, airportName, city) VALUES ('OAK','Oakland International Airport','OAK');
INSERT INTO Airport (airportId, airportName, city) VALUES ('ONT','Ontario International Airport','ONT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('SNA','John Wayne Airport','SNA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PSP','Palm Springs International Airport','PSP');
INSERT INTO Airport (airportId, airportName, city) VALUES ('RDD','Redding Municipal Airport','RDD');
INSERT INTO Airport (airportId, airportName, city) VALUES ('SMF','Sacramento International Airport','SMF');
INSERT INTO Airport (airportId, airportName, city) VALUES ('SAN','San Diego International Airport','SAN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('SFO','San Francisco International Airport','SFO');
INSERT INTO Airport (airportId, airportName, city) VALUES ('SJC','Norman Y. Mineta San José International Airport','SJC');
INSERT INTO Airport (airportId, airportName, city) VALUES ('SBP','San Luis Obispo County Regional Airport','SBP');
INSERT INTO Airport (airportId, airportName, city) VALUES ('SBA','Santa Barbara Municipal Airport','SBA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('SMX','Santa Maria Public Airport','SMX');
INSERT INTO Airport (airportId, airportName, city) VALUES ('STS','Charles M. Schulz–Sonoma County Airport','STS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('SCK','Stockton Metropolitan Airport','SCK');
INSERT INTO Airport (airportId, airportName, city) VALUES ('ASE','Aspen/Pitkin County Airport','ASE');
INSERT INTO Airport (airportId, airportName, city) VALUES ('COS','City of Colorado Springs Municipal Airport','COS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('DEN','Denver International Airport','DEN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('DRO','Durango–La Plata County Airport','DRO');
INSERT INTO Airport (airportId, airportName, city) VALUES ('EGE','Eagle County Regional Airport','EGE');
INSERT INTO Airport (airportId, airportName, city) VALUES ('GJT','Grand Junction Regional Airport','GJT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('GUC','Gunnison–Crested Butte Regional Airport','GUC');
INSERT INTO Airport (airportId, airportName, city) VALUES ('HDN','Yampa Valley Airport','HDN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('MTJ','Montrose Regional Airport','MTJ');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PUB','Pueblo Memorial Airport','PUB');
INSERT INTO Airport (airportId, airportName, city) VALUES ('BDL','Bradley International Airport','BDL');
INSERT INTO Airport (airportId, airportName, city) VALUES ('HVN','Tweed-New Haven Airport','HVN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('DAB','Daytona Beach International Airport','DAB');
INSERT INTO Airport (airportId, airportName, city) VALUES ('FLL','Fort Lauderdale–Hollywood International Airport','FLL');
INSERT INTO Airport (airportId, airportName, city) VALUES ('RSW','Southwest Florida International Airport','RSW');
INSERT INTO Airport (airportId, airportName, city) VALUES ('VPS','Destin–Fort Walton Beach Airport','VPS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('GNV','Gainesville Regional Airport','GNV');
INSERT INTO Airport (airportId, airportName, city) VALUES ('JAX','Jacksonville International Airport','JAX');
INSERT INTO Airport (airportId, airportName, city) VALUES ('EYW','Key West International Airport','EYW');
INSERT INTO Airport (airportId, airportName, city) VALUES ('MLB','Melbourne Orlando International Airport','MLB');
INSERT INTO Airport (airportId, airportName, city) VALUES ('MIA','Miami International Airport','MIA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('MCO','Orlando International Airport','MCO');
INSERT INTO Airport (airportId, airportName, city) VALUES ('ECP','Northwest Florida Beaches International Airport','ECP');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PNS','Pensacola International Airport','PNS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PGD','Punta Gorda Airport','PGD');
INSERT INTO Airport (airportId, airportName, city) VALUES ('SFB','Orlando Sanford International Airport','SFB');
INSERT INTO Airport (airportId, airportName, city) VALUES ('SRQ','Sarasota–Bradenton International Airport','SRQ');
INSERT INTO Airport (airportId, airportName, city) VALUES ('UST','Northeast Florida Regional Airport','SGJ');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PIE','St. Pete–Clearwater International Airport','PIE');
INSERT INTO Airport (airportId, airportName, city) VALUES ('TLH','Tallahassee International Airport','TLH');
INSERT INTO Airport (airportId, airportName, city) VALUES ('TPA','Tampa International Airport','TPA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PBI','Palm Beach International Airport','PBI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('ABY','Southwest Georgia Regional Airport','ABY');
INSERT INTO Airport (airportId, airportName, city) VALUES ('ATL','Hartsfield–Jackson Atlanta International Airport','ATL');
INSERT INTO Airport (airportId, airportName, city) VALUES ('AGS','Augusta Regional Airport','AGS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('BQK','Brunswick Golden Isles Airport','BQK');
INSERT INTO Airport (airportId, airportName, city) VALUES ('CSG','Columbus Airport','CSG');
INSERT INTO Airport (airportId, airportName, city) VALUES ('MCN','Middle Georgia Regional Airport','MCN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('SAV','Savannah/Hilton Head International Airport','SAV');
INSERT INTO Airport (airportId, airportName, city) VALUES ('VLD','Valdosta Regional Airport','VLD');
INSERT INTO Airport (airportId, airportName, city) VALUES ('ITO','Hilo International Airport','ITO');
INSERT INTO Airport (airportId, airportName, city) VALUES ('HNL','Daniel K. Inouye International Airport','HNL');
INSERT INTO Airport (airportId, airportName, city) VALUES ('OGG','Kahului Airport','OGG');
INSERT INTO Airport (airportId, airportName, city) VALUES ('KOA','Ellison Onizuka Kona International Airport at Keahole','KOA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('MKK','Molokai Airport','MKK');
INSERT INTO Airport (airportId, airportName, city) VALUES ('LNY','Lanai Airport','LNY');
INSERT INTO Airport (airportId, airportName, city) VALUES ('LIH','Lihue Airport','LIH');
INSERT INTO Airport (airportId, airportName, city) VALUES ('BOI','Boise Airport','BOI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('SUN','Friedman Memorial Airport','SUN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('IDA','Idaho Falls Regional Airport','IDA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('LWS','Lewiston–Nez Perce County Airport','LWS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PIH','Pocatello Regional Airport','PIH');
INSERT INTO Airport (airportId, airportName, city) VALUES ('TWF','Magic Valley Regional Airport','TWF');
INSERT INTO Airport (airportId, airportName, city) VALUES ('BLV','MidAmerica St. Louis Airport ','BLV');
INSERT INTO Airport (airportId, airportName, city) VALUES ('BMI','Central Illinois Regional Airport at Bloomington-Normal','BMI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('CMI','University of Illinois - Willard Airport','CMI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('MDW','Chicago Midway International Airport','MDW');
INSERT INTO Airport (airportId, airportName, city) VALUES ('ORD','Chicago O''Hare International Airport','ORD');
INSERT INTO Airport (airportId, airportName, city) VALUES ('MWA','Veterans Airport of Southern Illinois','MWA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('MLI','Quad City International Airport','MLI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PIA','General Downing-Peoria International Airport','PIA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('UIN','Quincy Regional Airport','UIN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('RFD','Chicago Rockford International Airport','RFD');
INSERT INTO Airport (airportId, airportName, city) VALUES ('SPI','Abraham Lincoln Capital Airport','SPI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('CID','The Eastern Iowa Airport','CID');
INSERT INTO Airport (airportId, airportName, city) VALUES ('DSM','Des Moines International Airport','DSM');
INSERT INTO Airport (airportId, airportName, city) VALUES ('DBQ','Dubuque Regional Airport','DBQ');
INSERT INTO Airport (airportId, airportName, city) VALUES ('SUX','Sioux Gateway Airport','SUX');
INSERT INTO Airport (airportId, airportName, city) VALUES ('ALO','Waterloo Regional Airport','ALO');
INSERT INTO Airport (airportId, airportName, city) VALUES ('GCK','Garden City Regional Airport','GCK');
INSERT INTO Airport (airportId, airportName, city) VALUES ('HYS','Hays Regional Airport','HYS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('MHK','Manhattan Regional Airport','MHK');
INSERT INTO Airport (airportId, airportName, city) VALUES ('SLN','Salina Regional Airport','SLN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('ICT','Wichita Dwight D. Eisenhower National Airport','ICT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('CVG','Cincinnati/Northern Kentucky International Airport','CVG');
INSERT INTO Airport (airportId, airportName, city) VALUES ('LEX','Blue Grass Airport','LEX');
INSERT INTO Airport (airportId, airportName, city) VALUES ('SDF','Louisville International Airport','SDF');
INSERT INTO Airport (airportId, airportName, city) VALUES ('OWB','Owensboro–Daviess County Regional Airport','OWB');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PAH','Barkley Regional Airport','PAH');
INSERT INTO Airport (airportId, airportName, city) VALUES ('AEX','Alexandria International Airport','AEX');
INSERT INTO Airport (airportId, airportName, city) VALUES ('BTR','Baton Rouge Metropolitan Airport','BTR');
INSERT INTO Airport (airportId, airportName, city) VALUES ('LFT','Lafayette Regional Airport','LFT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('LCH','Lake Charles Regional Airport','LCH');
INSERT INTO Airport (airportId, airportName, city) VALUES ('MLU','Monroe Regional Airport','MLU');
INSERT INTO Airport (airportId, airportName, city) VALUES ('MSY','Louis Armstrong New Orleans International Airport','MSY');
INSERT INTO Airport (airportId, airportName, city) VALUES ('SHV','Shreveport Regional Airport','SHV');
INSERT INTO Airport (airportId, airportName, city) VALUES ('BGR','Bangor International Airport','BGR');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PWM','Portland International Jetport','PWM');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PQI','Presque Isle International Airport','PQI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('RKD','Knox County Regional Airport','RKD');
INSERT INTO Airport (airportId, airportName, city) VALUES ('BWI','Baltimore/Washington International Airport','BWI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('HGR','Hagerstown Regional Airport','HGR');
INSERT INTO Airport (airportId, airportName, city) VALUES ('SBY','Salisbury–Ocean City–Wicomico Regional Airport','SBY');
INSERT INTO Airport (airportId, airportName, city) VALUES ('BED','Hanscom Field','BED');
INSERT INTO Airport (airportId, airportName, city) VALUES ('BOS','Gen. Edward Lawrence Logan International Airport','BOS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('HYA','Barnstable Municipal Airport','HYA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('ACK','Nantucket Memorial Airport','ACK');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PVC','Provincetown Municipal Airport','PVC');
INSERT INTO Airport (airportId, airportName, city) VALUES ('MVY','Martha''s Vineyard Airport','MVY');
INSERT INTO Airport (airportId, airportName, city) VALUES ('ORH','Worcester Regional Airport','ORH');
INSERT INTO Airport (airportId, airportName, city) VALUES ('APN','Alpena County Regional Airport','APN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('DTW','Detroit Metropolitan Airport','DTW');
INSERT INTO Airport (airportId, airportName, city) VALUES ('ESC','Delta County Airport','ESC');
INSERT INTO Airport (airportId, airportName, city) VALUES ('FNT','Bishop International Airport','FNT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('GRR','Gerald R. Ford International Airport','GRR');
INSERT INTO Airport (airportId, airportName, city) VALUES ('CMX','Houghton County Memorial Airport','CMX');
INSERT INTO Airport (airportId, airportName, city) VALUES ('IMT','Ford Airport','IMT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('AZO','Kalamazoo/Battle Creek International Airport','AZO');
INSERT INTO Airport (airportId, airportName, city) VALUES ('LAN','Capital Region International Airport','LAN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('MQT','Sawyer International Airport','SAW');
INSERT INTO Airport (airportId, airportName, city) VALUES ('MKG','Muskegon County Airport','MKG');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PLN','Pellston Regional Airport','PLN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('MBS','MBS International Airport','MBS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('CIU','Chippewa County International Airport','CIU');
INSERT INTO Airport (airportId, airportName, city) VALUES ('TVC','Cherry Capital Airport','TVC');
INSERT INTO Airport (airportId, airportName, city) VALUES ('BJI','Bemidji Regional Airport','BJI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('BRD','Brainerd Lakes Regional Airport','BRD');
INSERT INTO Airport (airportId, airportName, city) VALUES ('DLH','Duluth International Airport','DLH');
INSERT INTO Airport (airportId, airportName, city) VALUES ('HIB','Range Regional Airport','HIB');
INSERT INTO Airport (airportId, airportName, city) VALUES ('INL','Falls International Airport','INL');
INSERT INTO Airport (airportId, airportName, city) VALUES ('MSP','Minneapolis–St. Paul International Airport','MSP');
INSERT INTO Airport (airportId, airportName, city) VALUES ('RST','Rochester International Airport','RST');
INSERT INTO Airport (airportId, airportName, city) VALUES ('STC','St. Cloud Regional Airport','STC');
INSERT INTO Airport (airportId, airportName, city) VALUES ('GTR','Golden Triangle Regional Airport','GTR');
INSERT INTO Airport (airportId, airportName, city) VALUES ('GPT','Gulfport–Biloxi International Airport','GPT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('JAN','Jackson–Medgar Wiley Evers International Airport','JAN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('MEI','Meridian Regional Airport','MEI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('TUP','Tupelo Regional Airport','TUP');
INSERT INTO Airport (airportId, airportName, city) VALUES ('COU','Columbia Regional Airport','COU');
INSERT INTO Airport (airportId, airportName, city) VALUES ('JLN','Joplin Regional Airport','JLN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('MCI','Kansas City International Airport','MCI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('SGF','Springfield–Branson National Airport','SGF');
INSERT INTO Airport (airportId, airportName, city) VALUES ('STL','St. Louis Lambert International Airport','STL');
INSERT INTO Airport (airportId, airportName, city) VALUES ('BIL','Billings Logan International Airport','BIL');
INSERT INTO Airport (airportId, airportName, city) VALUES ('BZN','Bozeman Yellowstone International Airport','BZN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('BTM','Bert Mooney Airport','BTM');
INSERT INTO Airport (airportId, airportName, city) VALUES ('GTF','Great Falls International Airport','GTF');
INSERT INTO Airport (airportId, airportName, city) VALUES ('HLN','Helena Regional Airport','HLN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('FCA','Glacier Park International Airport','GPI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('MSO','Missoula International Airport','MSO');
INSERT INTO Airport (airportId, airportName, city) VALUES ('SDY','Sidney–Richland Municipal Airport','SDY');
INSERT INTO Airport (airportId, airportName, city) VALUES ('WYS','Yellowstone Airport','WYS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('GRI','Central Nebraska Regional Airport','GRI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('LNK','Lincoln Airport','LNK');
INSERT INTO Airport (airportId, airportName, city) VALUES ('LBF','North Platte Regional Airport','LBF');
INSERT INTO Airport (airportId, airportName, city) VALUES ('OMA','Eppley Airfield','OMA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('BFF','Western Nebraska Regional Airport','BFF');
INSERT INTO Airport (airportId, airportName, city) VALUES ('BLD','Boulder City Municipal Airport','BVU');
INSERT INTO Airport (airportId, airportName, city) VALUES ('EKO','Elko Regional Airport','EKO');
INSERT INTO Airport (airportId, airportName, city) VALUES ('LAS','McCarran International Airport','LAS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('RNO','Reno/Tahoe International Airport','RNO');
INSERT INTO Airport (airportId, airportName, city) VALUES ('LEB','Lebanon Municipal Airport','LEB');
INSERT INTO Airport (airportId, airportName, city) VALUES ('MHT','Manchester–Boston Regional Airport','MHT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PSM','Portsmouth International Airport at Pease','PSM');
INSERT INTO Airport (airportId, airportName, city) VALUES ('ACY','Atlantic City International Airport','ACY');
INSERT INTO Airport (airportId, airportName, city) VALUES ('EWR','Newark Liberty International Airport','EWR');
INSERT INTO Airport (airportId, airportName, city) VALUES ('TTN','Trenton Mercer Airport','TTN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('ABQ','Albuquerque International Sunport','ABQ');
INSERT INTO Airport (airportId, airportName, city) VALUES ('HOB','Lea County Regional Airport','HOB');
INSERT INTO Airport (airportId, airportName, city) VALUES ('ROW','Roswell International Air Center','ROW');
INSERT INTO Airport (airportId, airportName, city) VALUES ('SAF','Santa Fe Regional Airport','SAF');
INSERT INTO Airport (airportId, airportName, city) VALUES ('ALB','Albany International Airport','ALB');
INSERT INTO Airport (airportId, airportName, city) VALUES ('BGM','Greater Binghamton Airport ','BGM');
INSERT INTO Airport (airportId, airportName, city) VALUES ('BUF','Buffalo Niagara International Airport','BUF');
INSERT INTO Airport (airportId, airportName, city) VALUES ('ELM','Elmira/Corning Regional Airport','ELM');
INSERT INTO Airport (airportId, airportName, city) VALUES ('ISP','Long Island MacArthur Airport','ISP');
INSERT INTO Airport (airportId, airportName, city) VALUES ('ITH','Ithaca Tompkins International Airport','ITH');
INSERT INTO Airport (airportId, airportName, city) VALUES ('JFK','John F. Kennedy International Airport','JFK');
INSERT INTO Airport (airportId, airportName, city) VALUES ('LGA','LaGuardia Airport','LGA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('SWF','Stewart International Airport','SWF');
INSERT INTO Airport (airportId, airportName, city) VALUES ('IAG','Niagara Falls International Airport','IAG');
INSERT INTO Airport (airportId, airportName, city) VALUES ('OGS','Ogdensburg International Airport','OGS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PBG','Plattsburgh International Airport','PBG');
INSERT INTO Airport (airportId, airportName, city) VALUES ('ROC','Greater Rochester International Airport','ROC');
INSERT INTO Airport (airportId, airportName, city) VALUES ('SYR','Syracuse Hancock International Airport','SYR');
INSERT INTO Airport (airportId, airportName, city) VALUES ('ART','Watertown International Airport','ART');
INSERT INTO Airport (airportId, airportName, city) VALUES ('HPN','Westchester County Airport','HPN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('AVL','Asheville Regional Airport','AVL');
INSERT INTO Airport (airportId, airportName, city) VALUES ('CLT','Charlotte/Douglas International Airport','CLT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('USA','Concord Regional Airport','JQF');
INSERT INTO Airport (airportId, airportName, city) VALUES ('FAY','Fayetteville Regional Airport','FAY');
INSERT INTO Airport (airportId, airportName, city) VALUES ('GSO','Piedmont Triad International Airport','GSO');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PGV','Pitt–Greenville Airport','PGV');
INSERT INTO Airport (airportId, airportName, city) VALUES ('OAJ','Albert J. Ellis Airport','OAJ');
INSERT INTO Airport (airportId, airportName, city) VALUES ('EWN','Coastal Carolina Regional Airport','EWN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('RDU','Raleigh–Durham International Airport','RDU');
INSERT INTO Airport (airportId, airportName, city) VALUES ('ILM','Wilmington International Airport','ILM');
INSERT INTO Airport (airportId, airportName, city) VALUES ('BIS','Bismarck Municipal Airport','BIS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('DIK','Dickinson Theodore Roosevelt Regional Airport','DIK');
INSERT INTO Airport (airportId, airportName, city) VALUES ('FAR','Hector International Airport','FAR');
INSERT INTO Airport (airportId, airportName, city) VALUES ('GFK','Grand Forks International Airport','GFK');
INSERT INTO Airport (airportId, airportName, city) VALUES ('JMS','Jamestown Regional Airport','JMS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('MOT','Minot International Airport','MOT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('XWA','Williston Basin International Airport','XWA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('CAK','Akron–Canton Airport','CAK');
INSERT INTO Airport (airportId, airportName, city) VALUES ('CLE','Cleveland Hopkins International Airport','CLE');
INSERT INTO Airport (airportId, airportName, city) VALUES ('CMH','John Glenn Columbus International Airport','CMH');
INSERT INTO Airport (airportId, airportName, city) VALUES ('LCK','Rickenbacker International Airport','LCK');
INSERT INTO Airport (airportId, airportName, city) VALUES ('DAY','James M. Cox Dayton International Airport','DAY');
INSERT INTO Airport (airportId, airportName, city) VALUES ('TOL','Toledo Express Airport','TOL');
INSERT INTO Airport (airportId, airportName, city) VALUES ('LAW','Lawton–Fort Sill Regional Airport','LAW');
INSERT INTO Airport (airportId, airportName, city) VALUES ('OKC','Will Rogers World Airport','OKC');
INSERT INTO Airport (airportId, airportName, city) VALUES ('SWO','Stillwater Regional Airport','SWO');
INSERT INTO Airport (airportId, airportName, city) VALUES ('TUL','Tulsa International Airport','TUL');
INSERT INTO Airport (airportId, airportName, city) VALUES ('EUG','Eugene Airport','EUG');
INSERT INTO Airport (airportId, airportName, city) VALUES ('MFR','Rogue Valley International–Medford Airport','MFR');
INSERT INTO Airport (airportId, airportName, city) VALUES ('OTH','Southwest Oregon Regional Airport ','OTH');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PDX','Portland International Airport','PDX');
INSERT INTO Airport (airportId, airportName, city) VALUES ('RDM','Redmond Municipal Airport ','RDM');
INSERT INTO Airport (airportId, airportName, city) VALUES ('ABE','Lehigh Valley International Airport','ABE');
INSERT INTO Airport (airportId, airportName, city) VALUES ('ERI','Erie International Airport','ERI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('MDT','Harrisburg International Airport','MDT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('LBE','Arnold Palmer Regional Airport','LBE');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PHL','Philadelphia International Airport','PHL');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PIT','Pittsburgh International Airport','PIT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('SCE','University Park Airport','UNV');
INSERT INTO Airport (airportId, airportName, city) VALUES ('AVP','Wilkes-Barre/Scranton International Airport','AVP');
INSERT INTO Airport (airportId, airportName, city) VALUES ('IPT','Williamsport Regional Airport','IPT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('BID','Block Island State Airport','BID');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PVD','Theodore Francis Green State Airport','PVD');
INSERT INTO Airport (airportId, airportName, city) VALUES ('WST','Westerly State Airport','WST');
INSERT INTO Airport (airportId, airportName, city) VALUES ('CHS','Charleston International Airport','CHS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('CAE','Columbia Metropolitan Airport','CAE');
INSERT INTO Airport (airportId, airportName, city) VALUES ('FLO','Florence Regional Airport','FLO');
INSERT INTO Airport (airportId, airportName, city) VALUES ('GSP','Greenville–Spartanburg International Airport','GSP');
INSERT INTO Airport (airportId, airportName, city) VALUES ('HHH','Hilton Head Airport','HXD');
INSERT INTO Airport (airportId, airportName, city) VALUES ('MYR','Myrtle Beach International Airport','MYR');
INSERT INTO Airport (airportId, airportName, city) VALUES ('ABR','Aberdeen Regional Airport','ABR');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PIR','Pierre Regional Airport','PIR');
INSERT INTO Airport (airportId, airportName, city) VALUES ('RAP','Rapid City Regional Airport','RAP');
INSERT INTO Airport (airportId, airportName, city) VALUES ('FSD','Sioux Falls Regional Airport','FSD');
INSERT INTO Airport (airportId, airportName, city) VALUES ('ATY','Watertown Regional Airport','ATY');
INSERT INTO Airport (airportId, airportName, city) VALUES ('CHA','Chattanooga Metropolitan Airport','CHA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('TYS','McGhee Tyson Airport','TYS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('MEM','Memphis International Airport','MEM');
INSERT INTO Airport (airportId, airportName, city) VALUES ('BNA','Nashville International Airport','BNA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('TRI','Tri-Cities Regional Airport','TRI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('ABI','Abilene Regional Airport','ABI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('AMA','Rick Husband Amarillo International Airport','AMA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('AUS','Austin–Bergstrom International Airport','AUS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('BPT','Jack Brooks Regional Airport','BPT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('BRO','Brownsville/South Padre Island International Airport','BRO');
INSERT INTO Airport (airportId, airportName, city) VALUES ('CLL','Easterwood Airport','CLL');
INSERT INTO Airport (airportId, airportName, city) VALUES ('CRP','Corpus Christi International Airport','CRP');
INSERT INTO Airport (airportId, airportName, city) VALUES ('DAL','Dallas Love Field','DAL');
INSERT INTO Airport (airportId, airportName, city) VALUES ('DFW','Dallas/Fort Worth International Airport','DFW');
INSERT INTO Airport (airportId, airportName, city) VALUES ('ELP','El Paso International Airport','ELP');
INSERT INTO Airport (airportId, airportName, city) VALUES ('HRL','Valley International Airport','HRL');
INSERT INTO Airport (airportId, airportName, city) VALUES ('IAH','George Bush Intercontinental Airport','IAH');
INSERT INTO Airport (airportId, airportName, city) VALUES ('HOU','William P. Hobby Airport','HOU');
INSERT INTO Airport (airportId, airportName, city) VALUES ('GRK','Killeen–Fort Hood Regional Airport','GRK');
INSERT INTO Airport (airportId, airportName, city) VALUES ('LRD','Laredo International Airport','LRD');
INSERT INTO Airport (airportId, airportName, city) VALUES ('GGG','East Texas Regional Airport','GGG');
INSERT INTO Airport (airportId, airportName, city) VALUES ('LBB','Lubbock Preston Smith International Airport','LBB');
INSERT INTO Airport (airportId, airportName, city) VALUES ('MFE','McAllen Miller International Airport','MFE');
INSERT INTO Airport (airportId, airportName, city) VALUES ('MAF','Midland International Air and Space Port','MAF');
INSERT INTO Airport (airportId, airportName, city) VALUES ('SJT','San Angelo Regional Airport','SJT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('SAT','San Antonio International Airport','SAT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('TYR','Tyler Pounds Regional Airport','TYR');
INSERT INTO Airport (airportId, airportName, city) VALUES ('ACT','Waco Regional Airport','ACT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('SPS','Wichita Falls Regional Airport','SPS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('CDC','Cedar City Regional Airport','CDC');
INSERT INTO Airport (airportId, airportName, city) VALUES ('CNY','Canyonlands Field','CNY');
INSERT INTO Airport (airportId, airportName, city) VALUES ('OGD','Ogden-Hinckley Airport','OGD');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PVU','Provo Municipal Airport','PVU');
INSERT INTO Airport (airportId, airportName, city) VALUES ('SLC','Salt Lake City International Airport','SLC');
INSERT INTO Airport (airportId, airportName, city) VALUES ('SGU','St. George Regional Airport','SGU');
INSERT INTO Airport (airportId, airportName, city) VALUES ('VEL','Vernal Regional Airport','VEL');
INSERT INTO Airport (airportId, airportName, city) VALUES ('BTV','Burlington International Airport','BTV');
INSERT INTO Airport (airportId, airportName, city) VALUES ('CHO','Charlottesville–Albemarle Airport','CHO');
INSERT INTO Airport (airportId, airportName, city) VALUES ('LYH','Lynchburg Regional Airport','LYH');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PHF','Newport News/Williamsburg International Airport','PHF');
INSERT INTO Airport (airportId, airportName, city) VALUES ('ORF','Norfolk International Airport','ORF');
INSERT INTO Airport (airportId, airportName, city) VALUES ('RIC','Richmond International Airport','RIC');
INSERT INTO Airport (airportId, airportName, city) VALUES ('ROA','Roanoke–Blacksburg Regional Airport','ROA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('SHD','Shenandoah Valley Regional Airport','SHD');
INSERT INTO Airport (airportId, airportName, city) VALUES ('DCA','Ronald Reagan Washington National Airport','DCA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('IAD','Washington Dulles International Airport','IAD');
INSERT INTO Airport (airportId, airportName, city) VALUES ('BLI','Bellingham International Airport','BLI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('ESD','Orcas Island Airport','ORS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('FRD','Friday Harbor Airport','FHR');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PSC','Tri-Cities Airport','PSC');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PUW','Pullman–Moscow Regional Airport','PUW');
INSERT INTO Airport (airportId, airportName, city) VALUES ('BFI','King County International Airport','BFI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('SEA','Seattle–Tacoma International Airport','SEA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('GEG','Spokane International Airport','GEG');
INSERT INTO Airport (airportId, airportName, city) VALUES ('ALW','Walla Walla Regional Airport','ALW');
INSERT INTO Airport (airportId, airportName, city) VALUES ('EAT','Pangborn Memorial Airport','EAT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('YKM','Yakima Air Terminal','YKM');
INSERT INTO Airport (airportId, airportName, city) VALUES ('CRW','Yeager Airport','CRW');
INSERT INTO Airport (airportId, airportName, city) VALUES ('CKB','North Central West Virginia Airport','CKB');
INSERT INTO Airport (airportId, airportName, city) VALUES ('HTS','Tri-State Airport','HTS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('LWB','Greenbrier Valley Airport','LWB');
INSERT INTO Airport (airportId, airportName, city) VALUES ('ATW','Appleton International Airport','ATW');
INSERT INTO Airport (airportId, airportName, city) VALUES ('EAU','Chippewa Valley Regional Airport','EAU');
INSERT INTO Airport (airportId, airportName, city) VALUES ('GRB','Green Bay–Austin Straubel International Airport','GRB');
INSERT INTO Airport (airportId, airportName, city) VALUES ('LSE','La Crosse Regional Airport','LSE');
INSERT INTO Airport (airportId, airportName, city) VALUES ('MSN','Dane County Regional Airport','MSN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('MKE','Milwaukee Mitchell International Airport','MKE');
INSERT INTO Airport (airportId, airportName, city) VALUES ('CWA','Central Wisconsin Airport','CWA');
INSERT INTO Airport (airportId, airportName, city) VALUES ('RHI','Rhinelander–Oneida County Airport','RHI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('CPR','Casper–Natrona County International Airport','CPR');
INSERT INTO Airport (airportId, airportName, city) VALUES ('COD','Yellowstone Regional Airport','COD');
INSERT INTO Airport (airportId, airportName, city) VALUES ('GCC','Gillette–Campbell County Airport','GCC');
INSERT INTO Airport (airportId, airportName, city) VALUES ('JAC','Jackson Hole Airport','JAC');
INSERT INTO Airport (airportId, airportName, city) VALUES ('LAR','Laramie Regional Airport','LAR');
INSERT INTO Airport (airportId, airportName, city) VALUES ('RIW','Central Wyoming Regional Airport','RIW');
INSERT INTO Airport (airportId, airportName, city) VALUES ('RKS','Southwest Wyoming Regional Airport','RKS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('SHR','Sheridan County Airport','SHR');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PPG','Pago Pago International Airport','PPG');
INSERT INTO Airport (airportId, airportName, city) VALUES ('GUM','Antonio B. Won Pat International Airport','GUM');
INSERT INTO Airport (airportId, airportName, city) VALUES ('SPN','Saipan International Airport','GSN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('ROP','Rota International Airport','GRO');
INSERT INTO Airport (airportId, airportName, city) VALUES ('TIQ','Tinian International Airport','TNI');
INSERT INTO Airport (airportId, airportName, city) VALUES ('BQN','Rafael Hernández International Airport','BQN');
INSERT INTO Airport (airportId, airportName, city) VALUES ('NRR','José Aponte de la Torre Airport','RVR');
INSERT INTO Airport (airportId, airportName, city) VALUES ('CPX','Benjamín Rivera Noriega Airport','CPX');
INSERT INTO Airport (airportId, airportName, city) VALUES ('PSE','Mercedita International Airport','PSE');
INSERT INTO Airport (airportId, airportName, city) VALUES ('SJU','Luis Muñoz Marín International Airport','SJU');
INSERT INTO Airport (airportId, airportName, city) VALUES ('SIG','Fernando Luis Ribas Dominicci Airport','SIG');
INSERT INTO Airport (airportId, airportName, city) VALUES ('VQS','Antonio Rivera Rodríguez Airport','VQS');
INSERT INTO Airport (airportId, airportName, city) VALUES ('STT','Cyril E. King Airport','STT');
INSERT INTO Airport (airportId, airportName, city) VALUES ('STX','Henry E. Rohlsen Airport','STX');





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




-- Create Schedule Table

CREATE TABLE Schedules(
	scheduleId varchar(100) primary key,
	sourceId varchar(100) NOT NULL,
	destinationId varchar(100) NOT NULL,
    capacity int NOT NULL,
    scheduledDate date NOT NULL,
    flightId varchar(100) NOT NULL,
    FOREIGN KEY(sourceId) REFERENCES Airport(airportId),
    FOREIGN KEY(destinationId) REFERENCES Airport(airportId),
    FOREIGN KEY(flightId) REFERENCES Flight(flightId)
);

INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, flightId) VALUES ('1','LAX','SFO','142', TO_DATE('2021/08/29 15:15:00', 'yyyy/mm/dd hh24:mi:ss'), 'UAL1039');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, flightId) VALUES ('2','SBA','MCO','155', TO_DATE('2021/07/22 09:05:00', 'yyyy/mm/dd hh24:mi:ss'), 'JBU1374');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, flightId) VALUES ('3','KTN','UST','147', TO_DATE('2021/09/25 18:33:00', 'yyyy/mm/dd hh24:mi:ss'), 'DAL1032');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, flightId) VALUES ('4','USA','ESD','142', TO_DATE('2021/08/05 12:38:00', 'yyyy/mm/dd hh24:mi:ss'), 'ASA1137');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, flightId) VALUES ('5','UST','SFO','145', TO_DATE('2021/07/31 22:15:00', 'yyyy/mm/dd hh24:mi:ss'), 'FFT1511');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, flightId) VALUES ('6','HHH','ALB','146', TO_DATE('2021/08/23 15:55:00', 'yyyy/mm/dd hh24:mi:ss'), 'SWA1021');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, flightId) VALUES ('7','ESC','GPT','154', TO_DATE('2021/09/22 15:32:00', 'yyyy/mm/dd hh24:mi:ss'), 'FFT1513');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, flightId) VALUES ('8','GPT','SAF','147', TO_DATE('2021/09/25 10:26:00', 'yyyy/mm/dd hh24:mi:ss'), 'JBU1258');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, flightId) VALUES ('9','CHA','GGG','142', TO_DATE('2021/08/15 18:33:00', 'yyyy/mm/dd hh24:mi:ss'), 'AAL1138');
INSERT INTO Schedules (scheduleId, sourceId, destinationId, capacity, scheduledDate, flightId) VALUES ('10','LAX','SFO','145', TO_DATE('2021/08/29 22:15:00', 'yyyy/mm/dd hh24:mi:ss'), 'DAL1085');



-- Create Booking Table

CREATE TABLE Booking(
	bookingId varchar(100) primary key,
	userId varchar(100) NOT NULL,
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
