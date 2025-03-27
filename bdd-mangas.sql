-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 27 mars 2025 à 13:52
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
-- Base de données : `bdd-mangas`
--

-- --------------------------------------------------------

--
-- Structure de la table `auteurs`
--

CREATE TABLE `auteurs` (
  `id` int(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `naissance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `auteurs`
--

INSERT INTO `auteurs` (`id`, `nom`, `naissance`) VALUES
(1, 'Miura, Kentarou', 1966),
(2, 'Araki, Hirohiko', 1960),
(3, 'Inoue, Takehiko', 1967),
(6, 'Oda, Eiichiro', 1975),
(7, 'Urasawa, Naoki', 1960);

-- --------------------------------------------------------

--
-- Structure de la table `mangas`
--

CREATE TABLE `mangas` (
  `id` int(255) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `publication` int(255) NOT NULL,
  `note` int(255) NOT NULL,
  `descr` varchar(255) NOT NULL,
  `id_auteur` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mangas`
--

INSERT INTO `mangas` (`id`, `titre`, `publication`, `note`, `descr`, `id_auteur`) VALUES
(1, 'Berserk', 1989, 947, 'Guts, a former mercenary now known as the Black Swordsman, is out for revenge.', 1),
(2, 'JoJo no Kimyou na Bouken Part 7: Steel Ball Run', 2011, 932, 'In the American Old West, the world\'s greatest race is about to begin.', 2),
(3, 'Vagabond', 1998, 927, 'In 16th-century Japan, Shinmen Takezou is a wild, rough young man in both his appearance and his actions.', 3),
(4, 'One Piece', 1997, 922, 'Gol D. Roger, a man referred to as the King of the Pirates, is set to be executed by the World Government.', 6),
(5, 'Monster', 1994, 919, 'Kenzou Tenma, a renowned Japanese neurosurgeon working in post-war Germany, faces a difficult choice.', 7);

-- --------------------------------------------------------

--
-- Structure de la table `personnages`
--

CREATE TABLE `personnages` (
  `id` int(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `descr` varchar(255) NOT NULL,
  `id_manga` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `personnages`
--

INSERT INTO `personnages` (`id`, `nom`, `descr`, `id_manga`) VALUES
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
-- Index pour la table `auteurs`
--
ALTER TABLE `auteurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mangas`
--
ALTER TABLE `mangas`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personnages`
--
ALTER TABLE `personnages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auteurs`
--
ALTER TABLE `auteurs`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `mangas`
--
ALTER TABLE `mangas`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `personnages`
--
ALTER TABLE `personnages`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
