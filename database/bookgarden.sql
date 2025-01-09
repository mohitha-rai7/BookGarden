-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2024 at 05:15 PM
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
-- Database: `bookgarden`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(3, 'admin@gmail.com', 'admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_order`
--

CREATE TABLE `invoice_order` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `order_receiver_name` varchar(250) NOT NULL,
  `order_receiver_address` text NOT NULL,
  `order_total_before_tax` decimal(10,2) NOT NULL,
  `order_total_tax` decimal(10,2) NOT NULL,
  `order_tax_per` varchar(250) NOT NULL,
  `order_total_after_tax` double(10,2) NOT NULL,
  `order_amount_paid` decimal(10,2) NOT NULL,
  `order_total_amount_due` decimal(10,2) NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `invoice_order`
--

INSERT INTO `invoice_order` (`order_id`, `user_id`, `order_date`, `order_receiver_name`, `order_receiver_address`, `order_total_before_tax`, `order_total_tax`, `order_tax_per`, `order_total_after_tax`, `order_amount_paid`, `order_total_amount_due`, `note`) VALUES
(686, 1, '2023-07-05 12:29:25', 'Sahana', 'Krishna Nilaya , Kuchikkad , RD Nagar (P.O) Kudlu , Kasaragod, kerala', 800.00, 16.00, '2', 816.00, 816.00, 0.00, 'have a nice day'),
(687, 1, '2023-07-06 10:51:35', 'abhi', 'Shree Matha house Nandalike kedinje', 149994.00, 26998.92, '18', 176992.92, 180000.00, -3007.08, 'Have a blast day');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_order_item`
--

CREATE TABLE `invoice_order_item` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_code` varchar(250) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `order_item_quantity` decimal(10,2) NOT NULL,
  `order_item_price` decimal(10,2) NOT NULL,
  `order_item_final_amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `invoice_order_item`
--

INSERT INTO `invoice_order_item` (`order_item_id`, `order_id`, `item_code`, `item_name`, `order_item_quantity`, `order_item_price`, `order_item_final_amount`) VALUES
(4376, 686, '4234', 'gdfgd', 2.00, 300.00, 600.00),
(4377, 686, '64564', 'sfsdfs', 1.00, 200.00, 200.00),
(4379, 687, '001', 'Timing Chain', 6.00, 24999.00, 149994.00);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_user`
--

CREATE TABLE `invoice_user` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `invoice_user`
--

INSERT INTO `invoice_user` (`id`, `email`, `password`, `first_name`, `last_name`, `mobile`, `address`) VALUES
(123456, 'admin@phpzag.com', '12345', 'Admin', '', 12345678912, 'New Delhi 110096 India.');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `pname` mediumtext NOT NULL,
  `price` int(20) NOT NULL,
  `description` mediumtext NOT NULL,
  `image` varchar(1000) NOT NULL,
  `authorName` varchar(1000) NOT NULL,
  `publishDate` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `pname`, `price`, `description`, `image`, `authorName`, `publishDate`) VALUES
