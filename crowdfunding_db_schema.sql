-- Creating all of the tables associted with the CSVs generated in the previous part of the project --
-- Just remember that the CSV data has to be imported in the same order that these tables are created due to foreign key constraints --

-- Creating a table for the 'contacts' csv --
CREATE TABLE contacts (
	contact_id INT PRIMARY KEY,
	"first name" VARCHAR(16) NOT NULL,
	"last name" VARCHAR(16) NOT NULL,
	email VARCHAR(64) NOT NULL
);

-- Creating a table for the 'category' csv --
CREATE TABLE category (
	category_id VARCHAR(4) PRIMARY KEY,
	category VARCHAR(16) NOT NULL
);

-- Creating a table for the 'subcategory' csv --
CREATE TABLE subcategory (
	subcategory_id VARCHAR(8) PRIMARY KEY,
	subcategory VARCHAR(32) NOT NULL
);

-- Creating a table for the 'campaign' csv --
CREATE TABLE campaign (
	cf_id INT PRIMARY KEY,
	contact_id INT NOT NULL REFERENCES contacts(contact_id),
	company_name VARCHAR(50) NOT NULL,
	description VARCHAR(100) NOT NULL, 
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR(10) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(2) NOT NULL,
	currency VARCHAR(3) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(4) NOT NULL REFERENCES category(category_id),
	subcategory_id VARCHAR(8) NOT NULL REFERENCES subcategory(subcategory_id)
);

-- Tests to check whether or not the data is correctly loaded from the provided CSVs --
SELECT * FROM contacts;

SELECT * FROM category;

SELECT * FROM subcategory;

SELECT * FROM campaign;



