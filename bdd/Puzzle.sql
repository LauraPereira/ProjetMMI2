-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Client :  localhost
-- Généré le :  Lun 26 Novembre 2018 à 14:33
-- Version du serveur :  5.5.53-0+deb8u1
-- Version de PHP :  5.6.27-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `18mmi2pj06`
--

-- --------------------------------------------------------

--
-- Création de la table : `Puzzle`
--

CREATE TABLE Puzzle (
    `id` INT PRIMARY KEY NOT NULL,
    `matricePuzzle` VARCHAR(10),
    `pieces` VARCHAR(50)
    );

--
-- Contenu de la table `Puzzle`
--

INSERT INTO `Puzzle` (`matricePuzzle`, `pieces`) VALUES
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte1.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte2.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte3.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte4.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte5.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte6.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte7.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte8.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte9.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte10.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte11.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte12.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte13.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte14.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte15.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte16.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte17.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte18.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte19.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte20.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte21.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte22.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte23.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte24.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte25.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte26.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte27.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte28.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte29.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte30.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte31.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte32.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte33.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte34.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte35.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte36.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte37.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte38.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte39.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte40.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte41.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte42.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte43.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte44.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte45.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte46.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte47.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte48.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte49.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte50.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte51.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte52.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte53.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte54.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte55.png'),
('', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte56.png');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
