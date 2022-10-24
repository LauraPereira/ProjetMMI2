-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Client :  localhost
-- Généré le :  Jeu 21 Mars 2019 à 11:12
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
-- Structure de la table `cartes`
--

CREATE TABLE `cartes` (
  `idCartes` int(11) NOT NULL,
  `CartePouvoir` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CarteDieux` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Coloriage`
--

CREATE TABLE `Coloriage` (
  `id` int(11) NOT NULL,
  `imageNonColorie` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageColorie` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Jeu`
--

CREATE TABLE `Jeu` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `Jeu`
--

INSERT INTO `Jeu` (`id`) VALUES
(1),
(2),
(3),
(4),
(5);

-- --------------------------------------------------------

--
-- Structure de la table `Memory`
--

CREATE TABLE `Memory` (
  `id` int(11) NOT NULL,
  `DosCartes` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE `pays` (
  `id` int(11) NOT NULL,
  `nomPays` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `VideoCuisine` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `VideoHistoire` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `VideoIntroduction` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageOtarie` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imageAnimalPays` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iconeLi` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imageDecoPays` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `urlJeu` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagePuzzle` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `pays`
--

INSERT INTO `pays` (`id`, `nomPays`, `VideoCuisine`, `VideoHistoire`, `VideoIntroduction`, `imageOtarie`, `imageAnimalPays`, `iconeLi`, `imageDecoPays`, `url`, `urlJeu`, `imagePuzzle`) VALUES
(1, 'L\'Égypte', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/videos/MenenathCuisineEgypte.mp4', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/videos/DessinAnimeEgypte.mp4', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/videos/IntroEgypte.mp4', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/OtarieEgypte.png', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/EgypteChameau.png', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Pyramide.png', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/PyramideTrois.png', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/php/Pays.php?idLien=1', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/php/JeuPays.php?idLien=1', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/sphinx.png'),
(2, 'L\'Australie', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/videos/LaPavlova.mp4', '', '', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/OtarieAustralie.png', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Kangourou.png', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/IconeAustralie.png', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/PlancheSurf.png', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/php/Pays.php?idLien=2', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/php/JeuPays.php?idLien=2', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/puzzleSyndey.png'),
(3, 'L\'Inde', '', '', '', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/ImageOtarie.png', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Elephant.png', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/IconeInde.png', NULL, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/php/Pays.php?idLien=3', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/php/JeuPays.php?idLien=3', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/TajMahal.png'),
(4, 'Le Mexique', '', '', '', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/OtarieMexique.png', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Aigle.png', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/iconeMe.png', NULL, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/php/Pays.php?idLien=4', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/php/JeuPays.php?idLien=4', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/PuzzleMexique.png'),
(5, 'La Grèce', '', '', '', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/OtarieGrece.png', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Chouette.png', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/iconeGr.png', NULL, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/php/Pays.php?idLien=5', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/php/JeuPays.php?idLien=5', 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/PuzzleGrece.png');

-- --------------------------------------------------------

--
-- Structure de la table `Pieces`
--

CREATE TABLE `Pieces` (
  `id` int(11) NOT NULL,
  `pieces` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_Puzzle` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `Pieces`
--

INSERT INTO `Pieces` (`id`, `pieces`, `id_Puzzle`) VALUES
(1, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte1.png', 1),
(2, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte2.png', 1),
(3, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte3.png', 1),
(4, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte4.png', 1),
(5, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte5.png', 1),
(6, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte6.png', 1),
(7, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte7.png', 1),
(8, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte8.png', 1),
(9, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte9.png', 1),
(10, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte10.png', 1),
(11, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte11.png', 1),
(12, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte12.png', 1),
(13, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte13.png', 1),
(14, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte14.png', 1),
(15, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte15.png', 1),
(16, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte16.png', 1),
(17, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte17.png', 1),
(18, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte18.png', 1),
(19, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte19.png', 1),
(20, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte20.png', 1),
(21, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte21.png', 1),
(22, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte22.png', 1),
(23, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte23.png', 1),
(24, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte24.png', 1),
(25, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte25.png', 1),
(26, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte26.png', 1),
(27, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte27.png', 1),
(28, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte28.png', 1),
(29, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte29.png', 1),
(30, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte30.png', 1),
(31, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte31.png', 1),
(32, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte32.png', 1),
(33, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte33.png', 1),
(34, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte34.png', 1),
(35, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte35.png', 1),
(36, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte36.png', 1),
(37, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte37.png', 1),
(38, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte38.png', 1),
(39, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte39.png', 1),
(40, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte40.png', 1),
(41, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte41.png', 1),
(42, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte42.png', 1),
(43, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte43.png', 1),
(44, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte44.png', 1),
(45, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte45.png', 1),
(46, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte46.png', 1),
(47, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte47.png', 1),
(48, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte48.png', 1),
(49, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte49.png', 1),
(50, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte50.png', 1),
(51, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte51.png', 1),
(52, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte52.png', 1),
(53, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte53.png', 1),
(54, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte54.png', 1),
(55, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte55.png', 1),
(56, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Egypte/Egypte56.png', 1),
(57, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie1.png', 2),
(58, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie2.png', 2),
(59, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie3.png', 2),
(60, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie4.png', 2),
(61, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie5.png', 2),
(62, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie6.png', 2),
(63, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie7.png', 2),
(64, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie8.png', 2),
(65, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie9.png', 2),
(66, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie10.png', 2),
(67, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie11.png', 2),
(68, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie12.png', 2),
(69, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie13.png', 2),
(70, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie14.png', 2),
(71, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie15.png', 2),
(72, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie16.png', 2),
(73, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie17.png', 2),
(74, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie18.png', 2),
(75, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie19.png', 2),
(76, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie20.png', 2),
(77, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie21.png', 2),
(78, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie22.png', 2),
(79, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie23.png', 2),
(80, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie24.png', 2),
(81, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie25.png', 2),
(82, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie26.png', 2),
(83, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie27.png', 2),
(84, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie28.png', 2),
(85, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie29.png', 2),
(86, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie30.png', 2),
(87, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie31.png', 2),
(88, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie32.png', 2),
(89, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie33.png', 2),
(90, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie34.png', 2),
(91, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie35.png', 2),
(92, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie36.png', 2),
(93, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie37.png', 2),
(94, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie38.png', 2),
(95, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie39.png', 2),
(96, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie40.png', 2),
(97, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie41.png', 2),
(98, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie42.png', 2),
(99, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie43.png', 2),
(100, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie44.png', 2),
(101, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie45.png', 2),
(102, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie46.png', 2),
(103, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie47.png', 2),
(104, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie48.png', 2),
(105, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie49.png', 2),
(106, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie50.png', 2),
(107, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie51.png', 2),
(108, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie52.png', 2),
(109, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie53.png', 2),
(110, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie54.png', 2),
(111, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie55.png', 2),
(112, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Australie/Australie56.png', 2),
(113, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde1.png', 3),
(114, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde2.png', 3),
(115, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde3.png', 3),
(116, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde4.png', 3),
(117, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde5.png', 3),
(118, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde6.png', 3),
(119, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde7.png', 3),
(120, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde8.png', 3),
(121, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde9.png', 3),
(122, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde10.png', 3),
(123, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde11.png', 3),
(124, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde12.png', 3),
(125, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde13.png', 3),
(126, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde14.png', 3),
(127, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde15.png', 3),
(128, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde16.png', 3),
(129, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde17.png', 3),
(130, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde18.png', 3),
(131, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde19.png', 3),
(132, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde20.png', 3),
(133, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde21.png', 3),
(134, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde22.png', 3),
(135, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde23.png', 3),
(136, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde24.png', 3),
(137, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde25.png', 3),
(138, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde26.png', 3),
(139, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde27.png', 3),
(140, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde28.png', 3),
(141, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde29.png', 3),
(142, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde30.png', 3),
(143, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde31.png', 3),
(144, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde32.png', 3),
(145, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde33.png', 3),
(146, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde34.png', 3),
(147, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde35.png', 3),
(148, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde36.png', 3),
(149, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde37.png', 3),
(150, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde38.png', 3),
(151, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde39.png', 3),
(152, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde40.png', 3),
(153, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde41.png', 3),
(154, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde42.png', 3),
(155, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde43.png', 3),
(156, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde44.png', 3),
(157, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde45.png', 3),
(158, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde46.png', 3),
(159, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde47.png', 3),
(160, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde48.png', 3),
(161, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde49.png', 3),
(162, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde50.png', 3),
(163, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde51.png', 3),
(164, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde52.png', 3),
(165, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde53.png', 3),
(166, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde54.png', 3),
(167, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde55.png', 3),
(168, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Inde/Inde56.png', 3),
(169, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece1.png', 5),
(170, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece2.png', 5),
(171, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece3.png', 5),
(172, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece4.png', 5),
(173, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece5.png', 5),
(174, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece6.png', 5),
(175, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece7.png', 5),
(176, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece8.png', 5),
(177, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece9.png', 5),
(178, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece10.png', 5),
(179, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece11.png', 5),
(180, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece12.png', 5),
(181, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece13.png', 5),
(182, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece14.png', 5),
(183, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece15.png', 5),
(184, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece16.png', 5),
(185, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece17.png', 5),
(186, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece18.png', 5),
(187, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece19.png', 5),
(188, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece20.png', 5),
(189, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece21.png', 5),
(190, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece22.png', 5),
(191, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece23.png', 5),
(192, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece24.png', 5),
(193, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece25.png', 5),
(194, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece26.png', 5),
(195, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece27.png', 5),
(196, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece28.png', 5),
(197, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece29.png', 5),
(198, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece30.png', 5),
(199, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece31.png', 5),
(200, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece32.png', 5),
(201, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece33.png', 5),
(202, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece34.png', 5),
(203, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece35.png', 5),
(204, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece36.png', 5),
(205, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece37.png', 5),
(206, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece38.png', 5),
(207, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece39.png', 5),
(208, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece40.png', 5),
(209, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece41.png', 5),
(210, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece42.png', 5),
(211, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece43.png', 5),
(212, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece44.png', 5),
(213, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece45.png', 5),
(214, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece46.png', 5),
(215, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece47.png', 5),
(216, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece48.png', 5),
(217, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece49.png', 5),
(218, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece50.png', 5),
(219, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece51.png', 5),
(220, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece52.png', 5),
(221, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece53.png', 5),
(222, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece54.png', 5),
(223, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece55.png', 5),
(224, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Grece/Grece56.png', 5),
(225, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique1.png', 4),
(226, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique2.png', 4),
(227, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique3.png', 4),
(228, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique4.png', 4),
(229, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique5.png', 4),
(230, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique6.png', 4),
(231, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique7.png', 4),
(232, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique8.png', 4),
(233, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique9.png', 4),
(234, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique10.png', 4),
(235, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique11.png', 4),
(236, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique12.png', 4),
(237, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique13.png', 4),
(238, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique14.png', 4),
(239, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique15.png', 4),
(240, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique16.png', 4),
(241, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique17.png', 4),
(242, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique18.png', 4),
(243, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique19.png', 4),
(244, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique20.png', 4),
(245, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique21.png', 4),
(246, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique22.png', 4),
(247, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique23.png', 4),
(248, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique24.png', 4),
(249, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique25.png', 4),
(250, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique26.png', 4),
(251, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique27.png', 4),
(252, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique28.png', 4),
(253, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique29.png', 4),
(254, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique30.png', 4),
(255, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique31.png', 4),
(256, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique32.png', 4),
(257, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique33.png', 4),
(258, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique34.png', 4),
(259, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique35.png', 4),
(260, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique36.png', 4),
(261, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique37.png', 4),
(262, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique38.png', 4),
(263, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique39.png', 4),
(264, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique40.png', 4),
(265, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique41.png', 4),
(266, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique42.png', 4),
(267, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique43.png', 4),
(268, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique44.png', 4),
(269, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique45.png', 4),
(270, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique46.png', 4),
(271, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique47.png', 4),
(272, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique48.png', 4),
(273, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique49.png', 4),
(274, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique50.png', 4),
(275, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique51.png', 4),
(276, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique52.png', 4),
(277, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique53.png', 4),
(278, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique54.png', 4),
(279, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique55.png', 4),
(280, 'https://projets.iut-laval.univ-lemans.fr/18mmi2pj06/media/images/Mexique/Mexique56.png', 4);

-- --------------------------------------------------------

--
-- Structure de la table `POSSEDE`
--

CREATE TABLE `POSSEDE` (
  `id` int(11) NOT NULL,
  `id_Jeu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `POSSEDE`
--

INSERT INTO `POSSEDE` (`id`, `id_Jeu`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Structure de la table `Puzzle`
--

CREATE TABLE `Puzzle` (
  `id` int(11) NOT NULL,
  `question` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reponse` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `Puzzle`
--

INSERT INTO `Puzzle` (`id`, `question`, `reponse`) VALUES
(1, 'Comment se nomme ce monument?', 'sphinx'),
(2, 'Dans quelle ville se situe ce monument ?', 'Sydney'),
(3, 'Comment se nomme ce monument ?', 'Taj Mahal'),
(4, 'A quelle civilisation appartient ce monument ?', 'incas'),
(5, 'Où se situe ce monument ?', 'athènes');

-- --------------------------------------------------------

--
-- Structure de la table `QRMotCroises`
--

CREATE TABLE `QRMotCroises` (
  `idQ` int(11) NOT NULL,
  `questions` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reponses` varchar(800) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id` int(11) NOT NULL,
  `id_Jeu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `cartes`
--
ALTER TABLE `cartes`
  ADD PRIMARY KEY (`idCartes`),
  ADD KEY `cartes_Memory_FK` (`id`);

--
-- Index pour la table `Coloriage`
--
ALTER TABLE `Coloriage`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Jeu`
--
ALTER TABLE `Jeu`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Memory`
--
ALTER TABLE `Memory`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Pieces`
--
ALTER TABLE `Pieces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Pieces_Puzzle_FK` (`id_Puzzle`);

--
-- Index pour la table `POSSEDE`
--
ALTER TABLE `POSSEDE`
  ADD PRIMARY KEY (`id`,`id_Jeu`),
  ADD KEY `POSSEDE_Jeu0_FK` (`id_Jeu`);

--
-- Index pour la table `Puzzle`
--
ALTER TABLE `Puzzle`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `QRMotCroises`
--
ALTER TABLE `QRMotCroises`
  ADD PRIMARY KEY (`idQ`),
  ADD UNIQUE KEY `QRMotCroises_Jeu_AK` (`id_Jeu`),
  ADD KEY `QRMotCroises_Coloriage_FK` (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `cartes`
--
ALTER TABLE `cartes`
  MODIFY `idCartes` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Jeu`
--
ALTER TABLE `Jeu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `pays`
--
ALTER TABLE `pays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `Pieces`
--
ALTER TABLE `Pieces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;
--
-- AUTO_INCREMENT pour la table `QRMotCroises`
--
ALTER TABLE `QRMotCroises`
  MODIFY `idQ` int(11) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `cartes`
--
ALTER TABLE `cartes`
  ADD CONSTRAINT `cartes_Memory_FK` FOREIGN KEY (`id`) REFERENCES `Memory` (`id`);

--
-- Contraintes pour la table `Coloriage`
--
ALTER TABLE `Coloriage`
  ADD CONSTRAINT `Coloriage_Jeu_FK` FOREIGN KEY (`id`) REFERENCES `Jeu` (`id`);

--
-- Contraintes pour la table `Memory`
--
ALTER TABLE `Memory`
  ADD CONSTRAINT `Memory_Jeu_FK` FOREIGN KEY (`id`) REFERENCES `Jeu` (`id`);

--
-- Contraintes pour la table `Pieces`
--
ALTER TABLE `Pieces`
  ADD CONSTRAINT `Pieces_Puzzle_FK` FOREIGN KEY (`id_Puzzle`) REFERENCES `Puzzle` (`id`);

--
-- Contraintes pour la table `POSSEDE`
--
ALTER TABLE `POSSEDE`
  ADD CONSTRAINT `POSSEDE_Jeu0_FK` FOREIGN KEY (`id_Jeu`) REFERENCES `Jeu` (`id`),
  ADD CONSTRAINT `POSSEDE_pays_FK` FOREIGN KEY (`id`) REFERENCES `pays` (`id`);

--
-- Contraintes pour la table `Puzzle`
--
ALTER TABLE `Puzzle`
  ADD CONSTRAINT `Puzzle_Jeu_FK` FOREIGN KEY (`id`) REFERENCES `Jeu` (`id`);

--
-- Contraintes pour la table `QRMotCroises`
--
ALTER TABLE `QRMotCroises`
  ADD CONSTRAINT `QRMotCroises_Coloriage_FK` FOREIGN KEY (`id`) REFERENCES `Coloriage` (`id`),
  ADD CONSTRAINT `QRMotCroises_Jeu0_FK` FOREIGN KEY (`id_Jeu`) REFERENCES `Jeu` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
