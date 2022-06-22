-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : ven. 04 mars 2022 à 18:45
-- Version du serveur :  5.7.34
-- Version de PHP : 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `DSB`
--

-- --------------------------------------------------------

--
-- Structure de la table `AGENT`
--

CREATE TABLE `AGENT` (
  `ida` int(11) NOT NULL,
  `nom` varchar(42) NOT NULL,
  `prenom` varchar(42) NOT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `AGENT`
--

INSERT INTO `AGENT` (`ida`, `nom`, `prenom`, `age`) VALUES
(3, 'SECK', 'Serigne', 23);

-- --------------------------------------------------------

--
-- Structure de la table `ARBITRE`
--

CREATE TABLE `ARBITRE` (
  `idar` int(11) NOT NULL,
  `nom` varchar(42) NOT NULL,
  `prenom` varchar(42) NOT NULL,
  `age` int(11) NOT NULL,
  `niv` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ARBITRE`
--

INSERT INTO `ARBITRE` (`idar`, `nom`, `prenom`, `age`, `niv`) VALUES
(4, 'Bastien', 'Benoit', 41, 1);

-- --------------------------------------------------------

--
-- Structure de la table `A_ARBITRE`
--

CREATE TABLE `A_ARBITRE` (
  `idar` int(11) NOT NULL,
  `idm` int(11) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `A_ARBITRE`
--

INSERT INTO `A_ARBITRE` (`idar`, `idm`, `date`) VALUES
(4, 1, '2022-02-03');

-- --------------------------------------------------------

--
-- Structure de la table `A_REMPORTE`
--

CREATE TABLE `A_REMPORTE` (
  `idt` int(11) NOT NULL,
  `idc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `CLUB`
--

CREATE TABLE `CLUB` (
  `idc` int(11) NOT NULL,
  `nom` varchar(42) NOT NULL,
  `div` int(11) NOT NULL,
  `ide` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `CLUB`
--

INSERT INTO `CLUB` (`idc`, `nom`, `div`, `ide`) VALUES
(1, 'Rennes', 1, 2),
(3, 'Paris', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ENTRAINER`
--

CREATE TABLE `ENTRAINER` (
  `ide` int(11) NOT NULL,
  `idc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ENTRAINER`
--

INSERT INTO `ENTRAINER` (`ide`, `idc`) VALUES
(2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ENTRAINEUR`
--

CREATE TABLE `ENTRAINEUR` (
  `ide` int(11) NOT NULL,
  `nom` varchar(42) NOT NULL,
  `prenom` varchar(42) NOT NULL,
  `age` int(11) NOT NULL,
  `niv` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ENTRAINEUR`
--

INSERT INTO `ENTRAINEUR` (`ide`, `nom`, `prenom`, `age`, `niv`) VALUES
(1, 'Mauricio', 'Pochettino', 49, 1),
(2, 'Génésio', 'Bruno', 55, 1);

-- --------------------------------------------------------

--
-- Structure de la table `EST_AGENT_DE`
--

CREATE TABLE `EST_AGENT_DE` (
  `idj` int(11) NOT NULL,
  `ida` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `EST_AGENT_DE`
--

INSERT INTO `EST_AGENT_DE` (`idj`, `ida`) VALUES
(5, 3);

-- --------------------------------------------------------

--
-- Structure de la table `FAIRE_PARTIE`
--

CREATE TABLE `FAIRE_PARTIE` (
  `idj` int(11) NOT NULL,
  `idc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `FAIRE_PARTIE`
--

INSERT INTO `FAIRE_PARTIE` (`idj`, `idc`) VALUES
(1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `GAGNER`
--

CREATE TABLE `GAGNER` (
  `idm` int(11) NOT NULL,
  `idc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `GAGNER`
--

INSERT INTO `GAGNER` (`idm`, `idc`) VALUES
(1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `JOUE`
--

CREATE TABLE `JOUE` (
  `idc` int(11) NOT NULL,
  `idm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `JOUE`
--

INSERT INTO `JOUE` (`idc`, `idm`) VALUES
(3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `JOUEUR`
--

CREATE TABLE `JOUEUR` (
  `idj` int(11) NOT NULL,
  `nom` varchar(42) NOT NULL,
  `prenom` varchar(42) NOT NULL,
  `age` int(11) NOT NULL,
  `poste` varchar(42) NOT NULL,
  `num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `JOUEUR`
--

INSERT INTO `JOUEUR` (`idj`, `nom`, `prenom`, `age`, `poste`, `num`) VALUES
(1, 'Mané', 'Sadio', 32, 'milieu', 10);

-- --------------------------------------------------------

--
-- Structure de la table `MATCHS`
--

CREATE TABLE `MATCHS` (
  `idm` int(11) NOT NULL,
  `nom` varchar(42) NOT NULL,
  `duree` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `MATCHS`
--

INSERT INTO `MATCHS` (`idm`, `nom`, `duree`) VALUES
(1, 'Démi-final', '01:34:48');

-- --------------------------------------------------------

--
-- Structure de la table `OBTENIR`
--

CREATE TABLE `OBTENIR` (
  `idt` int(11) NOT NULL,
  `idj` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `OBTENIR`
--

INSERT INTO `OBTENIR` (`idt`, `idj`) VALUES
(3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `SE_JOUE_DANS`
--

CREATE TABLE `SE_JOUE_DANS` (
  `idm` int(11) NOT NULL,
  `ids` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `SE_JOUE_DANS`
--

INSERT INTO `SE_JOUE_DANS` (`idm`, `ids`) VALUES
(1, 7);

-- --------------------------------------------------------

--
-- Structure de la table `STADE`
--

CREATE TABLE `STADE` (
  `ids` int(11) NOT NULL,
  `nom` varchar(42) NOT NULL,
  `lieu` varchar(42) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `STADE`
--

INSERT INTO `STADE` (`ids`, `nom`, `lieu`) VALUES
(7, 'Moustoir', 'Lorient');

-- --------------------------------------------------------

--
-- Structure de la table `TROPHEE`
--

CREATE TABLE `TROPHEE` (
  `idt` int(11) NOT NULL,
  `nom` varchar(42) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `TROPHEE`
--

INSERT INTO `TROPHEE` (`idt`, `nom`, `date`) VALUES
(2, 'League des Champions', '2022-02-01'),
(3, 'homme du match', '2022-02-01');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `AGENT`
--
ALTER TABLE `AGENT`
  ADD PRIMARY KEY (`ida`);

--
-- Index pour la table `ARBITRE`
--
ALTER TABLE `ARBITRE`
  ADD PRIMARY KEY (`idar`);

--
-- Index pour la table `A_ARBITRE`
--
ALTER TABLE `A_ARBITRE`
  ADD PRIMARY KEY (`idar`,`idm`),
  ADD KEY `idm` (`idm`);

--
-- Index pour la table `A_REMPORTE`
--
ALTER TABLE `A_REMPORTE`
  ADD PRIMARY KEY (`idt`),
  ADD KEY `idc` (`idc`);

--
-- Index pour la table `CLUB`
--
ALTER TABLE `CLUB`
  ADD PRIMARY KEY (`idc`),
  ADD KEY `ide` (`ide`);

--
-- Index pour la table `ENTRAINER`
--
ALTER TABLE `ENTRAINER`
  ADD PRIMARY KEY (`ide`),
  ADD KEY `idc` (`idc`);

--
-- Index pour la table `ENTRAINEUR`
--
ALTER TABLE `ENTRAINEUR`
  ADD PRIMARY KEY (`ide`);

--
-- Index pour la table `EST_AGENT_DE`
--
ALTER TABLE `EST_AGENT_DE`
  ADD PRIMARY KEY (`idj`),
  ADD KEY `ida` (`ida`);

--
-- Index pour la table `FAIRE_PARTIE`
--
ALTER TABLE `FAIRE_PARTIE`
  ADD PRIMARY KEY (`idj`),
  ADD KEY `idc` (`idc`);

--
-- Index pour la table `GAGNER`
--
ALTER TABLE `GAGNER`
  ADD PRIMARY KEY (`idm`),
  ADD KEY `idc` (`idc`);

--
-- Index pour la table `JOUE`
--
ALTER TABLE `JOUE`
  ADD PRIMARY KEY (`idc`,`idm`),
  ADD KEY `idm` (`idm`);

--
-- Index pour la table `JOUEUR`
--
ALTER TABLE `JOUEUR`
  ADD PRIMARY KEY (`idj`);

--
-- Index pour la table `MATCHS`
--
ALTER TABLE `MATCHS`
  ADD PRIMARY KEY (`idm`);

--
-- Index pour la table `OBTENIR`
--
ALTER TABLE `OBTENIR`
  ADD PRIMARY KEY (`idt`),
  ADD KEY `idj` (`idj`);

--
-- Index pour la table `SE_JOUE_DANS`
--
ALTER TABLE `SE_JOUE_DANS`
  ADD PRIMARY KEY (`idm`),
  ADD KEY `ids` (`ids`);

--
-- Index pour la table `STADE`
--
ALTER TABLE `STADE`
  ADD PRIMARY KEY (`ids`);

--
-- Index pour la table `TROPHEE`
--
ALTER TABLE `TROPHEE`
  ADD PRIMARY KEY (`idt`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `A_ARBITRE`
--
ALTER TABLE `A_ARBITRE`
  ADD CONSTRAINT `a_arbitre_ibfk_1` FOREIGN KEY (`idm`) REFERENCES `MATCHS` (`idm`),
  ADD CONSTRAINT `a_arbitre_ibfk_2` FOREIGN KEY (`idar`) REFERENCES `ARBITRE` (`idar`);

--
-- Contraintes pour la table `A_REMPORTE`
--
ALTER TABLE `A_REMPORTE`
  ADD CONSTRAINT `a_remporte_ibfk_1` FOREIGN KEY (`idc`) REFERENCES `CLUB` (`idc`);

--
-- Contraintes pour la table `CLUB`
--
ALTER TABLE `CLUB`
  ADD CONSTRAINT `club_ibfk_1` FOREIGN KEY (`ide`) REFERENCES `ENTRAINEUR` (`ide`);

--
-- Contraintes pour la table `ENTRAINER`
--
ALTER TABLE `ENTRAINER`
  ADD CONSTRAINT `entrainer_ibfk_1` FOREIGN KEY (`idc`) REFERENCES `CLUB` (`idc`);

--
-- Contraintes pour la table `EST_AGENT_DE`
--
ALTER TABLE `EST_AGENT_DE`
  ADD CONSTRAINT `est_agent_de_ibfk_1` FOREIGN KEY (`ida`) REFERENCES `AGENT` (`ida`);

--
-- Contraintes pour la table `FAIRE_PARTIE`
--
ALTER TABLE `FAIRE_PARTIE`
  ADD CONSTRAINT `faire_partie_ibfk_1` FOREIGN KEY (`idc`) REFERENCES `CLUB` (`idc`);

--
-- Contraintes pour la table `GAGNER`
--
ALTER TABLE `GAGNER`
  ADD CONSTRAINT `gagner_ibfk_1` FOREIGN KEY (`idc`) REFERENCES `CLUB` (`idc`);

--
-- Contraintes pour la table `JOUE`
--
ALTER TABLE `JOUE`
  ADD CONSTRAINT `joue_ibfk_1` FOREIGN KEY (`idm`) REFERENCES `MATCHS` (`idm`),
  ADD CONSTRAINT `joue_ibfk_2` FOREIGN KEY (`idc`) REFERENCES `CLUB` (`idc`);

--
-- Contraintes pour la table `OBTENIR`
--
ALTER TABLE `OBTENIR`
  ADD CONSTRAINT `obtenir_ibfk_1` FOREIGN KEY (`idj`) REFERENCES `JOUEUR` (`idj`);

--
-- Contraintes pour la table `SE_JOUE_DANS`
--
ALTER TABLE `SE_JOUE_DANS`
  ADD CONSTRAINT `se_joue_dans_ibfk_1` FOREIGN KEY (`ids`) REFERENCES `STADE` (`ids`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
