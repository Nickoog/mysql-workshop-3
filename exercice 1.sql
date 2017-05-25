use decodemtl_addressbook

CREATE TABLE Entry (
    id INT PRIMARY KEY AUTO_INCREMENT,
    addressBookId INT,
    firstName VARCHAR(255),
    lastName VARCHAR(255),
    birthday DATETIME,
    type ENUM('phone', 'address', 'electronic-mail')
);

CREATE TABLE Phone (
    id INT PRIMARY KEY AUTO_INCREMENT,
    entryId INT,
    type ENUM('home', 'work', 'other'),
    subtype ENUM('landline', 'cellular', 'fax'),
    content VARCHAR(255)
);

CREATE TABLE Address (
    id INT PRIMARY KEY AUTO_INCREMENT,
    entryId INT,
    type ENUM('home', 'work', 'other'),
    addressLine1 VARCHAR(255),
    addressLine2 VARCHAR(255),
    city VARCHAR(255),
    province VARCHAR(128),
    country VARCHAR(128),
    postalCode VARCHAR(10)
);

CREATE TABLE ElectronicMail(
    id INT PRIMARY KEY AUTO_INCREMENT,
    entryId INT,
    type ENUM('home', 'work', 'other'),
    content VARCHAR(255)
);

ALTER TABLE Account
    MODIFY COLUMN id INT AUTO_INCREMENT PRIMARY KEY;
    
ALTER TABLE AddressBook
    MODIFY COLUMN id INT AUTO_INCREMENT PRIMARY KEY;
