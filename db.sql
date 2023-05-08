-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 07, 2023 at 10:20 PM
-- Server version: 10.3.38-MariaDB-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `afewebho_ec`
--

-- --------------------------------------------------------

--
-- Table structure for table `ranking`
--

CREATE TABLE `ranking` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `correct_qus` longtext DEFAULT NULL,
  `corrent_count` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ranking`
--

INSERT INTO `ranking` (`id`, `email`, `correct_qus`, `corrent_count`, `updated_at`, `created_at`) VALUES
(1, 'a@a.com', '[{\"question\":\"What is 2 + 2?\",\"answers\":[{\"text\":\"4\",\"correct\":\"true\"},{\"text\":\"22\",\"correct\":\"false\"}]},{\"question\":\"Who is the best YouTuber?\",\"answers\":[{\"text\":\"Web Dev Simplified\",\"correct\":\"true\"},{\"text\":\"Traversy Media\",\"correct\":\"true\"},{\"text\":\"Dev Ed\",\"correct\":\"true\"},{\"text\":\"Fun Fun Function\",\"correct\":\"true\"}]},{\"question\":\"What is 4 * 2?\",\"answers\":[{\"text\":\"6\",\"correct\":\"false\"},{\"text\":\"8\",\"correct\":\"true\"}]}]', 3, '2023-04-28 00:12:48', NULL),
(2, 'a@a.com', '[{\"question\":\"What is 2 + 2?\",\"answers\":[{\"text\":\"4\",\"correct\":\"true\"},{\"text\":\"22\",\"correct\":\"false\"}]},{\"question\":\"Who is the best YouTuber?\",\"answers\":[{\"text\":\"Web Dev Simplified\",\"correct\":\"true\"},{\"text\":\"Traversy Media\",\"correct\":\"true\"},{\"text\":\"Dev Ed\",\"correct\":\"true\"},{\"text\":\"Fun Fun Function\",\"correct\":\"true\"}]}]', 2, '2023-04-28 00:17:18', NULL),
(3, 'a@a.com', '[{\"question\":\"What is 2 + 2?\",\"answers\":[{\"text\":\"4\",\"correct\":\"true\"},{\"text\":\"22\",\"correct\":\"false\"}]},{\"question\":\"Who is the best YouTuber?\",\"answers\":[{\"text\":\"Web Dev Simplified\",\"correct\":\"true\"},{\"text\":\"Traversy Media\",\"correct\":\"true\"},{\"text\":\"Dev Ed\",\"correct\":\"true\"},{\"text\":\"Fun Fun Function\",\"correct\":\"true\"}]}]', 2, '2023-04-28 00:18:27', NULL),
(4, 'a@a.com', '[{\"question\":\"What is 2 + 2?\",\"answers\":[{\"text\":\"4\",\"correct\":\"true\"},{\"text\":\"22\",\"correct\":\"false\"}]},{\"question\":\"What is 3 - 2?\",\"answers\":[{\"text\":\"1\",\"correct\":\"true\"},{\"text\":\"32\",\"correct\":\"false\"}]},{\"question\":\"What is 10 * 2?\",\"answers\":[{\"text\":\"20\",\"correct\":\"true\"},{\"text\":\"12\",\"correct\":\"false\"}]}]', 3, '2023-04-28 00:31:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`) VALUES
(2, 'a', '123456789', 'a@a.com'),
(3, 'Amar Kumar', '123456789', 'amarmotiani2014@gmail.com'),
(4, 'Amar Kumar', '123456789', 'a@a1.com'),
(5, 'Amar Kumar', '123456789', 'a@a2.com'),
(6, 'abdullah', '123456789', 'abdullah@abdullah.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ranking`
--
ALTER TABLE `ranking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ranking`
--
ALTER TABLE `ranking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
