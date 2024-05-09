-- 4. Creating new databases and adding items to the database is an important software development skill. 
-- Create both a new database and two database tables (entities) in the new database. 
-- The two database tables should have a one to many (1:M) relationship with each other. 

-- Create the database
CREATE DATABASE HOTEL_DATABASE;

-- Connecting to your PostgreSQL instance

-- Create the hotels table
CREATE TABLE hotels (
    hotel_id SERIAL PRIMARY KEY,
    hotel_name VARCHAR(100) NOT NULL,
    address VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20) NOT NULL
);‹

-- Create the rooms table
CREATE TABLE rooms (
    room_id SERIAL PRIMARY KEY,
    room_number VARCHAR(10) NOT NULL,
    type VARCHAR(50) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    hotel_id INT REFERENCES hotels(hotel_id)
);
