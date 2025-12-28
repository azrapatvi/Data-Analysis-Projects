-- Project: Pizza Sales Analysis
-- Purpose: Database and table creation
-- Tool: MySQL
-- Description: This file contains SQL statements to create
-- the pizzahut database and its core tables.

-- Create database
CREATE DATABASE pizzahut;

-- Use the pizzahut database
USE pizzahut;

-- Preview raw data tables (after import)
SELECT * FROM pizzas;
SELECT * FROM pizza_types;

-- Create orders table
-- Stores date and time of each order
CREATE TABLE orders (
    order_id INT NOT NULL,
    order_date DATE NOT NULL,
    order_time TIME NOT NULL,
    PRIMARY KEY (order_id)
);

-- Create order_details table
-- Stores individual pizza items per order
CREATE TABLE order_details (
    order_details_id INT NOT NULL,
    order_id INT NOT NULL,
    pizza_id TEXT NOT NULL,
    quantity INT NOT NULL,
    PRIMARY KEY (order_details_id)
);
