-- phpMyAdmin SQL Dump
-- version 4.3.10
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 08 Mai 2015 à 15:53
-- Version du serveur :  5.6.24
-- Version de PHP :  5.4.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `bd1`
--

-- --------------------------------------------------------

--
-- Structure de la table `albums`
--

CREATE TABLE IF NOT EXISTS `albums` (
  `isbn` char(14) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `serie` varchar(20) DEFAULT NULL,
  `scenariste` varchar(20) DEFAULT NULL,
  `dessinateur` varchar(20) DEFAULT NULL,
  `coloriste` varchar(20) DEFAULT NULL,
  `editeur` varchar(20) NOT NULL,
  `pays` char(1) DEFAULT NULL,
  `annee_edition` int(11) DEFAULT NULL,
  `prix` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `albums`
--

INSERT INTO `albums` (`isbn`, `titre`, `serie`, `scenariste`, `dessinateur`, `coloriste`, `editeur`, `pays`, `annee_edition`, `prix`) VALUES
('2-152-12345-X', 'Les aventures complètes d''Oumpah-Pah', 'oumpah pah', 'Goscinny', 'Uderzo', NULL, 'Le Lombard', 'b', 1979, 12),
('2-203-00103-8', 'Les Cigares du Pharaon', 'Tintin', 'Hergé', 'Hergé', 'Hergé', 'Casterman', 'b', 1955, 8),
('2-203-00105-4', 'L''Oreille Cassée', 'Tintin', 'Hergé', 'Hergé', 'Hergé', 'Casterman', 'b', 1979, 8),
('2-203-00107-0', 'Le Sceptre d''Ottokar', 'Tintin', 'Hergé', 'Hergé', 'Hergé', 'Casterman', 'b', 1947, 8),
('2-203-00109-0', 'Coke en Stock', 'Tintin', 'Hergé', 'Hergé', 'Hergé', 'Casterman', 'b', 1958, 8),
('2-203-00117-8', 'L''Affaire Tournesol', 'Tintin', 'Hergé', 'Hergé', 'Hergé', 'Casterman', 'b', 1956, 8),
('2-203-00123-2', 'Tintin et les Picaros', 'Tintin', 'Hergé', 'Hergé', 'Hergé', 'Casterman', 'b', 1976, 8),
('2-203-12345-6', 'Vol 714 pour Sydney', 'Tintin', 'Hergé', 'Hergé', 'Hergé', 'Casterman', 'b', 1968, 8),
('2-205-00096-9', 'Astérix le gaulois', 'Astérix', 'Goscinny', 'Uderzo', NULL, 'Dargaud', 'f', 1975, 6),
('2-205-00230-9', 'Astérix légionnaire', 'Astérix', 'Goscinny', 'Uderzo', NULL, 'Dargaud', 'f', 1976, 6),
('2-205-00517-0', 'Canyon Apache', 'Lucky Luke', 'Goscinny', 'Morris', NULL, 'Dargaud', 'f', 1975, 8),
('2-205-00585-5', 'Ma Dalton', 'Lucky Luke', 'Goscinny', 'Morris', NULL, 'Dargaud', 'f', 1980, 5),
('2-205-00600-2', 'Les lauriers de César', 'Astérix', 'Goscinny', 'Uderzo', NULL, 'Dargaud', 'f', 1978, 6),
('2-205-00920-6', 'La guérison des Dalton', 'Lucky Luke', 'Goscinny', 'Morris', NULL, 'Dargaud', 'f', 1978, 5),
('2-205-00921-4', 'Obélix et compagnie', 'Astérix', 'Goscinny', 'Uderzo', NULL, 'Le Lombard', 'b', 1976, 6),
('2-205-01144-8', 'Le Fil qui chante', 'Lucky Luke', 'Goscinny', 'Morris', NULL, 'Dargaud', 'f', 1977, 5),
('2-205-01150-2', 'Astérix chez les Belges', 'Astérix', 'Goscinny', 'Uderzo', 'Uderzo', 'Dargaud', 'f', 1979, 4),
('2-205-03043-4', 'La fiancée de Lucky Luke', 'Lucky Luke', 'Guy Vidal', 'Morris', NULL, 'Dargaud', 'f', 1985, 5),
('2-258-03431-0', 'Adieu Monde Cruel!', 'Calvin et Hobbes', NULL, NULL, NULL, 'Watterson', 'a', 1991, 9),
('2-8001-0015-X', 'Le voyageur du mésozoïque', 'Spirou', NULL, 'Franquin', NULL, 'Dupuis', 'b', 1977, 7),
('2-8001-0017-6', 'Z comme Zorglub', 'Spirou', NULL, 'Franquin', NULL, 'Dupuis', 'b', 1977, 7),
('2-8001-0018-4', 'L''ombre du Z', 'Spirou', 'Jidehem', 'Franquin', NULL, 'Dupuis', 'b', 1976, 7),
('2-8001-0019-2', 'Spirou et les hommes-bulles', 'Spirou', 'Franquin', 'Franquin', NULL, 'Dupuis', 'b', 1989, 7),
('2-8001-0091-5', 'LE CAS LAGAFFE', 'Gaston', NULL, 'Franquin', NULL, 'Dupuis', 'b', 1977, 6),
('2-8001-0955-6', 'LA SAGA DES GAFFES', 'Gaston', 'Franquin', 'Franquin', NULL, 'Dupuis', 'b', 1982, 6),
('2-8001-2900-x', 'Zeke raconte des histoires', NULL, 'Cosey', 'Cosey', 'Cosey', 'Dupuis', 'b', 1999, 14),
('2-8021-3900-x', 'Spirou et Fantasio à Tokyo', 'Dupuis', NULL, 'Benoît', NULL, 'Dargaud', 'f', 2001, 14),
('2-8031-3900-6', 'Une dernière aventure d''Astérix', 'Astérix', NULL, 'Dupuis', NULL, 'Dargaud', 'f', 2006, 14),
('2-8035-0029-9', 'Modeste et Pompon', 'Modeste', NULL, 'Franquin', NULL, 'Magic Strip', 'b', 1981, 12),
('2-86497-004-X', 'L''odyssée d''Astérix', 'Astérix', 'Uderzo', 'Uderzo', NULL, 'Albert René', 'f', 1981, 6),
('2-86497-020-1', 'Astérix chez Rahazade', 'Astérix', 'Uderzo', 'Uderzo', NULL, 'Albert René', 'f', 1987, 6),
('2-87097-002-1', 'Le Secret de l''Espadon tome 1', 'Blake et Mortimer', 'Jacobs', 'Jacobs', NULL, 'Blake et Mortimer', 'b', 1984, 9),
('2-87097-004-8', 'Le Secret de L''Espadon tome 2', 'Blake et Mortimer', 'Jacobs', 'Jacobs', NULL, 'Blake et Mortimer', 'b', 1985, 9),
('2-87097-005-6', 'Le Secret de L''Espadon tome 3', 'Blake et Mortimer', 'Jacobs', 'Jacobs', NULL, 'Blake et Mortimer', 'b', 1986, 9),
('2-87097-008-0', 'Le mystère de la grande pyramide', 'Blake et Mortimer', 'Jacobs', 'Jacobs', NULL, 'Blake et Mortimer', 'b', 1986, 10),
('2-87097-009-9', 'Le mystère de la grande pyramide', 'Blake et Mortimer', 'Jacobs', 'Jacobs', NULL, 'Blake et Mortimer', 'b', 1987, 10),
('2-87097-010-2', 'La marque jaune', 'Blake et Mortimer', 'Jacobs', 'Jacobs', NULL, 'Blake et Mortimer', 'b', 1987, 9),
('2-87097-017-X', 'Les 3 Formules du Professeur Sato', 'Blake et Mortimer', 'Jacobs', 'de Moor', 'de Moor', 'Blake et Mortimer', 'b', 1990, 12),
('2-87097-043-9', 'L''Affaire Françis Blake', 'Blake et Mortimer', 'Benoît', 'Van Hamme', NULL, 'Blake et Mortimer', 'b', 1996, 14),
('2-87097-052-8', 'La Machination Voronov', 'Blake et Mortimer', 'Sente', 'Juilliard', 'DeMille', 'Blake et Mortimer', 'b', 2000, 14),
('2-87097-055-9', 'Joyeux Noël, May', NULL, 'Cosey', 'Cosey', 'Cosey', 'Dupuis', 'b', 1998, 7),
('2-88257-000-4', 'Nitroglycérine', 'Lucky Luke', 'Guy Vidal', 'Morris', NULL, 'Dargaud', 'f', 1987, 5),
('2-895-000123', 'Idées Noires', NULL, NULL, 'Franquin', NULL, 'Fluide Glacial', 'f', 1981, 10),
('2-908-46271-0', 'FAITES GAFFE A LAGAFFE', 'Gaston', 'Franquin', 'Franquin', 'Fanny', 'Dupuis', 'b', 1996, 6);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`isbn`);
--
-- Base de données :  `bd2`
--

