CREATE DATABASE IF NOT EXISTS adubus_db;
USE adubus_db;

CREATE TABLE IF NOT EXISTS users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(100),
    phone VARCHAR(15),
    role VARCHAR(20) DEFAULT 'user'
);

CREATE TABLE IF NOT EXISTS buses (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    number VARCHAR(20),
    operator VARCHAR(100),
    source VARCHAR(50),
    destination VARCHAR(50),
    distance INT,
    type VARCHAR(50), -- Volvo / Non-Volvo
    ac_type VARCHAR(50), -- AC / Non-AC
    sleeper_type VARCHAR(50), -- Sleeper / Seater / Semi-Sleeper
    departure VARCHAR(50),
    arrival VARCHAR(50),
    duration VARCHAR(50),
    price DOUBLE,
    rating DOUBLE DEFAULT 4.5
);

CREATE TABLE IF NOT EXISTS amenities (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS bus_amenities (
    bus_id INT,
    amenity_id INT,
    FOREIGN KEY (bus_id) REFERENCES buses(id) ON DELETE CASCADE,
    FOREIGN KEY (amenity_id) REFERENCES amenities(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS boarding_points (
    id INT PRIMARY KEY AUTO_INCREMENT,
    bus_id INT,
    location VARCHAR(100),
    time VARCHAR(50),
    FOREIGN KEY (bus_id) REFERENCES buses(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS dropping_points (
    id INT PRIMARY KEY AUTO_INCREMENT,
    bus_id INT,
    location VARCHAR(100),
    time VARCHAR(50),
    FOREIGN KEY (bus_id) REFERENCES buses(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS seats (
    id INT PRIMARY KEY AUTO_INCREMENT,
    bus_id INT,
    seat_no VARCHAR(20),
    seat_type VARCHAR(20), -- 'seater', 'upper', 'lower'
    status VARCHAR(20) DEFAULT 'available',
    FOREIGN KEY (bus_id) REFERENCES buses(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS bookings (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    bus_id INT,
    seats VARCHAR(255),
    boarding_point VARCHAR(100),
    total_price DOUBLE,
    booking_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    passenger_name VARCHAR(100),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (bus_id) REFERENCES buses(id)
);

-- Insert Dummy Admin
INSERT IGNORE INTO users (name, email, password, phone, role) VALUES ('System Admin', 'admin@adu.com', 'admin123', '9999999999', 'admin');

-- Insert Default Amenities
INSERT IGNORE INTO amenities (id, name) VALUES (1, 'WiFi'), (2, 'Charging Point'), (3, 'Water Bottle'), (4, 'Blankets'), (5, 'Live Tracking'), (6, 'CCTV'), (7, 'Emergency Exit');
