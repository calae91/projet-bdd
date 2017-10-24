-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Mar 24 Octobre 2017 à 14:48
-- Version du serveur :  10.1.24-MariaDB-6
-- Version de PHP :  7.0.22-3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `Projet`
--

-- --------------------------------------------------------

--
-- Structure de la table `Amulette`
--

CREATE TABLE `Amulette` (
  `Nom` varchar(25) NOT NULL,
  `inteligence` int(25) NOT NULL,
  `force` int(25) NOT NULL,
  `endurance` int(25) NOT NULL,
  `chance` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Amulette`
--

INSERT INTO `Amulette` (`Nom`, `inteligence`, `force`, `endurance`, `chance`) VALUES
('amulette nul', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `bottes`
--

CREATE TABLE `bottes` (
  `Nom` varchar(25) NOT NULL,
  `inteligence` int(25) NOT NULL,
  `force` int(25) NOT NULL,
  `endurance` int(25) NOT NULL,
  `chance` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `bottes`
--

INSERT INTO `bottes` (`Nom`, `inteligence`, `force`, `endurance`, `chance`) VALUES
('bottes nul', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `Classe`
--

CREATE TABLE `Classe` (
  `Nom` varchar(25) NOT NULL,
  `inteligence` int(64) NOT NULL,
  `force` int(64) NOT NULL,
  `endurance` int(64) NOT NULL,
  `chance` int(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Classe`
--

INSERT INTO `Classe` (`Nom`, `inteligence`, `force`, `endurance`, `chance`) VALUES
('benjamin', 0, 10, 10, 3);

-- --------------------------------------------------------

--
-- Structure de la table `Coiffe`
--

CREATE TABLE `Coiffe` (
  `Nom` varchar(25) NOT NULL,
  `inteligence` int(25) NOT NULL,
  `force` int(25) NOT NULL,
  `endurance` int(25) NOT NULL,
  `chance` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Coiffe`
--

INSERT INTO `Coiffe` (`Nom`, `inteligence`, `force`, `endurance`, `chance`) VALUES
('coiffe nul', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `Gants`
--

CREATE TABLE `Gants` (
  `Nom` varchar(25) NOT NULL,
  `inteligence` int(25) NOT NULL,
  `force` int(25) NOT NULL,
  `endurance` int(25) NOT NULL,
  `chance` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Gants`
--

INSERT INTO `Gants` (`Nom`, `inteligence`, `force`, `endurance`, `chance`) VALUES
('gants nul', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `Jambiere`
--

CREATE TABLE `Jambiere` (
  `Nom` varchar(25) NOT NULL,
  `inteligence` int(25) NOT NULL,
  `force` int(25) NOT NULL,
  `endurance` int(25) NOT NULL,
  `chance` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Jambiere`
--

INSERT INTO `Jambiere` (`Nom`, `inteligence`, `force`, `endurance`, `chance`) VALUES
('jambiere benjamin', 0, 5, 5, 1);

-- --------------------------------------------------------

--
-- Structure de la table `Niveau`
--

CREATE TABLE `Niveau` (
  `Niveau` int(25) NOT NULL,
  `inteligence` int(25) NOT NULL,
  `force` int(25) NOT NULL,
  `endurance` int(25) NOT NULL,
  `chance` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Niveau`
--

INSERT INTO `Niveau` (`Niveau`, `inteligence`, `force`, `endurance`, `chance`) VALUES
(1, 1, 1, 1, 1),
(2, 2, 3, 3, 2);

-- --------------------------------------------------------

--
-- Structure de la table `Personnage`
--

CREATE TABLE `Personnage` (
  `Nom` varchar(25) NOT NULL,
  `Classe` varchar(25) NOT NULL,
  `Niveau` int(25) NOT NULL,
  `coiffe` varchar(25) NOT NULL,
  `bottes` varchar(25) NOT NULL,
  `jambiere` varchar(25) NOT NULL,
  `gants` varchar(25) NOT NULL,
  `torse` varchar(25) NOT NULL,
  `amulette` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Personnage`
--

INSERT INTO `Personnage` (`Nom`, `Classe`, `Niveau`, `coiffe`, `bottes`, `jambiere`, `gants`, `torse`, `amulette`) VALUES
('benjamin', 'benjamin', 1, 'coiffe nul', 'bottes nul', 'jambiere benjamin', 'gants nul', 'torse nul', 'amulette nul');

-- --------------------------------------------------------

--
-- Structure de la table `Torses`
--

CREATE TABLE `Torses` (
  `Nom` varchar(25) NOT NULL,
  `inteligence` int(25) NOT NULL,
  `force` int(25) NOT NULL,
  `endurance` int(25) NOT NULL,
  `chance` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Torses`
--

INSERT INTO `Torses` (`Nom`, `inteligence`, `force`, `endurance`, `chance`) VALUES
('Torse nul', 0, 1, 0, 0);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Amulette`
--
ALTER TABLE `Amulette`
  ADD PRIMARY KEY (`Nom`);

--
-- Index pour la table `bottes`
--
ALTER TABLE `bottes`
  ADD PRIMARY KEY (`Nom`);

--
-- Index pour la table `Classe`
--
ALTER TABLE `Classe`
  ADD PRIMARY KEY (`Nom`);

--
-- Index pour la table `Coiffe`
--
ALTER TABLE `Coiffe`
  ADD PRIMARY KEY (`Nom`);

--
-- Index pour la table `Gants`
--
ALTER TABLE `Gants`
  ADD PRIMARY KEY (`Nom`);

--
-- Index pour la table `Jambiere`
--
ALTER TABLE `Jambiere`
  ADD PRIMARY KEY (`Nom`);

--
-- Index pour la table `Niveau`
--
ALTER TABLE `Niveau`
  ADD PRIMARY KEY (`Niveau`);

--
-- Index pour la table `Torses`
--
ALTER TABLE `Torses`
  ADD PRIMARY KEY (`Nom`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
