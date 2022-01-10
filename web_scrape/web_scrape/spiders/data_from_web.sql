-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 10, 2022 at 11:31 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Scrap`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_from_web`
--

CREATE TABLE `data_from_web` (
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `ratting` varchar(255) NOT NULL,
  `prices` varchar(255) NOT NULL,
  `Amenities` varchar(255) NOT NULL,
  `images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_from_web`
--

INSERT INTO `data_from_web` (`name`, `location`, `ratting`, `prices`, `Amenities`, `images`) VALUES
('The Taj Mahal Palace Mumbai', 'Mumbai,South Mumbai', '9.2 Excellent', '₹ 300+', 'Free Wi-Fi Pool Spa', 'https://content.r9cdn.net/rimg/himg/bf/3c/5e/leonardo-1129513-Ball_Room_1_O-847738.jpg?width=335&height=268&crop=true'),
('Trident Nariman Point', 'Mumbai,South Mumbai', '9 Excellent', '₹ 109+', 'Parking Pool Spa', 'https://content.r9cdn.net/rimg/himg/a5/4f/bb/leonardo-1129620-TNP-Verandah_O-961009.jpg?width=335&height=268&crop=true'),
('Taj Mahal Tower, Mumbai', 'Mumbai,South Mumbai', '9.1 Excellent', '₹ 161+', 'Free Wi-Fi Pool Spa', 'https://content.r9cdn.net/himg/74/83/0f/leonardo-1996235-015_Pooside_O-176626.jpg'),
('Sofitel Mumbai BKC', 'Mumbai,Western Suburbs', '8.3 Excellent', '₹ 187+', 'Parking Free Wi-Fi Pool Pet-friendly', 'https://content.r9cdn.net/himg/8b/97/62/leonardo-5686415-6451_ex_01_p_3000x2250_O-176229.jpg'),
('Itc Maratha Mumbai, A Luxury Collection Hotel, Mumbai', 'Mumbai,Western Suburbs', '8.4 Excellent', '₹ 156+', 'Parking Free Wi-Fi Pool Spa', 'https://content.r9cdn.net/himg/f5/a5/d5/leonardo-125230268-bomlc-king-suite-7677-hor-clsc_O-141992.jpg'),
('Taj Lands End', 'Mumbai,Western Suburbs', '8.7 Excellent', '₹ 163+', 'Parking Free Wi-Fi Pool Spa', 'https://content.r9cdn.net/himg/b6/08/d9/leonardo-1140494-Grand_Luxury__Romm_O-485166.jpg'),
('Trident Bandra Kurla', 'Mumbai,Western Suburbs', '9 Excellent', '₹ 142+', 'Parking Free Wi-Fi Pool Spa', 'https://content.r9cdn.net/himg/4e/ff/26/leonardo-1132025-Trident_Club_Room_bedroom_O-640686.jpg'),
('The Leela Mumbai', 'Mumbai,Western Suburbs', '8.7 Excellent', '₹ 158+', 'Parking Pool Spa', 'https://content.r9cdn.net/himg/d8/4c/97/ice-24964-0760256_3XL-963796.jpg'),
('Novotel Mumbai Juhu Beach', 'Mumbai,Western Suburbs', '6.9 Good', '₹ 128+', 'Parking Free Wi-Fi Pool Pet-friendly', 'https://content.r9cdn.net/himg/0b/b2/4a/ice-85675954-68616570_3XL-988044.jpg'),
('Grand Hyatt Mumbai', 'Mumbai,Western Suburbs', '8.4 Excellent', '₹ 143+', 'Parking Free Wi-Fi Pool Pet-friendly', 'https://content.r9cdn.net/himg/7c/1b/91/ice-87537342-71974855_3XL-042392.jpg'),
('Taj Santacruz', 'Mumbai,Western Suburbs', '8.8 Excellent', '₹ 158+', 'Parking Free Wi-Fi Pool Spa', 'https://content.r9cdn.net/himg/9e/f2/c3/leonardo-100160086-Presidential_Suite_Hall_O-854896.jpg'),
('The Orchid Hotel Mumbai Vile Parle', 'Mumbai,Western Suburbs', '7.5 Good', '₹ 130+', 'Parking Free Wi-Fi Pool Spa', 'https://content.r9cdn.net/kimg/3c/e4/7e68beed77499865.jpg'),
('Itc Grand Central, A Luxury Collection Hotel, Mumbai', 'Mumbai,South Mumbai', '8.7 Excellent', '₹ 142+', 'Parking Free Wi-Fi Pool Spa', 'https://content.r9cdn.net/himg/a3/d6/9e/leonardo-125230264-bomrl-presidential-suite-livingroom-0130-hor-clsc_O-663960.jpg'),
('Sahara Star', 'Mumbai,Western Suburbs', '7.8 Good', '₹ 134+', 'Parking Free Wi-Fi Pool Spa', 'https://content.r9cdn.net/himg/3a/c6/66/leonardo-2671704-India_Mumbai__Hotel_Sahara_Star__Neptune_Suite_S-543467.jpg'),
('The Oberoi Mumbai', 'Mumbai,South Mumbai', '9.4 Excellent', '₹ 189+', 'Parking Free Wi-Fi Pool Spa', 'https://content.r9cdn.net/himg/82/ff/35/leonardo-1130600-TOM_KOHINOOR_SUITE_LIVING_ROOM_WITH_PIANO_1_O-407678.jpg'),
('The St. Regis Mumbai', 'Mumbai,South Mumbai', '8.9 Excellent', '₹ 209+', 'Parking Free Wi-Fi Pool Spa', 'https://content.r9cdn.net/himg/74/b5/8a/leonardo-2031218-bomxr-floor-lobby-1536-hor-clsc_O-109409.jpg'),
('JW Marriott Mumbai Juhu', 'Mumbai,Western Suburbs', '8.5 Excellent', '₹ 196+', 'Parking Free Wi-Fi Pool Spa', 'https://content.r9cdn.net/rimg/himg/cc/70/de/leonardo-183952820-bomjw-bath-6719-hor-clsc_O-259308.jpg?width=335&height=268&crop=true'),
('President, Mumbai - Ihcl Seleqtions', 'Mumbai,South Mumbai', '8.4 Excellent', '₹ 124+', 'Parking Free Wi-Fi Pool Pet-friendly', 'https://content.r9cdn.net/rimg/himg/7d/5c/98/leonardo-1124402-Superior_Room_-_Detail_O-502883.jpg?width=335&height=268&crop=true'),
('Four Seasons Hotel Mumbai', 'Mumbai,South Mumbai', '8.6 Excellent', '₹ 176+', 'Parking Free Wi-Fi Pool Pet-friendly', 'https://content.r9cdn.net/himg/0a/6b/2f/leonardo-1124152-MUM_bar2_O-598202.jpg'),
('JW Marriott Mumbai Sahar', 'Mumbai,Western Suburbs', '8.7 Excellent', '₹ 172+', 'Parking Free Wi-Fi Pool Spa', 'https://content.r9cdn.net/himg/b0/14/0c/leonardo-1960740-bomsa-exterior-0023-hor-clsc_O-856669.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
