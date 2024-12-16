-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql.byllteste.com.br
-- Generation Time: Dec 16, 2024 at 03:49 AM
-- Server version: 8.0.32-0ubuntu0.20.04.2
-- PHP Version: 8.1.2-1ubuntu2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `byll_bd_20`
--

-- --------------------------------------------------------

--
-- Table structure for table `hoteis`
--

CREATE TABLE `hoteis` (
  `id` int NOT NULL,
  `nome` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `endereco` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `descricao` text COLLATE utf8mb3_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `hoteis`
--

INSERT INTO `hoteis` (`id`, `nome`, `endereco`, `descricao`) VALUES
(1, 'Hotel Paradiso', 'Av. Atlântica, 500, Rio de Janeiro, RJ', 'Hotel 5 estrelas com vista para o mar e piscina infinita.'),
(2, 'Pousada das Flores', 'Rua das Rosas, 123, Gramado, RS', 'Charmosa pousada no coração de Gramado, ideal para casais.'),
(3, 'Resort Tropical', 'Estrada do Sol, km 10, Porto Seguro, BA', 'Resort all-inclusive com praia privativa e atividades aquáticas.'),
(4, 'Hotel Executivo', 'Rua Paulista, 900, São Paulo, SP', 'Hotel moderno com salas de conferência e wi-fi gratuito.'),
(5, 'Fazenda Boa Vista', 'Estrada Boa Vista, s/n, Campos do Jordão, SP', 'Hotel fazenda com clima de montanha e atividades ao ar livre.');

-- --------------------------------------------------------

--
-- Table structure for table `reservas`
--

CREATE TABLE `reservas` (
  `id` int NOT NULL,
  `hotel_id` int NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `reservas`
--

INSERT INTO `reservas` (`id`, `hotel_id`, `checkin`, `checkout`) VALUES
(1, 1, '2024-10-25', '2024-10-28'),
(2, 2, '2024-10-26', '2024-10-29'),
(3, 3, '2024-10-27', '2024-10-30'),
(4, 1, '2024-11-19', '2024-11-21'),
(5, 4, '2024-10-25', '2024-10-28'),
(6, 3, '2024-11-22', '2024-11-28'),
(7, 3, '2024-11-22', '2024-11-28'),
(8, 3, '2024-11-22', '2024-11-28'),
(9, 3, '2024-11-22', '2024-11-28'),
(10, 3, '2024-11-22', '2024-11-28'),
(11, 1, '2024-11-22', '2024-11-23'),
(12, 1, '2024-11-22', '2024-11-23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hoteis`
--
ALTER TABLE `hoteis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotel_id` (`hotel_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hoteis`
--
ALTER TABLE `hoteis`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `reservas_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `hoteis` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