(24, 'To Kill a Mockingbird', 120, 'A classic novel that explores themes of racial injustice and moral growth in the American South through the eyes of young Scout Finch.\r\n', '1.jpg', 'Harper Lee', ''),
(25, '1984', 250, ' A dystopian masterpiece that portrays a totalitarian society where individuality and freedom are brutally suppressed', '2.jpg', 'George Orwell', ''),
(26, 'The Great Gatsby', 300, 'Set in the Roaring Twenties, this novel delves into the decadence and disillusionment of the American Dream through the eyes of Jay Gatsby.\r\n', '3.jpg', 'F. Scott Fitzgerald', ''),
(27, 'Pride and Prejudice', 170, ' A timeless romance that follows the spirited Elizabeth Bennet as she navigates love, society, and personal growth in Regency-era England.\r\n', '4.jpg', 'Jane Austen', '123335'),
(28, 'To the Lighthouse', 230, 'A modernist masterpiece that explores the complexities of human relationships, memory, and the passage of time.', '5.jpg', ' Virginia Woolf', ''),
(29, 'One Hundred Years of Solitude', 420, 'A sweeping saga that chronicles the rise and fall of the Buendía family over seven generations in the fictional town of Macondo.\r\n\r\n', '6.jpg', 'Gabriel García Márquez', ''),
(30, 'The Catcher in the Rye', 368, 'A coming-of-age novel that follows the rebellious teenager Holden Caulfield as he grapples with alienation, identity, and the phoniness of adult society', '7.jpg', 'J.D. Salinger', ''),
(31, 'Moby-Dick', 200, ' An epic tale of obsession and revenge as Captain Ahab pursues the elusive white whale across the vast expanse of the sea.\r\n\r\n', '8.jpg', 'Herman Melville', ''),
(32, 'The Brothers Karamazov', 250, 'A philosophical novel that delves into the moral and spiritual dilemmas of four brothers and their enigmatic father in 19th-century Russia', '9.jpg', 'Fyodor Dostoevsky', ''),
(33, 'Crime and Punishment', 454, ' A psychological thriller that follows the impoverished student Raskolnikov as he grapples with guilt and redemption after committing a heinous crime.\r\n\r\n', '10.jpg', 'Fyodor Dostoevsky', ''),
(34, 'The Lord of the Rings', 320, 'A beloved fantasy epic that transports readers to the enchanting world of Middle-earth, where a heroic quest to destroy the One Ring unfolds.\r\n\r\n', '11.jpg', 'J.R.R. Tolkien', '');

-- --------------------------------------------------------

--
-- Table structure for table `productbooking`
--

CREATE TABLE `productbooking` (
  `id` int(11) NOT NULL,
  `pname` varchar(1000) NOT NULL,
  `authorName` varchar(500) NOT NULL,
  `publishDate` varchar(500) NOT NULL,
  `price` int(20) NOT NULL,
  `qty` int(20) NOT NULL,
  `total` int(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `address` mediumtext NOT NULL,
  `status` varchar(200) NOT NULL,
  `eid` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productbooking`
--

INSERT INTO `productbooking` (`id`, `pname`, `authorName`, `publishDate`, `price`, `qty`, `total`, `fname`, `lname`, `email`, `phone`, `address`, `status`, `eid`) VALUES
(11, 'To Kill a Mockingbird', 'Harper Lee', '0', 120, 3, 360, 'Mohitha', 'Rai', 'shama@gmail.com', '+91741107160', 'kadaba', 'confirmed', 0),
(12, 'To Kill a Mockingbird', 'Harper Lee', '0', 120, 3, 360, 'Mohitha', 'Rai', 'shama@gmail.com', '+91741107160', 'kadaba', 'cancelled', 0),
(13, 'The Brothers Karamazov', 'Fyodor Dostoevsky', '0', 250, 2, 500, 'raksha', 'kevala', 'shama@gmail.com', '7411071609', 'sullia', 'confirmed', 0),
(14, 'The Great Gatsby', 'F. Scott Fitzgerald', '0', 300, 2, 600, 'shama', 'dk', 'shama@gmail.com', '7411071609', 'puttur', 'confirmed', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `Fullname` varchar(1000) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `state` varchar(200) NOT NULL,
  `district` varchar(100) NOT NULL,
  `street` varchar(12) NOT NULL,
  `city` varchar(1000) NOT NULL,
  `pincode` varchar(1000) NOT NULL,
  `contact_number` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `Fullname`, `email`, `password`, `state`, `district`, `street`, `city`, `pincode`, `contact_number`) VALUES
(8, 'Anshool naik', 'test@gmail.com', 'test@123', 'karnataka', 'Dakshin kannada', 'vidyanagar', 'Mangalore', '575013', '7483971270');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_order`
--
ALTER TABLE `invoice_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `invoice_order_item`
--
ALTER TABLE `invoice_order_item`
  ADD PRIMARY KEY (`order_item_id`);

--
-- Indexes for table `invoice_user`
--
ALTER TABLE `invoice_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productbooking`
--
ALTER TABLE `productbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `invoice_order`
--
ALTER TABLE `invoice_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=688;

--
-- AUTO_INCREMENT for table `invoice_order_item`
--
ALTER TABLE `invoice_order_item`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4380;

--
-- AUTO_INCREMENT for table `invoice_user`
--
ALTER TABLE `invoice_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123457;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `productbooking`
--
ALTER TABLE `productbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
