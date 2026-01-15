-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2026 at 09:19 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrentalsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `userID`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `color` varchar(30) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `price` float NOT NULL,
  `available` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `brand`, `model`, `color`, `year`, `price`, `available`) VALUES
(1, 'BMW', 'X5', 'Black', 2022, 120, 1),
(2, 'Audi', 'A4', 'White', 2021, 100, 1),
(3, 'Mercedes', 'C200', 'Grey', 2020, 110, 1),
(4, 'Toyota', 'Corolla', 'Blue', 2019, 80, 0),
(5, 'VW', 'Golf', 'Red', 2018, 60, 1),
(6, 'Ford', 'Focus', 'Black', 2019, 85, 1),
(7, 'Hyundai', 'Elantra', 'Silver', 2020, 90, 0),
(8, 'Kia', 'Sportage', 'White', 2021, 105, 1),
(9, 'Nissan', 'Qashqai', 'Grey', 2018, 95, 1),
(10, 'Honda', 'Civic', 'Blue', 2019, 88, 1),
(11, 'Mazda', '3', 'Red', 2020, 92, 1),
(12, 'Peugeot', '308', 'White', 2017, 70, 0),
(13, 'Renault', 'Megane', 'Black', 2018, 78, 1),
(14, 'Skoda', 'Octavia', 'Grey', 2019, 85, 1),
(15, 'Opel', 'Astra', 'Blue', 2016, 68, 1),
(16, 'Seat', 'Leon', 'White', 2020, 82, 1),
(17, 'Fiat', 'Tipo', 'Silver', 2018, 65, 0),
(18, 'Volvo', 'S60', 'Black', 2021, 140, 1),
(19, 'Tesla', 'Model 3', 'White', 2022, 160, 1),
(20, 'Dacia', 'Duster', 'Grey', 2019, 75, 1),
(21, 'Subaru', 'Impreza', 'Blue', 2020, 95, 1),
(22, 'Jeep', 'Compass', 'Green', 2021, 115, 1),
(23, 'Lexus', 'IS', 'Silver', 2022, 150, 1),
(24, 'Porsche', 'Cayenne', 'Red', 2023, 200, 2),
(25, 'Range Rover', 'Evoque', 'Black', 2022, 180, 1);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `ID` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`ID`, `userID`) VALUES
(1, 3),
(2, 4),
(3, 5),
(4, 6),
(5, 7),
(6, 8),
(7, 9),
(8, 10),
(9, 11),
(10, 12),
(11, 13),
(12, 14),
(13, 15),
(14, 16),
(15, 17),
(16, 18),
(17, 19),
(18, 20),
(19, 21),
(20, 22);

-- --------------------------------------------------------

--
-- Table structure for table `rents`
--

