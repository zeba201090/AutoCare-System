-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2023 at 09:12 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `cservice`
--

CREATE TABLE `cservice` (
  `owner_phone` varchar(100) DEFAULT NULL,
  `vphone` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `service_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'pending',
  `date` date DEFAULT current_timestamp(),
  `address` varchar(100) NOT NULL,
  `garage` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cservice`
--

INSERT INTO `cservice` (`owner_phone`, `vphone`, `title`, `service_id`, `vendor_id`, `owner_id`, `status`, `date`, `address`, `garage`) VALUES
('01522222222', '01522222222', 'Car Wash', 46, 1, 2, 'pending', '2023-05-03', 'Mirpur 1', 'Ali Enterprize'),
('01522222222', '01700000000', 'Car Waxing', 47, 1, 2, 'pending', '2023-05-03', 'Mirpur 1', 'Ali 2'),
('01522222222', '01700000000', 'Car Wash', 48, 1, 2, 'pedning', '2023-05-03', 'Mirpur 1', 'Ali 2'),
('01522222222', '0190000000', 'Car Wash', 49, 3, 2, 'pending', '2023-05-03', 'Mirpur 1', 'sami garage'),
('01522222222', '01522222222', 'Replace Brake', 50, 1, 2, 'pending', '2023-05-03', 'Mirpur 1', 'Ali Enterprize'),
('01522222222', '01522222222', 'Engine Diagnosis', 51, 1, 2, 'pending', '2023-05-03', 'Mirpur 1', 'Ali Enterprize'),
('01522222222', '01522222222', 'Change engine oil', 52, 1, 2, 'pending', '2023-05-03', 'Mirpur 1', 'Ali Enterprize');

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `title` varchar(111) NOT NULL,
  `price` int(100) NOT NULL,
  `owner_phone` varchar(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`title`, `price`, `owner_phone`, `vendor_id`, `customer_name`, `date`) VALUES
('Brake Pads', 500, '1611345678', 3, 'A', '2023-05-02'),
('Windshield wipers', 300, '1612349679', 2, 'B', '2023-05-02'),
('Tires', 200, '01522222222', 1, 'Saadman', '2023-05-03'),
('brake pads', 1500, '01522222222', 1, 'Saadman', '2023-05-03'),
('ENGINE OIL', 3000, '01522222222', 1, 'Saadman', '2023-05-03'),
(' MOBIL BRAKE FLUID - DOT 4', 600, '01522222222', 1, 'Saadman', '2023-05-03');

-- --------------------------------------------------------

--
-- Table structure for table `discussion`
--

CREATE TABLE `discussion` (
  `id` int(11) NOT NULL,
  `parent_comment` varchar(500) NOT NULL,
  `student` varchar(1000) NOT NULL,
  `post` varchar(1000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `discussion`
--

INSERT INTO `discussion` (`id`, `parent_comment`, `student`, `post`, `date`) VALUES
(139, '0', 'Musarrat Zeba', 'hi', '2023-05-01 16:41:34'),
(138, '0', 'Musarrat Zeba', 'Why Do Signal Lights Blink Faster Suddenly? ', '2023-03-11 17:57:20'),
(137, '0', 'Musarrat Zeba', 'How Often Should I Replace My Windshield Wiper Blades? \n', '2023-03-11 09:02:10');

-- --------------------------------------------------------

--
-- Table structure for table `garage`
--

CREATE TABLE `garage` (
  `g_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `vendor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `garage`
--

INSERT INTO `garage` (`g_id`, `name`, `address`, `phone`, `email`, `vendor_id`) VALUES
(4, 'Ali Enterprize', 'Dhaka', '01522222222', 'test@test.com', 1),
(5, 'Tom Garage', 'Dhaka', '01700000000', 'test@email.com', 2),
(6, 'sami garage', 'Dhanmondi', '0190000000', 'sami@email.com', 3),
(7, 'sami garage 2', 'DMD', '011000000', 'sami@email.com', 3),
(8, 'test', 'test', '000000000', 'test@test.com', 9);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image_url` text NOT NULL,
  `description` varchar(1000) NOT NULL,
  `title` varchar(100) NOT NULL,
  `category` varchar(10) NOT NULL,
  `price` int(255) NOT NULL,
  `vendor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image_url`, `description`, `title`, `category`, `price`, `vendor_id`) VALUES
(35, 'IMG-6320f817364fd8.97161934.jpg', 'HELPS TO KEEP YOUR CAR CLEAN', 'Mobil', '1', 0, 0),
(36, 'IMG-6320f844064f00.95045152.jpg', 'HELPS TO KEEP YOUR CAR CLEAN', 'Mobil', '1', 0, 0),
(39, 'IMG-6320fa36b95f91.34283596.jpg', 'HELPS TO KEEP YOUR CAR CLEAN', 'Mobil', '1', 100000, 0),
(40, 'IMG-6321033cc11ec7.60561228.jpg', 'for toyota,original', 'brake pads', '4', 1500, 0),
(42, 'IMG-632463d704f969.96609222.jpg', 'high boiling point', ' MOBIL BRAKE FLUID - DOT 4', '5', 600, 2),
(43, 'IMG-63248fb81d9565.51037426.jpg', 'FCVGBHNJMK', 'ENGINE OIL', '1', 3000, 0),
(0, 'IMG-644d8cb0324ae5.31936559.jpg', 'Synthetic Oil', 'Mobil w30', '5', 2500, 0),
(0, 'IMG-644d8cb91e2921.67646940.jpg', 'Synthetic Oil', 'Mobil w30', '5', 2500, 0);

-- --------------------------------------------------------

--
-- Table structure for table `owners_info`
--

CREATE TABLE `owners_info` (
  `owner_id` int(11) NOT NULL,
  `owner_name` varchar(20) NOT NULL,
  `owner_phone_number` varchar(11) NOT NULL,
  `owner_address` varchar(100) NOT NULL,
  `password` varchar(16) NOT NULL,
  `owner_email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `owners_info`
--

INSERT INTO `owners_info` (`owner_id`, `owner_name`, `owner_phone_number`, `owner_address`, `password`, `owner_email`) VALUES
(1, 'Musarrat Zeba', '01999999999', 'Mirpur 13', '12345', 'zeba@email.com'),
(2, 'Saadman', '01522222222', 'Mirpur 1', '1234', 'sakib@email.com');

-- --------------------------------------------------------

--
-- Table structure for table `special_list`
--

CREATE TABLE `special_list` (
  `vid` int(11) DEFAULT NULL,
  `oid` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `garage` varchar(100) DEFAULT NULL,
  `onumber` varchar(100) DEFAULT NULL,
  `oaddress` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'pending',
  `date` date NOT NULL DEFAULT current_timestamp(),
  `sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `special_list`
--

INSERT INTO `special_list` (`vid`, `oid`, `title`, `garage`, `onumber`, `oaddress`, `status`, `date`, `sid`) VALUES
(1, 2, 'Custom Paint', 'Ali 2', '01522222222', 'Mirpur 1', 'done', '2023-05-03', 1),
(3, 2, 'Custom Paint', 'sami garage', '01522222222', 'Mirpur 1', 'pending', '2023-05-03', 2);

-- --------------------------------------------------------

--
-- Table structure for table `sservice`
--

CREATE TABLE `sservice` (
  `sservice_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `garage` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `vphone` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sservice`
--

INSERT INTO `sservice` (`sservice_id`, `vendor_id`, `garage`, `address`, `vphone`, `title`, `price`, `email`) VALUES
(1, 1, 'Ali 2', 'DMD', '01700000000', 'Custom Paint', '1500', 'ali@admin.com'),
(2, 3, 'sami garage', 'Dhanmondi', '0190000000', 'Custom Paint', '1200', 'sami@email.com');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_info`
--

CREATE TABLE `vehicle_info` (
  `v_id` int(11) NOT NULL,
  `model` varchar(100) NOT NULL,
  `milage` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `cyear` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicle_info`
--

INSERT INTO `vehicle_info` (`v_id`, `model`, `milage`, `owner_id`, `brand`, `cyear`) VALUES
(4, 'Agurao', 18000, 2, 'Lamborgini', 2010),
(9, 'Corolla', 15000, 1, 'Toyota', 2008);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_info`
--

CREATE TABLE `vendor_info` (
  `vendor_id` int(11) NOT NULL,
  `vendor_name` varchar(255) NOT NULL,
  `vendor_phone_number` varchar(11) NOT NULL,
  `vendor_email` varchar(100) NOT NULL,
  `password` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendor_info`
--

INSERT INTO `vendor_info` (`vendor_id`, `vendor_name`, `vendor_phone_number`, `vendor_email`, `password`) VALUES
(1, 'Ali', '01555555555', 'ali@gmail.com', '1234'),
(2, 'Tom', '01555555555', 'tom@email.com', '1234'),
(3, 'Sami', '01888888888', 'sami@email.com', '1234'),
(4, 'Rodoshi', '01333333333', 'r@email.com', '1234'),
(9, 'test vendor', '01900000', 'test@email.com', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cservice`
--
ALTER TABLE `cservice`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `discussion`
--
ALTER TABLE `discussion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `garage`
--
ALTER TABLE `garage`
  ADD PRIMARY KEY (`g_id`),
  ADD KEY `vendor_id` (`vendor_id`);

--
-- Indexes for table `owners_info`
--
ALTER TABLE `owners_info`
  ADD PRIMARY KEY (`owner_id`);

--
-- Indexes for table `special_list`
--
ALTER TABLE `special_list`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `vid` (`vid`),
  ADD KEY `oid` (`oid`);

--
-- Indexes for table `sservice`
--
ALTER TABLE `sservice`
  ADD PRIMARY KEY (`sservice_id`),
  ADD KEY `sservice` (`vendor_id`);

--
-- Indexes for table `vehicle_info`
--
ALTER TABLE `vehicle_info`
  ADD PRIMARY KEY (`v_id`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Indexes for table `vendor_info`
--
ALTER TABLE `vendor_info`
  ADD PRIMARY KEY (`vendor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cservice`
--
ALTER TABLE `cservice`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `discussion`
--
ALTER TABLE `discussion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `garage`
--
ALTER TABLE `garage`
  MODIFY `g_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `owners_info`
--
ALTER TABLE `owners_info`
  MODIFY `owner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `special_list`
--
ALTER TABLE `special_list`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sservice`
--
ALTER TABLE `sservice`
  MODIFY `sservice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vehicle_info`
--
ALTER TABLE `vehicle_info`
  MODIFY `v_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vendor_info`
--
ALTER TABLE `vendor_info`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `garage`
--
ALTER TABLE `garage`
  ADD CONSTRAINT `garage_ibfk_1` FOREIGN KEY (`vendor_id`) REFERENCES `vendor_info` (`vendor_id`);

--
-- Constraints for table `special_list`
--
ALTER TABLE `special_list`
  ADD CONSTRAINT `special_list_ibfk_1` FOREIGN KEY (`vid`) REFERENCES `vendor_info` (`vendor_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `special_list_ibfk_2` FOREIGN KEY (`oid`) REFERENCES `owners_info` (`owner_id`) ON DELETE CASCADE;

--
-- Constraints for table `sservice`
--
ALTER TABLE `sservice`
  ADD CONSTRAINT `sservice` FOREIGN KEY (`vendor_id`) REFERENCES `vendor_info` (`vendor_id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_info`
--
ALTER TABLE `vehicle_info`
  ADD CONSTRAINT `vehicle_info_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `owners_info` (`owner_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
