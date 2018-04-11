-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 11 avr. 2018 à 15:23
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `stage_bd`
--

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `IdUser` int(11) NOT NULL AUTO_INCREMENT,
  `Prenom` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Nom` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Numero` int(10) NOT NULL,
  `Mail` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Password` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Birthdate` date NOT NULL,
  `Sexe` char(2) NOT NULL,
  PRIMARY KEY (`IdUser`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`IdUser`, `Prenom`, `Nom`, `Numero`, `Mail`, `Password`, `Birthdate`, `Sexe`) VALUES
(1, 'Brandon', 'JIOUT', 649112047, 'test@test.fr', '0123456789', '1998-06-18', 'M'),
(6, 'Test', 'TTEST', 649112045, '', 'ttt', '1910-05-03', 'M');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
