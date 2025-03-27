-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 27 mars 2025 à 12:51
-- Version du serveur : 5.7.24
-- Version de PHP : 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mangas`
--

-- --------------------------------------------------------

--
-- Structure de la table `personnages`
--

CREATE TABLE `personnages` (
  `id` int(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `id_manga` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `personnages`
--

INSERT INTO `personnages` (`id`, `nom`, `description`, `id_manga`) VALUES
(1, 'Guts', 'Guts is the protagonist of the story.', 1),
(2, 'Griffith', 'Griffith, is the charismatic leader and founder of the Band of The Hawk.', 1),
(3, 'Gyro Zeppeli', 'Born Julius Caesar Zeppeli, but more commonly referred to as \"Gyro Zeppeli.\"', 2),
(4, 'The Saint', 'According to the story told in the manga, after Jesus\' resurrection, he thanked Joseph of Arimathea for the care of his body and stated that he would travel to the east.', 2),
(5, 'Miyamoto Musashi', 'Miyamoto Musashi (1584 – 1645) or Shinmen Takezo (his birth name) at a very young age embarked on a journey to become the strongest samurai only after being exiled from his own village.', 3),
(6, 'Inshun', 'Originally named “Shinnosuke Mitsuda,” he witnessed the death of his father and mother Saya at the hands of a bandit at an early age.', 3),
(7, 'Luffy', 'Luffy is the captain of the Straw Hat Pirates and is best friends with all of them and values them over all else.', 4),
(8, 'Nami', 'She is the first member of the Straw Hat Pirates to appear (in the anime), but the third to align herself with the crew, and the fifth to actually join.', 4),
(9, 'Johan', 'Johan Liebert is the namesake \"monster\" of the story and the mystery of his past is the focus of the plot.', 5),
(10, 'Eva Heinemann', 'Eva Heinemann is Doctor Tenma\'s fiancée and the daughter of the Director of Eisler Memorial Hospital.', 5);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `personnages`
--
ALTER TABLE `personnages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `personnages`
--
ALTER TABLE `personnages`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
