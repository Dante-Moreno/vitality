-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2023 at 10:36 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vitality`
--

-- --------------------------------------------------------

--
-- Table structure for table `fichasmedicas`
--

CREATE TABLE `fichasmedicas` (
  `ID` int(11) NOT NULL,
  `FechaCreacion` date DEFAULT NULL,
  `PacienteID` int(11) DEFAULT NULL,
  `Sintomas` text DEFAULT NULL,
  `Diagnostico` text DEFAULT NULL,
  `Tratamiento` text DEFAULT NULL,
  `NotasAdicionales` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `historialcitas`
--

CREATE TABLE `historialcitas` (
  `ID` int(11) NOT NULL,
  `FechaCita` date DEFAULT NULL,
  `PacienteID` int(11) DEFAULT NULL,
  `TipoCita` varchar(255) DEFAULT NULL,
  `DescripcionCita` text DEFAULT NULL,
  `ResultadosCita` text DEFAULT NULL,
  `RecetaMedica` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pacientes`
--

CREATE TABLE `pacientes` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Apellido` varchar(255) NOT NULL,
  `FechaNacimiento` date DEFAULT NULL,
  `Genero` enum('Masculino','Femenino','Otro') DEFAULT NULL,
  `Direccion` varchar(255) DEFAULT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `CorreoElectronico` varchar(255) DEFAULT NULL,
  `obra-social` varchar(50) NOT NULL,
  `id_obra_social` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personalmedico`
--

CREATE TABLE `personalmedico` (
  `ID` int(11) NOT NULL,
  `NombreMedico` varchar(255) DEFAULT NULL,
  `Especialidad` varchar(255) DEFAULT NULL,
  `NumeroLicenciaMedica` varchar(255) DEFAULT NULL,
  `TelefonoMedico` varchar(15) DEFAULT NULL,
  `CorreoElectronicoMedico` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pruebasmedicas`
--

CREATE TABLE `pruebasmedicas` (
  `ID` int(11) NOT NULL,
  `NombrePrueba` varchar(255) DEFAULT NULL,
  `FechaRealizacion` date DEFAULT NULL,
  `PacienteID` int(11) DEFAULT NULL,
  `ResultadosPrueba` text DEFAULT NULL,
  `Observaciones` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fichasmedicas`
--
ALTER TABLE `fichasmedicas`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PacienteID` (`PacienteID`);

--
-- Indexes for table `historialcitas`
--
ALTER TABLE `historialcitas`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PacienteID` (`PacienteID`);

--
-- Indexes for table `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `personalmedico`
--
ALTER TABLE `personalmedico`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `pruebasmedicas`
--
ALTER TABLE `pruebasmedicas`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PacienteID` (`PacienteID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fichasmedicas`
--
ALTER TABLE `fichasmedicas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `historialcitas`
--
ALTER TABLE `historialcitas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personalmedico`
--
ALTER TABLE `personalmedico`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pruebasmedicas`
--
ALTER TABLE `pruebasmedicas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fichasmedicas`
--
ALTER TABLE `fichasmedicas`
  ADD CONSTRAINT `fichasmedicas_ibfk_1` FOREIGN KEY (`PacienteID`) REFERENCES `pacientes` (`ID`);

--
-- Constraints for table `historialcitas`
--
ALTER TABLE `historialcitas`
  ADD CONSTRAINT `historialcitas_ibfk_1` FOREIGN KEY (`PacienteID`) REFERENCES `pacientes` (`ID`);

--
-- Constraints for table `pruebasmedicas`
--
ALTER TABLE `pruebasmedicas`
  ADD CONSTRAINT `pruebasmedicas_ibfk_1` FOREIGN KEY (`PacienteID`) REFERENCES `pacientes` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
