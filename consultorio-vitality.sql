-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-12-2023 a las 20:07:12
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `citas_medicas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `base`
--

CREATE TABLE `base` (
  `idb` int(11) NOT NULL,
  `base` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `base`
--

INSERT INTO `base` (`idb`, `base`) VALUES
(1, 'citas_medicas.sql');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `idcat` int(11) NOT NULL,
  `nomcat` varchar(150) NOT NULL,
  `state` char(1) NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`idcat`, `nomcat`, `state`, `fere`) VALUES
(2, 'Excipientes', '1', '2022-10-25 07:19:44'),
(3, 'Analgésicos', '1', '2022-10-25 07:28:01'),
(4, 'Antiinflamatorios', '1', '2022-10-25 07:19:58'),
(5, 'Antipiréticos', '1', '2022-10-25 07:20:04'),
(6, 'Laxantes', '1', '2022-10-25 07:27:56'),
(7, 'Antiinfecciosos', '1', '2022-10-25 07:20:18'),
(8, 'Antitusivos', '1', '2022-10-25 07:20:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consult`
--

CREATE TABLE `consult` (
  `idconslt` int(11) NOT NULL,
  `mtcl` text NOT NULL,
  `idpa` int(11) NOT NULL,
  `nompa` varchar(35) NOT NULL,
  `state` char(1) NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctor`
--

CREATE TABLE `doctor` (
  `idodc` int(11) NOT NULL,
  `ceddoc` varchar(15) NOT NULL,
  `nodoc` varchar(35) NOT NULL,
  `apdoc` varchar(35) NOT NULL,
  `nomesp` varchar(100) NOT NULL,
  `direcd` varchar(150) NOT NULL,
  `sexd` varchar(15) NOT NULL,
  `phd` char(13) NOT NULL,
  `nacd` date NOT NULL,
  `corr` varchar(30) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol` char(1) NOT NULL,
  `state` char(1) NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `doctor`
--

INSERT INTO `doctor` (`idodc`, `ceddoc`, `nodoc`, `apdoc`, `nomesp`, `direcd`, `sexd`, `phd`, `nacd`, `corr`, `username`, `password`, `rol`, `state`, `fere`) VALUES
(10, '09383353', 'RAMON RULEI', 'NUÑEZ VALENCIA', 'Cardiología', 'CALLE LAS APLOMINAS', 'Masculino', '+51 998747477', '1993-08-12', 'aacaad@gmail.com', 'ddvf', '3b593cffbd70aefca6fbdc2b1563bf1e', '3', '1', '2022-10-25 06:03:08'),
(11, '86577567', 'Benito', 'Cabrera', 'Endocrinología', 'calle las monteros', 'Masculino', '+51 998382323', '1992-04-12', '', '', '', '', '1', '2022-10-25 05:13:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `document`
--

CREATE TABLE `document` (
  `iddoc` int(11) NOT NULL,
  `nomfi` varchar(150) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `idpa` int(11) NOT NULL,
  `nompa` varchar(35) NOT NULL,
  `state` char(1) NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `document`
--

INSERT INTO `document` (`iddoc`, `nomfi`, `foto`, `idpa`, `nompa`, `state`, `fere`) VALUES
(1, 'radigrafia', '764173.jpeg', 2, 'Manuel Javier', '1', '2022-10-25 21:35:56'),
(2, 'otro ejemplo', '526177.png', 2, 'Manuel Javier', '1', '2022-10-25 21:41:34'),
(3, 'otro ejemplo', '426110.png', 2, 'Manuel Javier', '1', '2022-10-25 21:41:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `idpa` int(11) NOT NULL,
  `idodc` int(11) NOT NULL,
  `idlab` int(11) NOT NULL,
  `color` char(14) DEFAULT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `state` char(1) NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `chec` char(1) NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `events`
--

INSERT INTO `events` (`id`, `title`, `idpa`, `idodc`, `idlab`, `color`, `start`, `end`, `state`, `monto`, `chec`, `fere`) VALUES
(1, 'CITA 1', 1, 10, 5, '#CD5C5C', '2022-10-27 01:04:00', '2022-10-27 01:04:00', '1', 30.00, '1', '2022-10-27 06:04:51'),
(2, 'CITA 2', 2, 11, 4, '#FFC0CB', '2022-10-28 02:43:00', '2022-10-28 02:43:00', '1', 50.00, '1', '2022-10-27 06:43:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laboratory`
--

CREATE TABLE `laboratory` (
  `idlab` int(11) NOT NULL,
  `nomlab` varchar(150) NOT NULL,
  `state` char(1) NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `laboratory`
--

INSERT INTO `laboratory` (`idlab`, `nomlab`, `state`, `fere`) VALUES
(2, 'Pediatría', '1', '2022-10-25 06:48:26'),
(3, 'Rehabilitación', '1', '2022-10-25 06:48:44'),
(4, 'Endocrinología', '1', '2022-10-25 06:48:51'),
(5, 'Cardiología', '1', '2022-10-25 07:00:52'),
(6, 'Dermatología', '1', '2022-10-25 06:49:11'),
(7, 'Gastroenterología', '1', '2022-10-25 06:49:17'),
(8, 'Psiquiatría', '1', '2022-10-25 06:49:25'),
(9, 'Neurología', '1', '2022-10-25 06:49:37'),
(10, 'Neumología', '1', '2022-10-25 06:49:45'),
(12, 'Hematología', '1', '2022-10-25 06:49:59'),
(13, 'Oncología', '1', '2022-10-25 06:50:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nurse`
--

CREATE TABLE `nurse` (
  `idnur` int(11) NOT NULL,
  `numide` char(14) NOT NULL,
  `nomnur` varchar(35) NOT NULL,
  `apenur` varchar(35) NOT NULL,
  `nacinur` date NOT NULL,
  `sexnur` varchar(15) NOT NULL,
  `state` char(1) NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `nurse`
--

INSERT INTO `nurse` (`idnur`, `numide`, `nomnur`, `apenur`, `nacinur`, `sexnur`, `state`, `fere`) VALUES
(5, '09453534534534', 'MANUEL LUCAS', 'PERES JARAMILLO', '1996-03-01', 'Femenino', '1', '2022-10-25 06:11:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `patients`
--

CREATE TABLE `patients` (
  `idpa` int(11) NOT NULL,
  `numhs` char(8) NOT NULL,
  `nompa` varchar(30) NOT NULL,
  `apepa` varchar(30) NOT NULL,
  `direc` varchar(150) NOT NULL,
  `sex` varchar(15) NOT NULL,
  `grup` varchar(15) NOT NULL,
  `phon` char(13) NOT NULL,
  `cump` date NOT NULL,
  `corr` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol` char(1) NOT NULL,
  `state` char(1) NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `patients`
--

INSERT INTO `patients` (`idpa`, `numhs`, `nompa`, `apepa`, `direc`, `sex`, `grup`, `phon`, `cump`, `corr`, `username`, `password`, `rol`, `state`, `fere`) VALUES
(1, '46000505', 'Pedro', 'Perez', '45-4243', 'Masculino', 'A+', '+542262346624', '1995-08-12', '', '', '', '', '1', '2023-12-04 14:57:30'),
(2, '45907625', 'Gabriel Agustin', 'Vega', '43-5343', 'Masculino', 'O-', '+54 226266030', '2004-12-17', '', '', '', '', '1', '2023-12-04 14:56:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `idprcd` int(11) NOT NULL,
  `codpro` char(14) NOT NULL,
  `nompro` text NOT NULL,
  `idcat` int(11) NOT NULL,
  `preprd` decimal(10,2) NOT NULL,
  `stock` char(3) NOT NULL,
  `state` char(1) NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`idprcd`, `codpro`, `nompro`, `idcat`, `preprd`, `stock`, `state`, `fere`) VALUES
(1, 'AMF774FFBFBDBF', 'MANTIXA 2.5 MG X 30 COMPRIMIDOS', 5, 153.60, '90', '1', '2022-10-25 18:40:09'),
(2, 'SKU: 09434', 'Pomada Antiinflamatoria Lymphdiaral x 40 gr', 7, 45.00, '50', '1', '2022-10-25 18:58:17'),
(3, '09898978978978', 'cvcvcv', 3, 33.90, '99', '1', '2022-10-26 19:58:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `treatment`
--

CREATE TABLE `treatment` (
  `idtra` int(11) NOT NULL,
  `nomtra` text NOT NULL,
  `idpa` int(11) NOT NULL,
  `nompa` varchar(35) NOT NULL,
  `state` char(1) NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(35) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol` char(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `email`, `password`, `rol`, `created_at`) VALUES
(1, 'Ottaviano', 'Ottaviano', 'ottaviano@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f', '1', '2023-12-04 15:43:57'),
(2, 'secretaria', 'Secretaria', 'secretaria@gmail.com', '22222', '1', '2023-12-04 15:45:12');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `base`
--
ALTER TABLE `base`
  ADD PRIMARY KEY (`idb`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`idcat`);

--
-- Indices de la tabla `consult`
--
ALTER TABLE `consult`
  ADD PRIMARY KEY (`idconslt`);

--
-- Indices de la tabla `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`idodc`);

--
-- Indices de la tabla `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`iddoc`);

--
-- Indices de la tabla `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idpa` (`idpa`),
  ADD KEY `idodc` (`idodc`),
  ADD KEY `idlab` (`idlab`);

--
-- Indices de la tabla `laboratory`
--
ALTER TABLE `laboratory`
  ADD PRIMARY KEY (`idlab`);

--
-- Indices de la tabla `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`idnur`);

--
-- Indices de la tabla `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`idpa`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`idprcd`),
  ADD KEY `idcat` (`idcat`);

--
-- Indices de la tabla `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`idtra`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `base`
--
ALTER TABLE `base`
  MODIFY `idb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `idcat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `consult`
--
ALTER TABLE `consult`
  MODIFY `idconslt` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `doctor`
--
ALTER TABLE `doctor`
  MODIFY `idodc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `document`
--
ALTER TABLE `document`
  MODIFY `iddoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `laboratory`
--
ALTER TABLE `laboratory`
  MODIFY `idlab` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `nurse`
--
ALTER TABLE `nurse`
  MODIFY `idnur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `patients`
--
ALTER TABLE `patients`
  MODIFY `idpa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `idprcd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `treatment`
--
ALTER TABLE `treatment`
  MODIFY `idtra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`idpa`) REFERENCES `patients` (`idpa`),
  ADD CONSTRAINT `events_ibfk_2` FOREIGN KEY (`idodc`) REFERENCES `doctor` (`idodc`),
  ADD CONSTRAINT `events_ibfk_3` FOREIGN KEY (`idlab`) REFERENCES `laboratory` (`idlab`);

--
-- Filtros para la tabla `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`idcat`) REFERENCES `category` (`idcat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