-- --------------------------------------------------------

--
-- Structure de la table `albums`
--

CREATE TABLE IF NOT EXISTS `albums` (
  `isbn` char(14) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `serie` varchar(20) DEFAULT NULL,
  `scenariste` varchar(20) DEFAULT NULL,
  `dessinateur` varchar(20) DEFAULT NULL,
  `coloriste` varchar(20) DEFAULT NULL,
  `num_editeur` int(11) NOT NULL,
  `annee_edition` int(11) DEFAULT NULL,
  `prix` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `albums`
--

INSERT INTO `albums` (`isbn`, `titre`, `serie`, `scenariste`, `dessinateur`, `coloriste`, `num_editeur`, `annee_edition`, `prix`) VALUES
('2-152-12345-X', 'Les aventures complètes d''Oumpah-Pah', 'Oumpah Pah', 'Goscinny', 'Uderzo', NULL, 6, 1979, 12),
('2-203-00103-8', 'Les Cigares du Pharaon', 'Tintin', 'Hergé', 'Hergé', 'Hergé', 7, 1955, 8),
('2-203-00105-4', 'L''Oreille Cassée', 'Tintin', 'Hergé', 'Hergé', 'Hergé', 7, 1979, 8),
('2-203-00107-0', 'Le Sceptre d''Ottokar', 'Tintin', 'Hergé', 'Hergé', 'Hergé', 7, 1947, 8),
('2-203-00109-0', 'Coke en Stock', 'Tintin', 'Hergé', 'Hergé', 'Hergé', 7, 1958, 8),
('2-203-00117-8', 'L''Affaire Tournesol', 'Tintin', 'Hergé', 'Hergé', 'Hergé', 7, 1956, 8),
('2-203-00123-2', 'Tintin et les Picaros', 'Tintin', 'Hergé', 'Hergé', 'Hergé', 7, 1976, 8),
('2-203-12345-6', 'Vol 714 pour Sydney', 'Tintin', 'Hergé', 'Hergé', 'Hergé', 7, 1968, 8),
('2-205-00096-9', 'Astérix le gaulois', 'Astérix', 'Goscinny', 'Uderzo', NULL, 2, 1975, 6),
('2-205-00230-9', 'Astérix légionnaire', 'Astérix', 'Goscinny', 'Uderzo', NULL, 2, 1976, 6),
('2-205-00517-0', 'Canyon Apache', 'Lucky Luke', 'Goscinny', 'Morris', NULL, 2, 1975, 8),
('2-205-00585-5', 'Ma Dalton', 'Lucky Luke', 'Goscinny', 'Morris', NULL, 2, 1980, 5),
('2-205-00600-2', 'Les lauriers de César', 'Astérix', 'Goscinny', 'Uderzo', NULL, 2, 1978, 6),
('2-205-00920-6', 'La guérison des Dalton', 'Lucky Luke', 'Goscinny', 'Morris', NULL, 2, 1978, 5),
('2-205-00921-4', 'Obélix et compagnie', 'Astérix', 'Goscinny', 'Uderzo', NULL, 6, 1976, 6),
('2-205-01144-8', 'Le Fil qui chante', 'Lucky Luke', 'Goscinny', 'Morris', NULL, 2, 1977, 5),
('2-205-01150-2', 'Astérix chez les Belges', 'Astérix', 'Goscinny', 'Uderzo', 'Uderzo', 2, 1979, 4),
('2-205-03043-4', 'La fiancée de Lucky Luke', 'Lucky Luke', 'Guy Vidal', 'Morris', NULL, 2, 1985, 5),
('2-258-03431-0', 'Adieu Monde Cruel!', 'Calvin et Hobbes', NULL, NULL, NULL, 9, 1991, 9),
('2-8001-0015-X', 'Le voyageur du mésozoïque', 'Spirou', NULL, 'Franquin', NULL, 4, 1977, 7),
('2-8001-0017-6', 'Z comme Zorglub', 'Spirou', NULL, 'Franquin', NULL, 4, 1977, 7),
('2-8001-0018-4', 'L''ombre du Z', 'Spirou', 'Jidehem', 'Franquin', NULL, 4, 1976, 7),
('2-8001-0019-2', 'Spirou et les hommes-bulles', 'Spirou', 'Franquin', 'Franquin', NULL, 4, 1989, 7),
('2-8001-0091-5', 'LE CAS LAGAFFE', 'Gaston', NULL, 'Franquin', NULL, 4, 1977, 6),
('2-8001-0955-6', 'LA SAGA DES GAFFES', 'Gaston', 'Franquin', 'Franquin', NULL, 4, 1982, 6),
('2-8001-2900-x', 'Zeke raconte des histoires', NULL, 'Cosey', 'Cosey', 'Cosey', 4, 1999, 14),
('2-8021-3900-x', 'Spirou et Fantasio à Tokyo', 'Dupuis', NULL, 'Benoît', NULL, 2, 2001, 14),
('2-8031-3900-6', 'Une dernière aventure d''Astérix', 'Astérix', NULL, 'Dupuis', NULL, 2, 2006, 14),
('2-8035-0029-9', 'Modeste et Pompon', 'Modeste', NULL, 'Franquin', NULL, 5, 1981, 12),
('2-86497-004-X', 'L''odyssée d''Astérix', 'Astérix', 'Uderzo', 'Uderzo', NULL, 1, 1981, 6),
('2-86497-020-1', 'Astérix chez Rahazade', 'Astérix', 'Uderzo', 'Uderzo', NULL, 1, 1987, 6),
('2-87097-002-1', 'Le Secret de l''Espadon tome 1', 'Blake et Mortimer', 'Jacobs', 'Jacobs', NULL, 3, 1984, 9),
('2-87097-004-8', 'Le Secret de L''Espadon tome 2', 'Blake et Mortimer', 'Jacobs', 'Jacobs', NULL, 3, 1985, 9),
('2-87097-005-6', 'Le Secret de L''Espadon tome 3', 'Blake et Mortimer', 'Jacobs', 'Jacobs', NULL, 3, 1986, 9),
('2-87097-008-0', 'Le mystère de la grande pyramide', 'Blake et Mortimer', 'Jacobs', 'Jacobs', NULL, 3, 1986, 10),
('2-87097-009-9', 'Le mystère de la grande pyramide', 'Blake et Mortimer', 'Jacobs', 'Jacobs', NULL, 3, 1987, 10),
('2-87097-010-2', 'La marque jaune', 'Blake et Mortimer', 'Jacobs', 'Jacobs', NULL, 3, 1987, 9),
('2-87097-017-X', 'Les 3 Formules du Professeur Sato', 'Blake et Mortimer', 'Jacobs', 'de Moor', 'de Moor', 3, 1990, 12),
('2-87097-043-9', 'L''Affaire Françis Blake', 'Blake et Mortimer', 'Benoît', 'Van Hamme', NULL, 3, 1996, 14),
('2-87097-052-8', 'La Machination Voronov', 'Blake et Mortimer', 'Sente', 'Juilliard', 'DeMille', 3, 2000, 14),
('2-87097-055-9', 'Joyeux Noël, May', NULL, 'Cosey', 'Cosey', 'Cosey', 4, 1998, 7),
('2-88257-000-4', 'Nitroglycérine', 'Lucky Luke', 'Guy Vidal', 'Morris', NULL, 2, 1987, 5),
('2-895-000123', 'Idées Noires', NULL, NULL, 'Franquin', NULL, 8, 1981, 10),
('2-908-46271-0', 'FAITES GAFFE A LAGAFFE', 'Gaston', 'Franquin', 'Franquin', 'Fanny', 4, 1996, 6);

-- --------------------------------------------------------

--
-- Structure de la table `editeurs`
--

CREATE TABLE IF NOT EXISTS `editeurs` (
  `num` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `adresse` varchar(30) DEFAULT NULL,
  `pays` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `editeurs`
--

INSERT INTO `editeurs` (`num`, `nom`, `adresse`, `pays`) VALUES
(1, 'Albert René', NULL, 'f'),
(2, 'Dargaud', NULL, 'f'),
(3, 'Blake et Mortimer', NULL, 'b'),
(4, 'Dupuis', 'Marcinelle', 'b'),
(5, 'Magic Strip', 'Bruxelles', 'b'),
(6, 'Le Lombard', 'Bruxelles', 'b'),
(7, 'Casterman', NULL, 'b'),
(8, 'Fluide glacial', NULL, 'f'),
(9, 'Watterson', NULL, 'a'),
(10, 'Jacobs', NULL, 'a');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`isbn`), ADD KEY `fk_edi` (`num_editeur`);

--
-- Index pour la table `editeurs`
--
ALTER TABLE `editeurs`
  ADD PRIMARY KEY (`num`);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `albums`
--
ALTER TABLE `albums`
ADD CONSTRAINT `albums_ibfk_1` FOREIGN KEY (`num_editeur`) REFERENCES `editeurs` (`num`) ON UPDATE CASCADE;
--
-- Base de données :  `bd3`
--

-- --------------------------------------------------------

--
-- Structure de la table `albums`
--

CREATE TABLE IF NOT EXISTS `albums` (
  `isbn` char(14) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `serie` varchar(20) DEFAULT NULL,
  `num_editeur` int(11) NOT NULL,
  `annee_edition` int(11) DEFAULT NULL,
  `prix` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `albums`
--

INSERT INTO `albums` (`isbn`, `titre`, `serie`, `num_editeur`, `annee_edition`, `prix`) VALUES
('2-152-12345-X', 'Les aventures complètes d''Oumpah-Pah', 'Oumpah Pah', 6, 1979, 12),
('2-203-00103-8', 'Les Cigares du Pharaon', 'Tintin', 7, 1955, 8),
('2-203-00105-4', 'L''Oreille Cassée', 'Tintin', 7, 1979, 8),
('2-203-00107-0', 'Le Sceptre d''Ottokar', 'Tintin', 7, 1947, 8),
('2-203-00109-0', 'Coke en Stock', 'Tintin', 7, 1958, 8),
('2-203-00117-8', 'L''Affaire Tournesol', 'Tintin', 7, 1956, 8),
('2-203-00123-2', 'Tintin et les Picaros', 'Tintin', 7, 1976, 8),
('2-203-12345-6', 'Vol 714 pour Sydney', 'Tintin', 7, 1968, 8),
('2-205-00096-9', 'Astérix le gaulois', 'Astérix', 2, 1975, 6),
('2-205-00230-9', 'Astérix légionnaire', 'Astérix', 2, 1976, 6),
('2-205-00517-0', 'Canyon Apache', 'Lucky Luke', 2, 1975, 8),
('2-205-00585-5', 'Ma Dalton', 'Lucky Luke', 2, 1980, 5),
('2-205-00600-2', 'Les lauriers de César', 'Astérix', 2, 1978, 6),
('2-205-00920-6', 'La guérison des Dalton', 'Lucky Luke', 2, 1978, 5),
('2-205-00921-4', 'Obélix et compagnie', 'Astérix', 6, 1976, 6),
('2-205-01144-8', 'Le Fil qui chante', 'Lucky Luke', 2, 1977, 5),
('2-205-01150-2', 'Astérix chez les Belges', 'Astérix', 2, 1979, 4),
('2-205-03043-4', 'La fiancée de Lucky Luke', 'Lucky Luke', 2, 1985, 5),
('2-258-03431-0', 'Adieu Monde Cruel!', 'Calvin et Hobbes', 9, 1991, 9),
('2-8001-0015-X', 'Le voyageur du mésozoïque', 'Spirou', 4, 1977, 7),
('2-8001-0017-6', 'Z comme Zorglub', 'Spirou', 4, 1977, 7),
('2-8001-0018-4', 'L''ombre du Z', 'Spirou', 4, 1976, 7),
('2-8001-0019-2', 'Spirou et les hommes-bulles', 'Spirou', 4, 1989, 7),
('2-8001-0091-5', 'LE CAS LAGAFFE', 'Gaston', 4, 1977, 6),
('2-8001-0955-6', 'LA SAGA DES GAFFES', 'Gaston', 4, 1982, 6),
('2-8001-2900-x', 'Zeke raconte des histoires', NULL, 4, 1999, 14),
('2-8021-3900-x', 'Spirou et Fantasio à Tokyo', 'Dupuis', 2, 2001, 14),
('2-8031-3900-6', 'Une dernière aventure d''Astérix', 'Astérix', 2, 2006, 14),
('2-8035-0029-9', 'Modeste et Pompon', 'Modeste', 5, 1981, 12),
('2-86497-004-X', 'L''odyssée d''Astérix', 'Astérix', 1, 1981, 6),
('2-86497-020-1', 'Astérix chez Rahazade', 'Astérix', 1, 1987, 6),
('2-87097-002-1', 'Le Secret de l''Espadon tome 1', 'Blake et Mortimer', 3, 1984, 9),
('2-87097-004-8', 'Le Secret de L''Espadon tome 2', 'Blake et Mortimer', 3, 1985, 9),
('2-87097-005-6', 'Le Secret de L''Espadon tome 3', 'Blake et Mortimer', 3, 1986, 9),
('2-87097-008-0', 'Le mystère de la grande pyramide', 'Blake et Mortimer', 3, 1986, 10),
('2-87097-009-9', 'Le mystère de la grande pyramide', 'Blake et Mortimer', 3, 1987, 10),
('2-87097-010-2', 'La marque jaune', 'Blake et Mortimer', 3, 1987, 9),
('2-87097-017-X', 'Les 3 Formules du Professeur Sato', 'Blake et Mortimer', 3, 1990, 12),
('2-87097-043-9', 'L''Affaire Françis Blake', 'Blake et Mortimer', 3, 1996, 14),
('2-87097-052-8', 'La Machination Voronov', 'Blake et Mortimer', 3, 2000, 14),
('2-87097-055-9', 'Joyeux Noël, May', NULL, 4, 1998, 7),
('2-88257-000-4', 'Nitroglycérine', 'Lucky Luke', 2, 1987, 5),
('2-895-000123', 'Idées Noires', NULL, 8, 1981, 10),
('2-908-46271-0', 'FAITES GAFFE A LAGAFFE', 'Gaston', 4, 1996, 6);

-- --------------------------------------------------------

--
-- Structure de la table `auteurs`
--

CREATE TABLE IF NOT EXISTS `auteurs` (
  `num` int(11) NOT NULL,
  `nom` varchar(20) DEFAULT NULL,
  `adresse` varchar(30) DEFAULT NULL,
  `e_mail` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `auteurs`
--

INSERT INTO `auteurs` (`num`, `nom`, `adresse`, `e_mail`) VALUES
(1, 'Uderzo', NULL, 'uderzo@hotmail.com'),
(2, 'Goscinny', NULL, 'gosciny@gmail.com'),
(3, 'Hergé', NULL, 'Tintin@hotmail.be'),
(4, 'Franquin', NULL, 'franquin@yahoo.fr'),
(5, 'Jacobs', NULL, 'jacobs@yahoo.fr'),
(6, 'de Moor', NULL, 'de_moor@yahoo.fr'),
(7, 'Sente', NULL, 'sente@yahoo.fr'),
(8, 'Juilliard', NULL, 'juilliard@gmail.com'),
(9, 'DeMille', NULL, 'de_mille@gmail.fr'),
(10, 'Benoît', NULL, 'benoit@yahoo.fr'),
(11, 'Van Hamme', 'Bruxelles', 'van_hamme@hotmail.com'),
(12, 'Fanny', NULL, 'fanny@gmail.com'),
(13, 'Jidehem', NULL, 'jidehem@gmail.com'),
(14, 'Cosey', NULL, 'cosey@hotmail.com'),
(15, 'Morris', NULL, 'morris@gmail.com'),
(16, 'Guy Vidal', NULL, 'guy.vidal@hotmail.be'),
(17, 'Dupuis', NULL, 'Dupuis@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `editeurs`
--

CREATE TABLE IF NOT EXISTS `editeurs` (
  `num` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `adresse` varchar(30) DEFAULT NULL,
  `pays` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `editeurs`
--

INSERT INTO `editeurs` (`num`, `nom`, `adresse`, `pays`) VALUES
(1, 'Albert René', NULL, 'f'),
(2, 'Dargaud', NULL, 'f'),
(3, 'Blake et Mortimer', NULL, 'b'),
(4, 'Dupuis', 'Marcinelle', 'b'),
(5, 'Magic Strip', 'Bruxelles', 'b'),
(6, 'Le Lombard', 'Bruxelles', 'b'),
(7, 'Casterman', NULL, 'b'),
(8, 'Fluide Glacial', NULL, 'f'),
(9, 'Watterson', NULL, 'a'),
(10, 'Jacobs', NULL, 'a');

-- --------------------------------------------------------

--
-- Structure de la table `participations`
--

CREATE TABLE IF NOT EXISTS `participations` (
  `isbn` char(14) NOT NULL,
  `num_auteur` int(11) NOT NULL,
  `participe` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `participations`
--

INSERT INTO `participations` (`isbn`, `num_auteur`, `participe`) VALUES
('2-152-12345-X', 1, 'd'),
('2-205-00096-9', 1, 'd'),
('2-205-00230-9', 1, 'd'),
('2-205-00600-2', 1, 'd'),
('2-205-00921-4', 1, 'd'),
('2-205-01150-2', 1, 'c'),
('2-205-01150-2', 1, 'd'),
('2-86497-004-X', 1, 'd'),
('2-86497-004-X', 1, 's'),
('2-86497-020-1', 1, 'd'),
('2-86497-020-1', 1, 's'),
('2-152-12345-X', 2, 's'),
('2-205-00096-9', 2, 's'),
('2-205-00230-9', 2, 's'),
('2-205-00517-0', 2, 's'),
('2-205-00585-5', 2, 's'),
('2-205-00600-2', 2, 's'),
('2-205-00920-6', 2, 's'),
('2-205-00921-4', 2, 's'),
('2-205-01144-8', 2, 's'),
('2-205-01150-2', 2, 's'),
('2-203-00103-8', 3, 'c'),
('2-203-00103-8', 3, 'd'),
('2-203-00103-8', 3, 's'),
('2-203-00105-4', 3, 'c'),
('2-203-00105-4', 3, 'd'),
('2-203-00105-4', 3, 's'),
('2-203-00107-0', 3, 'c'),
('2-203-00107-0', 3, 'd'),
('2-203-00107-0', 3, 's'),
('2-203-00109-0', 3, 'c'),
('2-203-00109-0', 3, 'd'),
('2-203-00109-0', 3, 's'),
('2-203-00117-8', 3, 'c'),
('2-203-00117-8', 3, 'd'),
('2-203-00117-8', 3, 's'),
('2-203-00123-2', 3, 'c'),
('2-203-00123-2', 3, 'd'),
('2-203-00123-2', 3, 's'),
('2-203-12345-6', 3, 'c'),
('2-203-12345-6', 3, 'd'),
('2-203-12345-6', 3, 's'),
('2-8001-0015-X', 4, 'd'),
('2-8001-0017-6', 4, 'd'),
('2-8001-0018-4', 4, 'd'),
('2-8001-0019-2', 4, 'd'),
('2-8001-0019-2', 4, 's'),
('2-8001-0091-5', 4, 'd'),
('2-8001-0955-6', 4, 'd'),
('2-8001-0955-6', 4, 's'),
('2-8035-0029-9', 4, 'd'),
('2-895-000123', 4, 'd'),
('2-908-46271-0', 4, 'd'),
('2-908-46271-0', 4, 's'),
('2-87097-002-1', 5, 'd'),
('2-87097-002-1', 5, 's'),
('2-87097-004-8', 5, 'd'),
('2-87097-004-8', 5, 's'),
('2-87097-005-6', 5, 'd'),
('2-87097-005-6', 5, 's'),
('2-87097-008-0', 5, 'd'),
('2-87097-008-0', 5, 's'),
('2-87097-009-9', 5, 'd'),
('2-87097-009-9', 5, 's'),
('2-87097-010-2', 5, 'd'),
('2-87097-010-2', 5, 's'),
('2-87097-017-X', 5, 's'),
('2-87097-017-X', 6, 'c'),
('2-87097-017-X', 6, 'd'),
('2-87097-052-8', 7, 's'),
('2-87097-052-8', 8, 'd'),
('2-87097-052-8', 9, 'c'),
('2-8021-3900-x', 10, 'd'),
('2-87097-043-9', 10, 's'),
('2-87097-043-9', 11, 'd'),
('2-908-46271-0', 12, 'c'),
('2-8001-0018-4', 13, 's'),
('2-8001-2900-x', 14, 'c'),
('2-8001-2900-x', 14, 'd'),
('2-8001-2900-x', 14, 's'),
('2-87097-055-9', 14, 'c'),
('2-87097-055-9', 14, 'd'),
('2-87097-055-9', 14, 's'),
('2-205-00517-0', 15, 'd'),
('2-205-00585-5', 15, 'd'),
('2-205-00920-6', 15, 'd'),
('2-205-01144-8', 15, 'd'),
('2-205-03043-4', 15, 'd'),
('2-88257-000-4', 15, 'd'),
('2-205-03043-4', 16, 's'),
('2-88257-000-4', 16, 's'),
('2-8031-3900-6', 17, 'd');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`isbn`), ADD KEY `fk_edi` (`num_editeur`);

--
-- Index pour la table `auteurs`
--
ALTER TABLE `auteurs`
  ADD PRIMARY KEY (`num`);

--
-- Index pour la table `editeurs`
--
ALTER TABLE `editeurs`
  ADD PRIMARY KEY (`num`);

--
-- Index pour la table `participations`
--
ALTER TABLE `participations`
  ADD PRIMARY KEY (`isbn`,`num_auteur`,`participe`), ADD KEY `fk_aut` (`num_auteur`);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `albums`
--
ALTER TABLE `albums`
ADD CONSTRAINT `albums_ibfk_1` FOREIGN KEY (`num_editeur`) REFERENCES `editeurs` (`num`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `participations`
--
ALTER TABLE `participations`
ADD CONSTRAINT `participations_ibfk_1` FOREIGN KEY (`isbn`) REFERENCES `albums` (`isbn`) ON UPDATE CASCADE,
ADD CONSTRAINT `participations_ibfk_2` FOREIGN KEY (`num_auteur`) REFERENCES `auteurs` (`num`) ON UPDATE CASCADE;
--
-- Base de données :  `php_project`
--

-- --------------------------------------------------------

--
-- Structure de la table `answers`
--

CREATE TABLE IF NOT EXISTS `answers` (
  `enrolment` varchar(45) NOT NULL,
  `query_id` int(11) NOT NULL,
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `levels`
--

CREATE TABLE IF NOT EXISTS `levels` (
  `id_levels` int(11) NOT NULL,
  `level_nb` varchar(45) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `levels`
--

INSERT INTO `levels` (`id_levels`, `level_nb`, `description`) VALUES
(1, '1', 'AE86'),
(2, '2', 'GT86'),
(3, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `queries`
--

CREATE TABLE IF NOT EXISTS `queries` (
  `query_id` int(11) NOT NULL,
  `query_nb` varchar(45) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `num_level` varchar(45) DEFAULT NULL,
  `id_level` int(11) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `enrolment` varchar(45) CHARACTER SET utf8 NOT NULL,
  `name` varchar(90) CHARACTER SET utf8 NOT NULL,
  `surname` varchar(90) CHARACTER SET utf8 NOT NULL,
  `password` varchar(45) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `students`
--

INSERT INTO `students` (`enrolment`, `name`, `surname`, `password`) VALUES
('10084', 'DEWIGNE', 'Florent', 'iwashere'),
('10193', 'DOUGHERTY', 'Joseph', NULL),
('10612', 'HOLLANDERS', 'Robin', NULL),
('10682', 'TONNEAU', 'Thomas', NULL),
('11628', 'DALMAU FORCANO', 'Marc', NULL),
('11762', 'TECHY', 'Martin', NULL),
('12241', 'EL YAKOUBI', 'Iâtimadtimad', NULL),
('12306', 'BOCK', 'Benoîtt', NULL),
('12330', 'DRIESSEN', 'Christophe', NULL),
('12341', 'GÉRARD', 'Nicolas-Andrea', NULL),
('12370', 'ANNICCHIARICO', 'Vincenzo', NULL),
('12396', 'TRUONG', 'Vinh Kien', NULL),
('12493', 'SINON', 'Clément', NULL),
('12494', 'GONEN', 'Gültekinltekin', NULL),
('12533', 'ERMGODTS', 'Christopher', NULL),
('12554', 'KARABAG', 'Umid', NULL),
('12604', 'MAHI', 'Samia', NULL),
('12730', 'GÉRARD', 'Florian', NULL),
('12732', 'SOUSA DOS SANTOS', 'Alexandre', NULL),
('12849', 'ISHIMWE', 'Remy', NULL),
('12935', 'DÉSÉNEPART', 'Valentin', NULL),
('13179', 'GOBEAUX', 'Thomas', NULL),
('13528', 'HANSON', 'Pierre-Yves', NULL),
('13644', 'VERLANT', 'Antoine', NULL),
('13650', 'OLDENHOVE de GUERTECHIN', 'Simon', NULL),
('13857', 'DENIS', 'Quentin', NULL),
('13889', 'ARSZAGI VEL HARSZAGI', 'Kamil', NULL),
('13919', 'CRUZ LLUMIQUINGA', 'Jefferson', NULL),
('13949', 'VAN LITHAUT', 'Romain', NULL),
('13986', 'RENSON', 'Gilles', NULL),
('14051', 'DJEDIDI', 'Hichem', NULL),
('14053', 'BUDAK', 'Stéphane', NULL),
('14129', 'de VILLENFAGNE de VOGELSANCK', 'Gaspard', NULL),
('14192', 'NYEEM', 'Mohammad', NULL),
('14243', 'BOGDANOVIC', 'Stefan', NULL),
('14337', 'BELKADI', 'Nizar', NULL),
('14407', 'VAN LOO', 'Nelson', NULL),
('14558', 'ROCHEZ', 'Arnaud', NULL),
('14973', 'IRANDOUST', 'Marzieh', NULL),
('15172', 'OSTE', 'Nicolas', NULL),
('15319', 'GRIMMONPRÉ', 'Romain', NULL),
('15324', 'MAES', 'Timothy', NULL),
('15774', 'ASLI', 'Rachid', NULL),
('15779', 'BELHARCH', 'Hicham', NULL),
('15781', 'd''OULTREMONT', 'Matthieu', NULL),
('15782', 'PIERRE', 'Anthony', NULL),
('15783', 'BAKKALI KARFA', 'Nadir', NULL),
('15793', 'TASYÜREK', 'Emre', NULL),
('15794', 'RAMOS NEVES', 'Jonathan', NULL),
('15795', 'LE CLERCQ', 'Mike', NULL),
('15806', 'SAMELSON', 'Jonathan', NULL),
('15810', 'DUVILLIER', 'Romain', NULL),
('15821', 'YE', 'Sheng Hao', NULL),
('15822', 'BOUVIN', 'Timothéee', NULL),
('15824', 'TRéMOUROUX', 'Antoine', NULL),
('15825', 'BOUGAOU', 'Noé', NULL),
('15834', 'LEROY', 'Gaëll', NULL),
('15835', 'MOLINGHEN', 'Yannick', NULL),
('15892', 'CATHERINE', 'Thomas', NULL),
('15893', 'DE LA CRUZ MALLADA', 'Jimmy', NULL),
('15902', 'BOTTEMANNE', 'Fany', NULL),
('15905', 'GOLMAR LUQUE', 'Diego', NULL),
('15907', 'CHARLIER', 'Anthony', NULL),
('15918', 'ERKUL', 'Michaëll', NULL),
('15921', 'ERYÖRÜK', 'Muharrem', NULL),
('15997', 'T''KINDT', 'Saifeddine', NULL),
('16000', 'COOLS', 'Alexandre', NULL),
('16096', 'FILLEUR', 'Thibault', NULL),
('16101', 'PATINELLA', 'Nicolas', NULL),
('16105', 'PESSERS', 'Ivan', NULL),
('16186', 'KECH', 'Damien', NULL),
('16200', 'LESPINOIS', 'Nicolas', NULL),
('16206', 'YALIM', 'Sevag', NULL),
('16241', 'DELHAYE', 'Gabriel', NULL),
('16258', 'FRÉMONTMONT', 'Jonathan', NULL),
('16268', 'DELWART', 'Valentin', NULL),
('16273', 'STRAUVEN', 'Mélissa', NULL),
('16320', 'DOS SANTOS', 'Bastien', NULL),
('16363', 'NGUYEN', 'Dat Toan', NULL),
('16372', 'LONCIN', 'Sébastien', NULL),
('16397', 'MANIET', 'Alexandre', NULL),
('16399', 'MANIET', 'Antoine', NULL),
('16406', 'MZOUGHI', 'Meriam', NULL),
('16414', 'DE CONINCK-GOSSEAU', 'Maxim', NULL),
('16415', 'BEVERNAGE', 'Rudy', NULL),
('16419', 'ANTHOONS', 'Nicolas', NULL),
('16421', 'WAGEMANS', 'Jeremy', NULL),
('16429', 'MAYNÉ', 'Lonny', NULL),
('16432', 'DURIEU', 'Emilien', NULL),
('16440', 'de BURLET', 'Marc', NULL),
('16441', 'YAKOUB', 'Jacques', NULL),
('16442', 'CUPI', 'Dylan', NULL),
('16443', 'SNOECK', 'Tanguy', NULL),
('16445', 'BLANCKAERT', 'Claire', NULL),
('16448', 'TIRCHER', 'Kyrill', NULL),
('16451', 'GARCIA AUGUSTO', 'Marcos', NULL),
('16456', 'RIGA', 'Sébastien', NULL),
('16461', 'GÜNDES', 'Vartan', NULL),
('16462', 'DENUIT', 'Maxime', NULL),
('16464', 'JANSSENS', 'Thibaut', NULL),
('16466', 'GAILLET', 'Mike', NULL),
('16569', 'DECLERCQ', 'Benjamin', NULL),
('16656', 'PLACE', 'Sébastien', NULL),
('16824', 'LEBON', 'Sébastien', NULL),
('16842', 'DE SPIEGELAERE', 'Louis', NULL),
('17000', 'BLONDEAU', 'Brendan', NULL),
('17026', 'CHRISTODOULOU de GRAILLET', 'Nicolas', NULL),
('17118', 'RONSMANS', 'Thomas', NULL),
('17121', 'MACASPAC', 'Marc-Kevin', NULL),
('17188', 'NGUYEN', 'Thiên Toàn', NULL),
('17215', 'DEPRAETE', 'Adeline', NULL),
('17218', 'ANNIA', 'Imad', NULL),
('17221', 'LAMBRICHT', 'Antoine', NULL),
('17291', 'YAHIAOUI', 'Diaa', NULL),
('17293', 'MURAT', 'Endri', NULL),
('17297', 'BUYENS', 'Nathan', NULL),
('17368', 'COSTE-GANDREY', 'Alexandre', NULL),
('17400', 'MENDES ROSA', 'Christian', NULL),
('17435', 'JACOB', 'Loury', NULL),
('17451', 'MASSART', 'Woody', NULL),
('17457', 'ALP', 'Mustafa', NULL),
('17480', 'PIERRE', 'Benjamin', NULL),
('17500', 'TOUMI', 'Yèssine', NULL),
('17523', 'AMETI', 'Rufat', NULL),
('17528', 'OVAERT', 'Lionel', NULL),
('17543', 'ABAJTOUR', 'Ilyas', NULL),
('17574', 'CHEVALIER', 'Romain', NULL),
('17575', 'SHEVTCHENKO', 'Philipp', NULL),
('17581', 'PINTUS', 'Pierre-Nicolas', NULL),
('17582', 'RODRIGUEZ VAZQUEZ', 'Francisco', NULL),
('17613', 'BORDIGATO', 'Patrick Junior', NULL),
('17625', 'GRUMIRO', 'Fabio', NULL),
('17626', 'DIMOV', 'Theodor', NULL),
('17640', 'BLJAKAJ', 'Dukagjin', NULL),
('17655', 'BOUCHER', 'Nicolas', NULL),
('17662', 'GAILLET', 'Pierre-Paul', NULL),
('17664', 'MOUNIR', 'Hamza', NULL),
('17713', 'NGUYEN', 'Phu Cuong', NULL),
('17736', 'NSENDA THAMBWE', 'Hervé-Claude', NULL),
('17738', 'VANCAMPENHAULT', 'Anthony', NULL),
('17765', 'AERTS', 'Mathieu', NULL),
('17766', 'BAKALEM', 'Abdelhak', NULL),
('17790', 'PIROZZI', 'Francesco', NULL),
('17793', 'SENHAJI', 'Taoufiq', NULL),
('17854', 'LASKOWSKI', 'Maciej', NULL),
('17871', 'DELLOT', 'Jonathan', NULL),
('17879', 'GOSSELIN', 'Louis', NULL),
('17900', 'EZAABOUJI', 'Zineb', NULL),
('17924', 'YALÇINÖZ', 'Serhat', NULL),
('17931', 'ZOAO', 'Kevin', NULL),
('17972', 'VELARDE VELARDE', 'Bryan', NULL),
('17977', 'SCHWEISTHAL', 'Jean-François', NULL),
('17996', 'DEGRÈVE', 'Olivier', NULL),
('17998', 'BERTOLINI', 'Nicolas', NULL),
('18073', 'CANOOT', 'Olivier', NULL),
('18074', 'BASHIR', 'Ahmad', NULL),
('18080', 'LAPORTE', 'Robin', NULL),
('18085', 'MATON', 'Anthony', NULL),
('18098', 'HOSSEINI', 'Seyyed', NULL),
('18109', 'FANNA', 'Maxime', NULL),
('18134', 'BOONEN', 'Bastien', NULL),
('18145', 'STEVENS', 'Loïc', NULL),
('18160', 'COTTON', 'Pierric', NULL),
('18164', 'DE SUTTER', 'Willi', NULL),
('18174', 'VAN GREVENSTEIN', 'Fredrik', NULL),
('18185', 'FASSIAUX', 'Thomas', NULL),
('18191', 'IMPERIAL', 'Erik', NULL),
('18197', 'VERWILGHEN', 'Maxime', NULL),
('18206', 'DRAGOMIR', 'Philippe', NULL),
('18212', 'ELHASSANI', 'Elias', NULL),
('18284', 'DOCQUIER', 'Arnaud', NULL),
('18320', 'VERTONGHEN', 'Renaud', NULL),
('18367', 'EVRARD', 'Amaury', NULL),
('18405', 'DESMET', 'Jérémy', NULL),
('18407', 'SAIFI', 'Ayoub', NULL),
('18450', 'CIKU', 'Alan', NULL),
('18551', 'LARBI', 'Youssef', NULL),
('18574', 'MAFIKIRI KAKULE', 'Hubert', NULL),
('18643', 'FAIN', 'Damien', NULL),
('18693', 'ARESTIGUE BARREDA', 'Ronald', NULL),
('18722', 'WEILHAMMER', 'Sebastian', NULL),
('8781', 'DABROWSKI', 'Virginia', NULL),
('8798', 'MOURADE', 'Ibrahim', NULL),
('9439', 'RACHDI', 'Noureddine', NULL),
('9465', 'TAVERNIER', 'Cedric', NULL),
('9747', 'AZABAR', 'Zakariya', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `teachers`
--

CREATE TABLE IF NOT EXISTS `teachers` (
  `login` varchar(255) NOT NULL,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `teachers`
--

INSERT INTO `teachers` (`login`, `name`, `surname`, `password`) VALUES
('chooc', 'Choquet', 'Olivier', 'iwashere'),
('colje', 'Collinet', 'Jean-Luc\r', ''),
('lecem', 'Leconte', 'Emmeline\r', '');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`enrolment`,`query_id`), ADD KEY `fk_students_has_queries_queries1_idx` (`query_id`), ADD KEY `fk_students_has_queries_students1_idx` (`enrolment`);

--
-- Index pour la table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id_levels`);

--
-- Index pour la table `queries`
--
ALTER TABLE `queries`
  ADD PRIMARY KEY (`query_id`), ADD KEY `fk_queries_levels_idx` (`id_level`), ADD KEY `fk_queries_teachers1_idx` (`author`);

--
-- Index pour la table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`enrolment`);

--
-- Index pour la table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`login`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `levels`
--
ALTER TABLE `levels`
  MODIFY `id_levels` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `answers`
--
ALTER TABLE `answers`
ADD CONSTRAINT `fk_students_has_queries_queries1` FOREIGN KEY (`query_id`) REFERENCES `queries` (`query_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_students_has_queries_students1` FOREIGN KEY (`enrolment`) REFERENCES `students` (`enrolment`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `queries`
--
ALTER TABLE `queries`
ADD CONSTRAINT `fk_queries_levels` FOREIGN KEY (`id_level`) REFERENCES `levels` (`id_levels`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_queries_teachers1` FOREIGN KEY (`author`) REFERENCES `teachers` (`login`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