CREATE TABLE `rents` (
  `ID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `carID` int(11) NOT NULL,
  `dateTime` varchar(50) DEFAULT NULL,
  `hours` int(11) DEFAULT NULL,
  `total` float DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rents`
--

INSERT INTO `rents` (`ID`, `userID`, `carID`, `dateTime`, `hours`, `total`, `status`) VALUES
(1, 3, 1, '2026-01-01 10:00', 24, 120, 1),
(2, 4, 2, '2026-01-02 09:00', 48, 200, 1),
(3, 5, 3, '2026-01-03 12:00', 24, 110, 1),
(4, 6, 4, '2026-01-04 14:00', 72, 240, 1),
(5, 7, 5, '2026-01-05 08:00', 24, 75, 1),
(6, 8, 6, '2026-01-06 10:00', 48, 170, 1),
(7, 9, 7, '2026-01-07 11:00', 24, 90, 1),
(8, 10, 8, '2026-01-08 09:00', 48, 210, 1),
(9, 11, 9, '2026-01-09 13:00', 24, 95, 1),
(10, 12, 10, '2026-01-10 15:00', 24, 88, 1),
(11, 13, 11, '2026-01-11 10:00', 48, 184, 1),
(12, 14, 12, '2026-01-12 09:00', 24, 70, 1),
(13, 15, 13, '2026-01-13 12:00', 24, 78, 1),
(14, 16, 14, '2026-01-14 14:00', 48, 170, 1),
(15, 17, 15, '2026-01-15 08:00', 24, 68, 1),
(16, 18, 16, '2026-01-16 10:00', 24, 82, 0),
(17, 19, 17, '2026-01-17 11:00', 48, 130, 0),
(18, 20, 18, '2026-01-18 09:00', 24, 140, 0),
(19, 21, 19, '2026-01-19 10:00', 24, 160, 0),
(20, 22, 20, '2026-01-20 12:00', 24, 75, 0),
(21, 3, 21, '2026-01-21 08:00', 48, 190, 0),
(22, 4, 22, '2026-01-22 14:00', 24, 115, 0),
(23, 5, 23, '2026-01-23 09:00', 72, 450, 0),
(24, 6, 24, '2026-01-24 11:00', 48, 400, 0),
(25, 7, 25, '2026-01-25 13:00', 24, 180, 0),
(26, 8, 1, '2025-12-20 10:00', 24, 120, 1),
(27, 9, 2, '2025-12-21 08:00', 48, 200, 1),
(28, 10, 3, '2025-12-22 14:00', 24, 110, 1),
(29, 11, 4, '2025-12-23 09:00', 72, 240, 1),
(30, 12, 5, '2025-12-24 11:00', 24, 75, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `first_name`, `last_name`, `email`, `phone_number`, `password`, `role`) VALUES
(1, 'Rumejsa', 'Duka', 'rumejsa0@gmail.com', '06888888888', 'rumejsa0', 'ADMIN'),
(2, 'Admin', 'Second', 'admin2@gmail.com', '0690000002', 'pass2', 'ADMIN'),
(3, 'Ana', 'Kola', 'ana@gmail.com', '0691111111', 'pass', 'CLIENT'),
(4, 'Erion', 'Deda', 'erion@gmail.com', '0691111112', 'pass', 'CLIENT'),
(5, 'Sara', 'Hoxha', 'sara@gmail.com', '0691111113', 'pass', 'CLIENT'),
(6, 'Ardi', 'Leka', 'ardi@gmail.com', '0691111114', 'pass', 'CLIENT'),
(7, 'Elira', 'Basha', 'elira@gmail.com', '0691111115', 'pass', 'CLIENT'),
(8, 'Jon', 'Meta', 'jon@gmail.com', '0691111116', 'pass', 'CLIENT'),
(9, 'Ina', 'Kruja', 'ina@gmail.com', '0691111117', 'pass', 'CLIENT'),
(10, 'Leo', 'Marku', 'leo@gmail.com', '0691111118', 'pass', 'CLIENT'),
(11, 'Nora', 'Gashi', 'nora@gmail.com', '0691111119', 'pass', 'CLIENT'),
(12, 'Kledi', 'Pepa', 'kledi@gmail.com', '0691111120', 'pass', 'CLIENT'),
(13, 'Mira', 'Zeka', 'mira@gmail.com', '0691111121', 'pass', 'CLIENT'),
(14, 'Edi', 'Lila', 'edi@gmail.com', '0691111122', 'pass', 'CLIENT'),
(15, 'Arta', 'Shehu', 'arta@gmail.com', '0691111123', 'pass', 'CLIENT'),
(16, 'Bledi', 'Rama', 'bledi@gmail.com', '0691111124', 'pass', 'CLIENT'),
(17, 'Era', 'Ismaili', 'era@gmail.com', '0691111125', 'pass', 'CLIENT'),
(18, 'Noel', 'Tafa', 'noel@gmail.com', '0691111126', 'pass', 'CLIENT'),
(19, 'Rina', 'Hysa', 'rina@gmail.com', '0691111127', 'pass', 'CLIENT'),
(20, 'Aldi', 'Prendi', 'aldi@gmail.com', '0691111128', 'pass', 'CLIENT'),
(21, 'Dorina', 'Kapxhiu', 'dorina@gmail.com', '0691111129', 'pass', 'CLIENT'),
(22, 'Flamur', 'Sula', 'flamur@gmail.com', '0691111130', 'pass', 'CLIENT');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `userID` (`userID`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `userID` (`userID`);

--
-- Indexes for table `rents`
--
ALTER TABLE `rents`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `carID` (`carID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `rents`
--
ALTER TABLE `rents`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`ID`);

--
-- Constraints for table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`ID`);

--
-- Constraints for table `rents`
--
ALTER TABLE `rents`
  ADD CONSTRAINT `rents_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`ID`),
  ADD CONSTRAINT `rents_ibfk_2` FOREIGN KEY (`carID`) REFERENCES `cars` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
