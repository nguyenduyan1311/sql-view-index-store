-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 13, 2021 at 10:55 AM
-- Server version: 8.0.22-0ubuntu0.20.04.3
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `createProduct` ()  BEGIN

  INSERT INTO Products(Id,productCode,productName,productPrice,productAmount,productDescription,productStatus) VALUES(2,456,'Kéo',2000,2,'Null','Null');

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteProducts` ()  BEGIN

  DELETE FROM customers WHERE Id = 1;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `editProduct` ()  BEGIN

  UPDATE Products SET productCode = 12, productName = 'a', productPrice = 4000, productAmount = 5, productDescription = '', productStatus = '' WHERE Id = 2;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `findAllProducts` ()  BEGIN

  SELECT * FROM Products;

END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `Products`
--

CREATE TABLE `Products` (
  `Id` int NOT NULL,
  `productCode` varchar(20) NOT NULL,
  `productName` varchar(20) NOT NULL,
  `productPrice` int NOT NULL,
  `productAmount` int NOT NULL,
  `productDescription` varchar(100) NOT NULL,
  `productStatus` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Products`
--

INSERT INTO `Products` (`Id`, `productCode`, `productName`, `productPrice`, `productAmount`, `productDescription`, `productStatus`) VALUES
(1, '123', 'Gạo', 1000, 1, 'No Description', 'No Status');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Products`
--
ALTER TABLE `Products`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `productCode` (`productCode`),
  ADD KEY `idx_productCode` (`productCode`),
  ADD KEY `idx_product` (`productName`,`productPrice`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Products`
--
ALTER TABLE `Products`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
