-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-03-2020 a las 17:51:34
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecorent_mvc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coche`
--

CREATE TABLE `coche` (
  `coche_id` int(11) NOT NULL,
  `marca` varchar(100) NOT NULL,
  `modelo` varchar(100) NOT NULL,
  `chasis` varchar(17) NOT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `coche`
--

INSERT INTO `coche` (`coche_id`, `marca`, `modelo`, `chasis`, `deleted`) VALUES
(1, 'Rolls-Royce', 'Phantom', '5N1AT2ML9EC889507', 0),
(2, 'Toyota', '4Runner', '1FTEW1CF2FK991657', 1),
(3, 'Ford', 'Expedition', '1G6DH5EG1A0799935', 0),
(4, 'Dodge', 'Caravan', 'WBAGK934X1D719081', 1),
(5, 'Ford', 'Probe', 'WBSKG9C53BE017387', 0),
(6, 'Nissan', 'JUKE', 'WBAKG1C53BE830962', 1),
(7, 'Subaru', 'SVX', 'SCFEDCAD1CG965847', 0),
(8, 'Toyota', 'RAV4', '1C4RDJDG3CC540731', 1),
(9, 'Hyundai', 'Elantra', '5FRYD3H66EB185485', 0),
(10, 'Dodge', 'D250', '2G4GN5ECXB9105018', 1),
(11, 'Pontiac', 'Grand Prix', '1FTEW1E87AK416462', 0),
(12, 'Infiniti', 'QX', '1N6AF0KXXEN226194', 1),
(13, 'Dodge', 'Ram 1500', 'JN1CV6EK7BM291820', 0),
(14, 'Mazda', 'MX-5', 'WBXPC93567W319494', 0),
(15, 'Audi', 'S4', 'JN1AZ4EH4EM247394', 0),
(16, 'Lincoln', 'Continental', 'WBAUL7C5XCV536533', 0),
(17, 'Mercedes-Benz', 'S-Class', 'WBAET37423N917470', 0),
(18, 'Dodge', 'Ram Van 2500', 'WBAVB735X7V139837', 1),
(19, 'Toyota', 'Corolla', 'WAUHGAFC4DN171829', 0),
(20, 'Plymouth', 'Grand Voyager', 'WAUBH74F78N012599', 1),
(21, 'Volkswagen', 'Jetta', 'YV4902BZ6B1016826', 0),
(22, 'Lincoln', 'MKS', 'JTEBU5JR2E5604159', 0),
(23, 'Subaru', 'Justy', '5FNYF3H22FB866527', 0),
(24, 'Chevrolet', 'G-Series 2500', '1N6AF0KY8FN987591', 1),
(25, 'Mitsubishi', 'Raider', 'JH4NA21603T356483', 0),
(26, 'Chevrolet', 'S10', 'WAUJC58E25A639696', 0),
(27, 'Maserati', 'Quattroporte', 'WAUKC68D81A571724', 0),
(28, 'Audi', '100', 'JTDJTUD34ED209586', 0),
(29, 'Mercedes-Benz', 'C-Class', '3N6CM0KN1EK886885', 0),
(30, 'Volvo', 'S60', 'WDDLJ6HB1FA556166', 0),
(31, 'Cadillac', 'CTS-V', 'WAUMV94E78N448776', 0),
(32, 'Chevrolet', 'Camaro', '1G4HA5EMXBU996777', 0),
(33, 'Lincoln', 'Continental', '1GYEC63877R207728', 0),
(34, 'GMC', 'Safari', 'JN8AZ1MU1CW881908', 0),
(35, 'Lincoln', 'Navigator', '2G4GS5GX7E9075604', 0),
(36, 'Lexus', 'RX Hybrid', 'WAUR2AFD5EN392143', 0),
(37, 'BMW', '7 Series', '1G6KF57924U884680', 0),
(38, 'Audi', 'S5', 'WBAWB73537P478254', 1),
(39, 'Corbin', 'Sparrow', '3GYFNGE38ES047603', 0),
(40, 'Suzuki', 'Reno', 'WAULC68E13A663628', 1),
(41, 'Mazda', 'MX-5', 'JTHFF2C28F2011616', 0),
(42, 'Smart', 'Fortwo', '1G6DM577780044789', 1),
(43, 'Dodge', 'Ram 3500 Club', '1FTEX1E83AK164593', 0),
(44, 'Ford', 'Econoline E250', '3VWML7AJ0DM791686', 1),
(45, 'Chevrolet', 'Equinox', '1G6DL8EV7A0870361', 0),
(46, 'Ford', 'Windstar', '4T1BF1FK5DU928743', 0),
(47, 'BMW', '3 Series', 'WAULT58E54A533007', 0),
(48, 'Lexus', 'ES', '1FADP3E26FL996636', 1),
(49, 'Audi', 'S8', '1G4HR54K64U152666', 0),
(50, 'Volkswagen', 'Corrado', '1D4PT6GX9AW104452', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamo`
--

