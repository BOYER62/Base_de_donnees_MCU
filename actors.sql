-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : mysql
-- Généré le : mar. 17 mai 2022 à 09:34
-- Version du serveur :  8.0.19
-- Version de PHP : 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `Marvel`
--

-- --------------------------------------------------------

--
-- Structure de la table `actors`
--

CREATE TABLE `actors` (
  `id_actors` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `first_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dob` date NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modification_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `actors`
--

INSERT INTO `actors` (`id_actors`, `name`, `first_name`, `dob`, `creation_date`, `modification_date`) VALUES
(1, 'Evans', 'Chris ', '1981-06-13', '2022-05-14 19:17:01', '2022-05-14 19:17:01'),
(2, 'Atwell', 'Hayley ', '1982-04-05', '2022-05-14 19:17:01', '2022-05-14 19:17:01'),
(3, 'Weaving', 'Hugo ', '1960-04-04', '2022-05-14 19:19:47', '2022-05-14 19:19:47'),
(4, 'Stan', 'Sebastian ', '1982-08-13', '2022-05-14 19:19:47', '2022-05-14 19:19:47'),
(5, ' Jones', 'Tommy Lee', '1946-09-15', '2022-05-14 19:21:22', '2022-05-14 19:21:22'),
(6, 'Larson', 'Brie', '1989-10-01', '2022-05-14 20:42:23', '2022-05-14 20:42:23'),
(7, 'Law', 'Jude ', '1972-12-29', '2022-05-14 20:42:23', '2022-05-14 20:42:23'),
(8, '	Jackson', 'Samuel L.', '1948-12-21', '2022-05-14 20:45:14', '2022-05-14 20:45:14'),
(9, 'Mendelsohn', 'Ben ', '1969-04-03', '2022-05-14 20:45:14', '2022-05-14 20:45:14'),
(10, 'Bening', 'Annette', '1958-05-29', '2022-05-14 20:46:37', '2022-05-14 20:46:37'),
(11, 'Downey Jr.', 'Robert ', '1965-04-04', '2022-05-14 20:54:56', '2022-05-14 20:54:56'),
(12, 'Paltrow', 'Gwyneth ', '1972-09-27', '2022-05-14 20:54:56', '2022-05-14 20:54:56'),
(13, 'Howard', 'Terrence ', '1969-03-11', '2022-05-14 20:57:27', '2022-05-14 20:57:27'),
(14, 'Bridges', 'Jeff ', '1949-12-04', '2022-05-14 20:57:27', '2022-05-14 20:57:27'),
(17, 'Leto', 'Jared', '1971-12-26', '2022-05-17 08:26:55', '2022-05-17 08:26:55'),
(21, 'Smith', 'Matt', '1982-10-28', '2022-05-17 08:43:38', '2022-05-17 08:43:38'),
(25, 'Arjona', 'Adria ', '1992-04-25', '2022-05-17 08:52:45', '2022-05-17 08:52:45'),
(26, 'Harris', 'Jared', '1961-08-24', '2022-05-17 08:54:12', '2022-05-17 08:54:12'),
(27, 'Gibson', 'Tyrese', '1978-12-30', '2022-05-17 08:57:59', '2022-05-17 08:57:59');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id_actors`),
  ADD UNIQUE KEY `name_2` (`name`,`first_name`,`dob`),
  ADD KEY `name` (`name`) USING BTREE;

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `actors`
--
ALTER TABLE `actors`
  MODIFY `id_actors` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