CREATE TABLE `prestamo` (
  `prestamo` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `coche_id` int(11) NOT NULL,
  `fecha_ini` datetime NOT NULL DEFAULT current_timestamp(),
  `fecha_fin` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `prestamo`
--

INSERT INTO `prestamo` (`prestamo`, `usuario_id`, `coche_id`, `fecha_ini`, `fecha_fin`) VALUES
(1, 45, 34, '2020-01-31 00:00:00', NULL),
(2, 21, 15, '2020-03-01 00:00:00', NULL),
(3, 29, 12, '2020-01-15 00:00:00', '2020-05-27 00:00:00'),
(4, 21, 15, '2020-02-10 00:00:00', '2020-09-05 00:00:00'),
(5, 27, 16, '2020-02-09 00:00:00', NULL),
(6, 36, 38, '2020-02-07 00:00:00', NULL),
(7, 22, 15, '2020-03-01 00:00:00', NULL),
(8, 5, 14, '2020-02-02 00:00:00', '2020-06-17 00:00:00'),
(9, 22, 50, '2020-01-23 00:00:00', '2020-06-26 00:00:00'),
(10, 5, 27, '2020-02-14 00:00:00', '2020-09-05 00:00:00'),
(11, 23, 28, '2020-01-28 00:00:00', NULL),
(12, 19, 7, '2020-01-05 00:00:00', '2020-03-10 00:00:00'),
(13, 50, 5, '2020-02-01 00:00:00', NULL),
(14, 26, 15, '2020-02-24 00:00:00', NULL),
(15, 15, 42, '2020-01-03 00:00:00', '2020-05-31 00:00:00'),
(16, 19, 44, '2020-01-22 00:00:00', NULL),
(17, 46, 39, '2020-01-05 00:00:00', '2020-09-05 00:00:00'),
(18, 3, 44, '2020-01-22 00:00:00', '2020-03-06 00:00:00'),
(19, 18, 45, '2020-02-08 00:00:00', '2020-05-08 00:00:00'),
(20, 31, 42, '2020-01-06 00:00:00', NULL),
(21, 42, 30, '2020-02-04 00:00:00', NULL),
(22, 14, 40, '2020-01-03 00:00:00', '2020-07-18 00:00:00'),
(23, 20, 30, '2020-02-07 00:00:00', NULL),
(24, 22, 43, '2020-03-02 00:00:00', NULL),
(25, 27, 24, '2020-01-28 00:00:00', '2020-08-28 00:00:00'),
(26, 47, 29, '2020-02-23 00:00:00', '2020-07-12 00:00:00'),
(27, 44, 46, '2020-02-14 00:00:00', '2020-05-06 00:00:00'),
(28, 21, 2, '2020-02-02 00:00:00', '2020-06-25 00:00:00'),
(29, 26, 34, '2020-02-14 00:00:00', '2020-07-16 00:00:00'),
(30, 12, 39, '2020-02-25 00:00:00', NULL),
(31, 6, 20, '2020-02-22 00:00:00', NULL),
(32, 47, 47, '2020-02-10 00:00:00', NULL),
(33, 9, 3, '2020-02-12 00:00:00', '2020-08-09 00:00:00'),
(34, 8, 49, '2020-01-01 00:00:00', NULL),
(35, 46, 37, '2020-03-03 00:00:00', '2020-05-24 00:00:00'),
(36, 27, 30, '2020-01-26 00:00:00', '2020-03-05 00:00:00'),
(37, 3, 46, '2020-01-21 00:00:00', '2020-04-04 00:00:00'),
(38, 42, 46, '2020-02-09 00:00:00', NULL),
(39, 17, 14, '2020-01-05 00:00:00', '2020-09-18 00:00:00'),
(40, 7, 44, '2020-01-11 00:00:00', '2020-06-21 00:00:00'),
(41, 33, 2, '2020-01-22 00:00:00', NULL),
(42, 12, 20, '2020-03-01 00:00:00', '2020-05-07 00:00:00'),
(43, 32, 20, '2020-01-27 00:00:00', '2020-08-01 00:00:00'),
(44, 26, 27, '2020-02-18 00:00:00', NULL),
(45, 41, 47, '2020-02-04 00:00:00', NULL),
(46, 13, 7, '2020-01-10 00:00:00', '2020-05-08 00:00:00'),
(47, 46, 11, '2020-01-12 00:00:00', NULL),
(48, 45, 36, '2020-01-14 00:00:00', NULL),
(49, 24, 4, '2020-02-27 00:00:00', '2020-05-12 00:00:00'),
(50, 49, 25, '2020-01-19 00:00:00', NULL),
(51, 8, 19, '2020-01-22 00:00:00', '2020-06-30 00:00:00'),
(52, 45, 9, '2020-01-26 00:00:00', '2020-09-01 00:00:00'),
(53, 43, 31, '2020-01-25 00:00:00', NULL),
(54, 27, 18, '2020-03-03 00:00:00', NULL),
(55, 16, 44, '2020-02-10 00:00:00', '2020-04-11 00:00:00'),
(56, 44, 17, '2020-01-30 00:00:00', NULL),
(57, 1, 29, '2020-02-13 00:00:00', '2020-04-07 00:00:00'),
(58, 37, 42, '2020-02-12 00:00:00', NULL),
(59, 25, 42, '2020-01-23 00:00:00', NULL),
(60, 37, 16, '2020-01-22 00:00:00', NULL),
(61, 47, 14, '2020-01-04 00:00:00', NULL),
(62, 25, 8, '2020-02-22 00:00:00', '2020-06-08 00:00:00'),
(63, 13, 1, '2020-02-20 00:00:00', '2020-09-06 00:00:00'),
(64, 1, 25, '2020-02-19 00:00:00', NULL),
(65, 38, 47, '2020-02-05 00:00:00', '2020-09-07 00:00:00'),
(66, 25, 32, '2020-02-12 00:00:00', NULL),
(67, 21, 17, '2020-01-23 00:00:00', NULL),
(68, 35, 13, '2020-01-19 00:00:00', NULL),
(69, 13, 37, '2020-02-09 00:00:00', NULL),
(70, 14, 17, '2020-01-14 00:00:00', NULL),
(71, 2, 50, '2020-02-02 00:00:00', '2020-03-15 00:00:00'),
(72, 2, 13, '2020-02-12 00:00:00', '2020-07-19 00:00:00'),
(73, 10, 45, '2020-02-27 00:00:00', NULL),
(74, 20, 45, '2020-01-16 00:00:00', '2020-05-16 00:00:00'),
(75, 42, 31, '2020-01-20 00:00:00', '2020-06-14 00:00:00'),
(76, 13, 1, '2020-01-14 00:00:00', NULL),
(77, 15, 17, '2020-02-07 00:00:00', '2020-03-02 00:00:00'),
(78, 31, 24, '2020-02-09 00:00:00', '2020-06-28 00:00:00'),
(79, 6, 29, '2020-02-16 00:00:00', NULL),
(80, 12, 31, '2020-01-19 00:00:00', '2020-05-08 00:00:00'),
(81, 46, 13, '2020-01-04 00:00:00', '2020-03-02 00:00:00'),
(82, 43, 41, '2020-02-20 00:00:00', NULL),
(83, 36, 2, '2020-02-15 00:00:00', '2020-07-27 00:00:00'),
(84, 34, 30, '2020-01-16 00:00:00', NULL),
(85, 43, 28, '2020-03-02 00:00:00', NULL),
(86, 35, 7, '2020-01-15 00:00:00', '2020-09-20 00:00:00'),
(87, 21, 6, '2020-02-06 00:00:00', '2020-05-06 00:00:00'),
(88, 7, 42, '2020-02-23 00:00:00', '2020-07-11 00:00:00'),
(89, 37, 46, '2020-02-25 00:00:00', NULL),
(90, 17, 49, '2020-02-25 00:00:00', NULL),
(91, 15, 5, '2020-02-17 00:00:00', '2020-07-28 00:00:00'),
(92, 31, 42, '2020-01-03 00:00:00', '2020-07-21 00:00:00'),
(93, 4, 40, '2020-02-17 00:00:00', '2020-06-06 00:00:00'),
(94, 46, 11, '2020-01-23 00:00:00', '2020-05-20 00:00:00'),
(95, 38, 18, '2020-01-04 00:00:00', '2020-05-18 00:00:00'),
(96, 35, 22, '2020-02-26 00:00:00', '2020-06-30 00:00:00'),
(97, 35, 45, '2020-01-22 00:00:00', '2020-03-30 00:00:00'),
(98, 5, 36, '2020-01-24 00:00:00', NULL),
(99, 41, 35, '2020-01-30 00:00:00', NULL),
(100, 28, 14, '2020-02-18 00:00:00', '2020-06-24 00:00:00'),
(101, 49, 39, '2020-01-24 00:00:00', NULL),
(102, 17, 9, '2020-02-19 00:00:00', NULL),
(103, 24, 26, '2020-02-01 00:00:00', NULL),
(104, 20, 43, '2020-01-06 00:00:00', '2020-09-06 00:00:00'),
(105, 15, 12, '2020-01-10 00:00:00', '2020-03-29 00:00:00'),
(106, 19, 28, '2020-01-11 00:00:00', NULL),
(107, 20, 43, '2020-01-20 00:00:00', NULL),
(108, 22, 12, '2020-02-14 00:00:00', '2020-08-31 00:00:00'),
(109, 42, 46, '2020-03-03 00:00:00', NULL),
(110, 28, 6, '2020-01-29 00:00:00', '2020-07-11 00:00:00'),
(111, 25, 6, '2020-02-20 00:00:00', NULL),
(112, 19, 38, '2020-02-26 00:00:00', '2020-03-17 00:00:00'),
(113, 46, 24, '2020-01-15 00:00:00', NULL),
(114, 20, 49, '2020-02-21 00:00:00', NULL),
(115, 29, 36, '2020-01-21 00:00:00', '2020-09-23 00:00:00'),
(116, 34, 7, '2020-02-10 00:00:00', NULL),
(117, 16, 38, '2020-02-28 00:00:00', NULL),
(118, 19, 28, '2020-01-13 00:00:00', NULL),
(119, 18, 14, '2020-01-19 00:00:00', NULL),
(120, 48, 18, '2020-01-28 00:00:00', NULL),
(121, 42, 5, '2020-02-05 00:00:00', NULL),
(122, 6, 16, '2020-01-09 00:00:00', '2020-08-28 00:00:00'),
(123, 48, 24, '2020-02-20 00:00:00', '2020-05-31 00:00:00'),
(124, 22, 26, '2020-02-01 00:00:00', '2020-07-05 00:00:00'),
(125, 28, 44, '2020-01-09 00:00:00', '2020-03-22 00:00:00'),
(126, 2, 37, '2020-01-01 00:00:00', NULL),
(127, 33, 35, '2020-02-20 00:00:00', '2020-07-11 00:00:00'),
(128, 10, 8, '2020-01-28 00:00:00', NULL),
(129, 19, 41, '2020-01-02 00:00:00', NULL),
(130, 1, 33, '2020-01-31 00:00:00', '2020-07-30 00:00:00'),
(131, 30, 29, '2020-02-29 00:00:00', NULL),
(132, 35, 15, '2020-02-19 00:00:00', NULL),
(133, 13, 44, '2020-02-13 00:00:00', NULL),
(134, 4, 25, '2020-02-17 00:00:00', NULL),
(135, 38, 21, '2020-01-30 00:00:00', '2020-03-29 00:00:00'),
(136, 10, 27, '2020-01-31 00:00:00', '2020-08-08 00:00:00'),
(137, 33, 11, '2020-01-13 00:00:00', '2020-05-07 00:00:00'),
(138, 39, 7, '2020-01-16 00:00:00', NULL),
(139, 2, 15, '2020-01-12 00:00:00', NULL),
(140, 31, 8, '2020-02-14 00:00:00', '2020-09-03 00:00:00'),
(141, 29, 37, '2020-02-28 00:00:00', NULL),
(142, 5, 23, '2020-02-25 00:00:00', '2020-04-05 00:00:00'),
(143, 46, 30, '2020-02-13 00:00:00', NULL),
(144, 34, 31, '2020-01-20 00:00:00', NULL),
(145, 35, 2, '2020-03-01 00:00:00', NULL),
(146, 10, 33, '2020-01-24 00:00:00', NULL),
(147, 25, 27, '2020-02-22 00:00:00', NULL),
(148, 34, 24, '2020-02-08 00:00:00', NULL),
(149, 12, 33, '2020-01-17 00:00:00', '2020-04-16 00:00:00'),
(150, 18, 39, '2020-02-13 00:00:00', NULL),
(151, 32, 46, '2020-02-02 00:00:00', '2020-07-30 00:00:00'),
(152, 40, 22, '2020-02-28 00:00:00', NULL),
(153, 4, 21, '2020-03-02 00:00:00', '2020-03-17 00:00:00'),
(154, 9, 5, '2020-01-20 00:00:00', NULL),
(155, 2, 43, '2020-01-18 00:00:00', NULL),
(156, 38, 43, '2020-01-12 00:00:00', NULL),
(157, 37, 34, '2020-01-23 00:00:00', NULL),
(158, 21, 17, '2020-01-23 00:00:00', '2020-04-10 00:00:00'),
(159, 20, 33, '2020-02-13 00:00:00', '2020-09-12 00:00:00'),
(160, 28, 30, '2020-01-19 00:00:00', '2020-05-31 00:00:00'),
(161, 29, 14, '2020-01-09 00:00:00', '2020-04-10 00:00:00'),
(162, 18, 42, '2020-01-26 00:00:00', '2020-04-12 00:00:00'),
(163, 19, 39, '2020-01-08 00:00:00', '2020-09-28 00:00:00'),
(164, 44, 11, '2020-03-01 00:00:00', '2020-07-16 00:00:00'),
(165, 46, 25, '2020-01-11 00:00:00', '2020-09-22 00:00:00'),
(166, 2, 22, '2020-01-16 00:00:00', NULL),
(167, 43, 47, '2020-01-30 00:00:00', NULL),
(168, 33, 34, '2020-01-04 00:00:00', '2020-04-02 00:00:00'),
(169, 8, 6, '2020-02-01 00:00:00', NULL),
(170, 46, 11, '2020-01-05 00:00:00', NULL),
(171, 23, 25, '2020-01-18 00:00:00', NULL),
(172, 21, 38, '2020-01-21 00:00:00', '2020-08-26 00:00:00'),
(173, 19, 20, '2020-01-27 00:00:00', '2020-09-30 00:00:00'),
(174, 13, 14, '2020-01-08 00:00:00', '2020-10-02 00:00:00'),
(175, 1, 10, '2020-01-15 00:00:00', '2020-04-29 00:00:00'),
(176, 22, 50, '2020-01-31 00:00:00', '2020-08-02 00:00:00'),
(177, 39, 27, '2020-01-16 00:00:00', '2020-07-15 00:00:00'),
(178, 30, 35, '2020-01-27 00:00:00', NULL),
(179, 34, 28, '2020-01-16 00:00:00', '2020-04-07 00:00:00'),
(180, 48, 47, '2020-02-17 00:00:00', NULL),
(181, 43, 50, '2020-01-24 00:00:00', NULL),
(182, 21, 12, '2020-01-10 00:00:00', NULL),
(183, 11, 22, '2020-02-26 00:00:00', '2020-07-30 00:00:00'),
(184, 14, 14, '2020-02-28 00:00:00', NULL),
(185, 5, 22, '2020-02-05 00:00:00', NULL),
(186, 17, 17, '2020-02-04 00:00:00', NULL),
(187, 19, 39, '2020-02-28 00:00:00', NULL),
(188, 38, 28, '2020-01-24 00:00:00', '2020-07-10 00:00:00'),
(189, 1, 40, '2020-01-17 00:00:00', '2020-07-06 00:00:00'),
(190, 16, 43, '2020-02-01 00:00:00', NULL),
(191, 6, 2, '2020-02-05 00:00:00', '2020-06-27 00:00:00'),
(192, 35, 8, '2020-03-03 00:00:00', '2020-05-01 00:00:00'),
(193, 43, 34, '2020-01-22 00:00:00', '2020-06-26 00:00:00'),
(194, 20, 15, '2020-02-25 00:00:00', '2020-07-25 00:00:00'),
(195, 48, 47, '2020-02-14 00:00:00', NULL),
(196, 2, 26, '2020-01-16 00:00:00', NULL),
(197, 8, 48, '2020-01-11 00:00:00', NULL),
(198, 31, 9, '2020-01-19 00:00:00', NULL),
(199, 50, 30, '2020-01-03 00:00:00', '2020-04-04 00:00:00'),
(200, 49, 9, '2020-01-10 00:00:00', '2020-08-11 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuario_id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass_wd` varchar(32) NOT NULL,
  `admin` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario_id`, `nombre`, `apellidos`, `email`, `pass_wd`, `admin`) VALUES
(1, 'Una', 'Merrgen', 'umerrgen0@hibu.com', '21232f297a57a5a743894a0e4a801fc3', 1),
(2, 'Audie', 'Nyssens', 'anyssens1@indiatimes.com', '827ccb0eea8a706c4c34a16891f84e7b', NULL),
(3, 'Shaine', 'Salvati', 'ssalvati2@xing.com', '9ac130640b81358bef30c6545589d9cc', NULL),
(4, 'Alessandro', 'Levy', 'alevy3@tmall.com', 'a405268afe6883a30098a7a3d385ee14', NULL),
(5, 'Leandra', 'Lethlay', 'llethlay4@intel.com', 'deb80d99624e2152ab04c5185ec76e35', NULL),
(6, 'Athene', 'Fackrell', 'afackrell5@yahoo.co.jp', 'b038dc59a94ddedc0352a0366f102285', NULL),
(7, 'Brooks', 'Adriaens', 'badriaens6@instagram.com', '8ad40a4226e48d246ef0cd472bc31d28', NULL),
(8, 'Kym', 'Bollin', 'kbollin7@geocities.com', '636ec74453af882ae07db75a2c1be014', NULL),
(9, 'Nat', 'Metzing', 'nmetzing8@list-manage.com', '7da9a66a1f35b4e366058a66779820a7', NULL),
(10, 'Jasmin', 'Medd', 'jmedd9@unesco.org', '8b4e978fc5000f92965a68ef2781577e', NULL),
(11, 'Tallie', 'Toke', 'ttokea@plala.or.jp', '3a58212f6c1c0152896b82d5bcdc20e9', NULL),
(12, 'Jerrine', 'Shere', 'jshereb@sitemeter.com', '48004a8dd3d463cac419c7e7a400e0ba', NULL),
(13, 'Luce', 'Goodright', 'lgoodrightc@furl.net', 'c5e058aa92f94ef9720eef57afe2cbc7', NULL),
(14, 'Fred', 'Chapiro', 'fchapirod@ibm.com', '58f5048e091b72e39449d3dd194e8c67', NULL),
(15, 'Hastie', 'Edards', 'hedardse@google.nl', '7306186606b5fd2a2adc77217d1c9afd', NULL),
(16, 'Armin', 'Copeman', 'acopemanf@domainmarket.com', '55d0ba01210b9a3d2a6476bb6335b911', NULL),
(17, 'Carita', 'Aldcorn', 'caldcorng@vistaprint.com', 'fe92c69a732e271f32522d89d980d31d', NULL),
(18, 'Nobe', 'Beaves', 'nbeavesh@furl.net', '5b69f085d9c83340b9ba242ed6d02e06', NULL),
(19, 'Coraline', 'Berthomieu', 'cberthomieui@sourceforge.net', 'd00d875583d24a46c8a29dd92dc78ae8', NULL),
(20, 'Marie-jeanne', 'Knott', 'mknottj@utexas.edu', 'afd9e8deb78908ba28bc3f2df1668b31', NULL),
(21, 'Sharline', 'Portt', 'sporttk@blog.com', '62d8d298a6c73dac9dd925927867fab7', NULL),
(22, 'Keelby', 'Aucourte', 'kaucourtel@senate.gov', '66f697d5aeff609af926fe1f04f20f7e', NULL),
(23, 'Arthur', 'Kubecka', 'akubeckam@reuters.com', '8ea7d4021df294db1ad168b7218df3cd', NULL),
(24, 'Tillie', 'Pikett', 'tpikettn@paginegialle.it', '5c3c22aea08f7c56d4d326cafe2cacff', NULL),
(25, 'Linnie', 'Fishleigh', 'lfishleigho@dot.gov', '81dc9bdb52d04dc20036dbd8313ed055', NULL),
(26, 'Bree', 'Ough', 'boughp@infoseek.co.jp', 'ee2e8bb2b5b00dc97c2c80fdeacf68a1', NULL),
(27, 'Nancee', 'D\'Almeida', 'ndalmeidaq@time.com', '23ab6aac2b2499b8e76c27c85fb06b92', NULL),
(28, 'Keri', 'Wisson', 'kwissonr@issuu.com', 'c212eae9cbc0656039424342290df02c', NULL),
(29, 'Violante', 'Fulford', 'vfulfords@rambler.ru', '2b7099b8a60a20669f8d0eb7d34f97a9', NULL),
(30, 'Shaine', 'Rutherforth', 'srutherfortht@timesonline.co.uk', 'b9301bf4637f5b811f812f4b54c43f84', NULL),
(31, 'Nerty', 'Niezen', 'nniezenu@goo.gl', 'ccbab2d90ac158c81fcf8b597231eba9', NULL),
(32, 'Garey', 'Sidwick', 'gsidwickv@prweb.com', 'f76f0965d20d7ff762b707efe9e0c4da', NULL),
(33, 'Cordelia', 'Bowmaker', 'cbowmakerw@latimes.com', '1c4bc41538a1504a284f583891162b2e', NULL),
(34, 'Rolando', 'Aldwick', 'raldwickx@symantec.com', '91ef9892a83dafd12f4cad804fd840ef', NULL),
(35, 'Bernarr', 'Gorries', 'bgorriesy@youtube.com', '5f8cb58ba4a234088eaca026cba341cb', NULL),
(36, 'Boothe', 'Tharme', 'btharmez@mlb.com', 'a368c80c41b2bd03861ccedde5d1daed', NULL),
(37, 'Sullivan', 'Poe', 'spoe10@hud.gov', '7091563564283fb590ec3b1660e48425', NULL),
(38, 'Scot', 'Petric', 'spetric11@webmd.com', '5cb81819123f93b69fb2739d6e453f38', NULL),
(39, 'Natalie', 'Mercey', 'nmercey12@freewebs.com', '2f3d0bd0e4bf32d66149e6cd984bf4ce', NULL),
(40, 'Bertie', 'Farrey', 'bfarrey13@ocn.ne.jp', 'ffc82231219ea11996d1523c52ebb7c7', NULL),
(41, 'Chaddy', 'Kennelly', 'ckennelly14@ifeng.com', '002a3524886cf37061f605d1425db9e3', NULL),
(42, 'Corinna', 'Pegram', 'cpegram15@usatoday.com', '440bccccacda29d69e0b74a8664035de', NULL),
(43, 'Garik', 'Werrit', 'gwerrit16@sbwire.com', '6b50d6fe0d7f8882e6a21cac3eff48a9', NULL),
(44, 'Agosto', 'Copyn', 'acopyn17@jigsy.com', '2e0d701456f53d2dfc9e43306c8e0d46', NULL),
(45, 'Fabien', 'Goodanew', 'fgoodanew18@mayoclinic.com', '63bf3be4da9a8701838e21d2032fd721', NULL),
(46, 'Winni', 'Morkham', 'wmorkham19@soup.io', '1ff40178c581ab5d9f64bc1dfc1e81fa', NULL),
(47, 'Becki', 'Pitsall', 'bpitsall1a@constantcontact.com', '701fa0c027607685a5b066a4a5d1a5dd', NULL),
(48, 'Xenia', 'Cratere', 'xcratere1b@cnbc.com', 'c040155873d9ffc9326238f65d6f2bd8', NULL),
(49, 'Benton', 'Brotherwood', 'bbrotherwood1c@oracle.com', '1efee73aece4832679d46d6177adad5a', NULL),
(50, 'Giordano', 'Blaney', 'gblaney1d@xinhuanet.com', 'e31be61f3a50af6e1dc259c89c5a1471', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `coche`
--
ALTER TABLE `coche`
  ADD PRIMARY KEY (`coche_id`),
  ADD UNIQUE KEY `matricula` (`chasis`);

--
-- Indices de la tabla `prestamo`
--
ALTER TABLE `prestamo`
  ADD PRIMARY KEY (`prestamo`),
  ADD KEY `FK_usuario_id` (`usuario_id`),
  ADD KEY `FK_coche_id` (`coche_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `coche`
--
ALTER TABLE `coche`
  MODIFY `coche_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `prestamo`
--
ALTER TABLE `prestamo`
  MODIFY `prestamo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `prestamo`
--
ALTER TABLE `prestamo`
  ADD CONSTRAINT `FK_coche_id` FOREIGN KEY (`coche_id`) REFERENCES `coche` (`coche_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`usuario_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
