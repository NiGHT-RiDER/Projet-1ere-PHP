-- phpMyAdmin SQL Dump
-- version 4.3.10
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mer 13 Mai 2015 à 20:46
-- Version du serveur :  5.6.24
-- Version de PHP :  5.4.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `levels`
--

CREATE TABLE IF NOT EXISTS `levels` (
  `id_levels` int(11) NOT NULL,
  `level_nb` varchar(45) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `levels`
--

INSERT INTO `levels` (`id_levels`, `level_nb`, `description`) VALUES
(1, '1', 'GT86');

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
  `last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `topic` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `query` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1475 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `queries`
--

INSERT INTO `queries` (`query_id`, `query_nb`, `question`, `num_level`, `id_level`, `author`, `last_update`, `topic`, `query`) VALUES
(1440, '1', 'Ecrivez une requête SQL qui permette d''afficher tout le contenu de votre table. ', '44\r', 1, NULL, '2015-05-13 20:44:30', '', 'SELECT * FROM bd1.albums'),
(1441, '2', 'Donnez, pour chaque album, son isbn, son titre, son scénariste, son dessinateur ainsi que son année d''édition.', '44\r', 1, NULL, '2015-05-13 20:44:30', '', 'SELECT isbn, titre, scenariste, dessinateur, annee_edition FROM bd1.albums'),
(1442, '3', 'Quelles sont les albums édités par "Dupuis" ?', '9\r', 1, NULL, '2015-05-13 20:44:30', '', 'SELECT * FROM bd1.albums WHERE editeur = ''Dupuis'''),
(1443, '4', 'Quels sont les titres des albums dont le scénariste est "Goscinny"?', '10\r', 1, NULL, '2015-05-13 20:44:30', '', 'SELECT DISTINCT titre FROM bd1.albums WHERE scenariste = ‘Goscinny’'),
(1444, '5', 'Quels sont les titres et les éditeurs des albums dont un des auteurs (scénariste, dessinateur ou coloriste) s''appelle "Uderzo"?', '8\r', 1, NULL, '2015-05-13 20:44:30', '', 'SELECT DISTINCT titre, editeur FROM bd1.albums WHERE scenariste = ''Uderzo'' OR dessinateur = ''Uderzo'' OR coloriste = ''Uderzo'' '),
(1445, '6', 'Quelles sont les albums pour lesquels le coloriste n''a pas été spécifié?', '31\r', 1, NULL, '2015-05-13 20:44:30', '', 'SELECT * FROM bd1.albums  WHERE coloriste IS NULL '),
(1446, '7', 'Quels sont les éditeurs qui ont édité des albums en 1978 ?', '1\r', 1, NULL, '2015-05-13 20:44:30', '', 'SELECT DISTINCT editeur FROM bd1.albums WHERE annee_edition = 1978'),
(1447, '8', 'Quels sont les couples scénaristes-dessinateurs ayant travaillé ensemble pour l''éditeur "Dargaud"? (Attention: si le nom du dessinateur est le même que celui du scénariste, c''est que la même personne a effectué les deux tâches, et on ne parlera donc pas ', '3\r', 1, NULL, '2015-05-13 20:44:30', '', 'SELECT DISTINCT scenariste, dessinateur FROM bd1.albums  WHERE scenariste != dessinateur  AND editeur = ''Dargaud'''),
(1448, '9', 'Quels sont les albums dont le scénariste et le dessinateur sont la même personne, mais qui ont été mis en couleur par quelqu''un d''autre?', '1\r', 1, NULL, '2015-05-13 20:44:30', '', 'SELECT * FROM bd1.albums WHERE scenariste = dessinateur AND coloriste != dessinateur'),
(1449, '10', 'Quels sont les albums dont le scénariste, le dessinateur et le coloriste sont la même personne?', '9\r', 1, NULL, '2015-05-13 20:44:30', '', 'SELECT * FROM bd1.albums WHERE scenariste = dessinateur AND coloriste = dessinateur '),
(1450, '11', 'Quels sont les albums qui n''ont qu''un seul auteur? (Cela recouvre les cas de l''exercice précédent, mais il ne faut pas oublier les tuples pour lesquels un ou deux des trois attributs concernés ont la valeur NULL)', '26\r', 1, NULL, '2015-05-13 20:44:30', '', 'SELECT * FROM bd1.albums WHERE (scenariste = dessinateur AND (coloriste = dessinateur OR coloriste IS NULL)) OR (coloriste = dessinateur AND scenariste IS NULL) OR (coloriste = scenariste AND dessinateur IS NULL) OR (dessinateur IS NOT NULL AND scenariste'),
(1451, '12', 'Quels sont les scénaristes dont on a édité, après 1990, des œuvres qui coûtent moins de 8€?', '2\r', 1, NULL, '2015-05-13 20:44:30', '', 'SELECT DISTINCT scenariste FROM bd1.albums WHERE prix < 8 AND annee_edition > 1990'),
(1452, '13', 'Quels sont les titres édités en dehors de la décennie 1990-1999, par un éditeur autre que "Casterman", et dont le coloriste est ou bien non spécifié ou bien le même que le dessinateur?', '29\r', 1, NULL, '2015-05-13 20:44:30', '', 'SELECT DISTINCT titre FROM bd1.albums  WHERE (annee_edition < 1990 OR annee_edition > 1999) AND editeur != ''Casterman''  AND (coloriste IS NULL OR coloriste = dessinateur)'),
(1453, '14', 'Quels sont les titres qui n''ont été édités ni par "Casterman", ni par "Dupuis", et qui ont, comme scénariste, dessinateur et coloriste, trois auteurs distincts?', '1\r', 1, NULL, '2015-05-13 20:44:30', '', 'SELECT DISTINCT titre FROM bd1.albums  WHERE (editeur != ''Casterman'' AND editeur != ''Dupuis'')  AND scenariste != dessinateur AND dessinateur != coloriste  AND coloriste != scenariste'),
(1454, '15', 'Quels sont tous les albums qui rentrent dans une des catégories suivantes au moins : albums de la série "Astérix" édités chez "Dargaud",   albums de la série "Tintin" édités chez "Casterman" ou au "Le Lombard" et   albums sans aucun auteur spécifié.', '13\r', 1, NULL, '2015-05-13 20:44:30', '', 'SELECT * FROM bd1.albums  WHERE (editeur = ''Dargaud'' AND serie = ''Astérix'') OR((editeur = ''Casterman'' OR editeur = ''Le Lombard'') AND serie = ''Tintin'') OR (scenariste IS NULL AND coloriste IS NULL AND dessinateur IS NULL)'),
(1455, '16', 'Lister les titres des albums qui contiennent le mot "César".', '1\r', 1, NULL, '2015-05-13 20:44:30', '', 'SELECT DISTINCT titre FROM bd1.albums  WHERE titre LIKE ''%César%'''),
(1456, '17', 'Lister les auteurs dont le nom commence par le mot "de" (peu importe la casse).', '2\r', 1, NULL, '2015-05-13 20:44:30', '', 'SELECT DISTINCT dessinateur, scenariste, coloriste FROM bd1.albums  WHERE lower(dessinateur) LIKE ''de%'' OR lower(scenariste) LIKE ''de%'' OR lower(coloriste) LIKE ''de%'''),
(1457, '18', 'Donnez tous les titres des albums de la série "Astérix" et leur année d’édition, en ordre chronologique.', '8\r', 1, NULL, '2015-05-13 20:44:30', 'order by', 'SELECT DISTINCT titre, annee_edition FROM bd1.albums  WHERE serie = ''Astérix''  ORDER BY annee_edition'),
(1458, '19', 'Donnez tous les titres des albums de la série "Astérix", en ordre alphabétique des titres.', '8\r', 1, NULL, '2015-05-13 20:44:30', 'order by', 'SELECT DISTINCT titre FROM bd1.albums WHERE serie = ''Astérix'' ORDER BY titre'),
(1459, '20', 'Donnez les albums (isbn, titre, nom d’éditeur et année d''édition) en classant ces données par éditeur, et pour chaque éditeur, par année d''édition.', '44\r', 1, NULL, '2015-05-13 20:44:30', 'order by', 'SELECT isbn, titre, editeur, annee_edition FROM bd1.albums  ORDER BY editeur, annee_edition'),
(1460, '21', 'Donnez les titres et les prix des albums édités par "Dupuis", par ordre décroissant de prix."', '9\r', 1, NULL, '2015-05-13 20:44:30', 'order by', 'SELECT DISTINCT titre, prix FROM bd1.albums  WHERE editeur = ''Dupuis''  ORDER BY prix DESC'),
(1461, '22', 'Quelle est la plus ancienne année d''édition de la table bd1.albums?', '1947\r', 1, NULL, '2015-05-13 20:44:30', 'fonctions agrégées', 'SELECT MIN(annee_edition) FROM bd1.albums'),
(1462, '23', 'Quel est le prix de l’album le plus cher parmi ceux qui ont été dessinés par un autre dessinateur qu''"Uderzo"?', '14\r', 1, NULL, '2015-05-13 20:44:30', 'fonctions agrégées', 'SELECT MAX(prix) FROM bd1.albums  WHERE dessinateur != ''Uderzo'''),
(1463, '24', 'Combien y a-t-il d’albums édités chez "Casterman" ?', '7\r', 1, NULL, '2015-05-13 20:44:30', 'fonctions agrégées', 'SELECT COUNT(*) FROM bd1.albums  WHERE editeur = ''Casterman'''),
(1464, '25', 'Combien d’années séparent l’album le plus ancien de l’album le plus récent ?', '59\r', 1, NULL, '2015-05-13 20:44:30', 'fonctions agrégées', 'SELECT MAX(annee_edition) - MIN(annee_edition) FROM bd1.albums'),
(1465, '26', 'Combien devrai-je payer si j’achète 3 exemplaires de chacun des albums édités par "Blake et Mortimer" et si le libraire m’accorde une réduction de 25% ?', '216\r', 1, NULL, '2015-05-13 20:44:30', 'fonctions agrégées', 'SELECT 3*0.75*SUM(prix) FROM bd1.albums  WHERE editeur = ''Blake et Mortimer'''),
(1466, '27', 'Les albums de la série "Tintin" ont-ils tous le même prix ? (le query pourrait par exemple renvoyer la valeur 1 si la réponse est oui)', '1\r', 1, NULL, '2015-05-13 20:44:30', 'fonctions agrégées', 'SELECT COUNT(distinct prix) FROM bd1.albums  WHERE serie = ''Tintin'''),
(1467, '28', 'Combien y a-t-il de séries différentes dans la table bd1.albums?', '10\r', 1, NULL, '2015-05-13 20:44:30', 'fonctions agrégées', 'SELECT COUNT(distinct serie) FROM bd1.albums '),
(1468, '29', 'Combien y a-t-il d’albums pour lesquels la série est spécifiée ? Peut-on répondre à cette question par un query sans clause WHERE ? ', '41\r', 1, NULL, '2015-05-13 20:44:30', 'fonctions agrégées', 'SELECT COUNT(serie) FROM bd1.albums'),
(1469, '30', 'Combien y a-t-il d’albums pour lesquels la série n’est pas spécifiée ? Peut-on répondre à cette question par un query sans clause WHERE?', '3\r', 1, NULL, '2015-05-13 20:44:30', 'fonctions agrégées', 'SELECT COUNT(*) - COUNT(serie) FROM bd1.albums'),
(1470, '31', 'Combien y a-t-il d''albums dont un des auteurs au moins s''appelle "Uderzo", et quelles sont les dates d''édition du plus ancien et du plus récent d''entre eux?', '8 - 1975 - 1987\r', 1, NULL, '2015-05-13 20:44:30', 'fonctions agrégées', 'SELECT COUNT(*), MIN(annee_edition), MAX(annee_edition)  FROM bd1.albums  WHERE (scenariste = ''Uderzo'' OR dessinateur = ''Uderzo'' OR coloriste = ''Uderzo'')'),
(1471, '32', 'Quels est le prix moyen des albums édités par "Dupuis" entre 1990 et 1999 (y compris ces deux années extrêmes) ?', '9\r', 1, NULL, '2015-05-13 20:44:30', 'fonctions agrégées', 'SELECT AVG(prix) FROM bd1.albums  WHERE editeur = ''Dupuis'' AND (annee_edition >= 1990 AND annee_edition <= 1999)  '),
(1472, '33', 'Quel est le prix moyen des albums édités par "Dupuis" à l’exception des albums édités entre 1990 et 1999.', '6.67\r', 1, NULL, '2015-05-13 20:44:30', 'fonctions agrégées', 'SELECT AVG(prix) FROM bd1.albums  WHERE editeur = ''Dupuis'' AND (annee_edition < 1990 OR annee_edition > 1999)'),
(1473, '34', 'Si je veux acheter un exemplaire de tous les albums dont le scénariste est "goscinny" et/ou le dessinateur "uderzo", combien devrai-je débourser?', '75\r', 1, NULL, '2015-05-13 20:44:30', 'fonctions agrégées', 'SELECT SUM(prix) FROM bd1.albums  WHERE scenariste = ''Goscinny'' OR dessinateur = ''Uderzo'''),
(1474, '35', 'Si je veux acheter un exemplaire de tous les albums dont le scénariste n’est ni "goscinny" ni "uderzo", combien devrai-je débourser?', '209\r', 1, NULL, '2015-05-13 20:44:30', 'fonctions agrégées', 'SELECT SUM(prix) FROM bd1.albums  WHERE scenariste != ''Goscinny'' AND scenariste != ''Uderzo''');

-- --------------------------------------------------------

--
-- Structure de la table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `enrolment` varchar(45) CHARACTER SET latin1 NOT NULL,
  `name` varchar(90) COLLATE utf8_bin NOT NULL,
  `surname` varchar(90) COLLATE utf8_bin NOT NULL,
  `password` varchar(45) COLLATE utf8_bin DEFAULT NULL
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
('12241', 'EL YAKOUBI', 'IÃ¢timadtimad', NULL),
('12306', 'BOCK', 'BenoÃ®tt', NULL),
('12330', 'DRIESSEN', 'Christophe', NULL),
('12341', 'GÃ‰RARD', 'Nicolas-Andrea', NULL),
('12370', 'ANNICCHIARICO', 'Vincenzo', NULL),
('12396', 'TRUONG', 'Vinh Kien', NULL),
('12493', 'SINON', 'ClÃ©ment', NULL),
('12494', 'GONEN', 'GÃ¼ltekinltekin', NULL),
('12533', 'ERMGODTS', 'Christopher', NULL),
('12554', 'KARABAG', 'Umid', NULL),
('12604', 'MAHI', 'Samia', NULL),
('12730', 'GÃ‰RARD', 'Florian', NULL),
('12732', 'SOUSA DOS SANTOS', 'Alexandre', NULL),
('12849', 'ISHIMWE', 'Remy', NULL),
('12935', 'DÃ‰SÃ‰NEPART', 'Valentin', NULL),
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
('14053', 'BUDAK', 'StÃ©phane', NULL),
('14129', 'de VILLENFAGNE de VOGELSANCK', 'Gaspard', NULL),
('14192', 'NYEEM', 'Mohammad', NULL),
('14243', 'BOGDANOVIC', 'Stefan', NULL),
('14337', 'BELKADI', 'Nizar', NULL),
('14407', 'VAN LOO', 'Nelson', NULL),
('14558', 'ROCHEZ', 'Arnaud', NULL),
('14973', 'IRANDOUST', 'Marzieh', NULL),
('15172', 'OSTE', 'Nicolas', NULL),
('15319', 'GRIMMONPRÃ‰', 'Romain', NULL),
('15324', 'MAES', 'Timothy', NULL),
('15774', 'ASLI', 'Rachid', NULL),
('15779', 'BELHARCH', 'Hicham', NULL),
('15781', 'd''OULTREMONT', 'Matthieu', NULL),
('15782', 'PIERRE', 'Anthony', NULL),
('15783', 'BAKKALI KARFA', 'Nadir', NULL),
('15793', 'TASYÃœREK', 'Emre', NULL),
('15794', 'RAMOS NEVES', 'Jonathan', NULL),
('15795', 'LE CLERCQ', 'Mike', NULL),
('15806', 'SAMELSON', 'Jonathan', NULL),
('15810', 'DUVILLIER', 'Romain', NULL),
('15821', 'YE', 'Sheng Hao', NULL),
('15822', 'BOUVIN', 'TimothÃ©ee', NULL),
('15824', 'TRÃ©MOUROUX', 'Antoine', NULL),
('15825', 'BOUGAOU', 'NoÃ©', NULL),
('15834', 'LEROY', 'GaÃ«ll', NULL),
('15835', 'MOLINGHEN', 'Yannick', NULL),
('15892', 'CATHERINE', 'Thomas', NULL),
('15893', 'DE LA CRUZ MALLADA', 'Jimmy', NULL),
('15902', 'BOTTEMANNE', 'Fany', NULL),
('15905', 'GOLMAR LUQUE', 'Diego', NULL),
('15907', 'CHARLIER', 'Anthony', NULL),
('15918', 'ERKUL', 'MichaÃ«ll', NULL),
('15921', 'ERYÃ–RÃœK', 'Muharrem', NULL),
('15997', 'T''KINDT', 'Saifeddine', NULL),
('16000', 'COOLS', 'Alexandre', NULL),
('16096', 'FILLEUR', 'Thibault', NULL),
('16101', 'PATINELLA', 'Nicolas', NULL),
('16105', 'PESSERS', 'Ivan', NULL),
('16186', 'KECH', 'Damien', NULL),
('16200', 'LESPINOIS', 'Nicolas', NULL),
('16206', 'YALIM', 'Sevag', NULL),
('16241', 'DELHAYE', 'Gabriel', NULL),
('16258', 'FRÃ‰MONTMONT', 'Jonathan', NULL),
('16268', 'DELWART', 'Valentin', NULL),
('16273', 'STRAUVEN', 'MÃ©lissa', NULL),
('16320', 'DOS SANTOS', 'Bastien', NULL),
('16363', 'NGUYEN', 'Dat Toan', NULL),
('16372', 'LONCIN', 'SÃ©bastien', NULL),
('16397', 'MANIET', 'Alexandre', NULL),
('16399', 'MANIET', 'Antoine', NULL),
('16406', 'MZOUGHI', 'Meriam', NULL),
('16414', 'DE CONINCK-GOSSEAU', 'Maxim', NULL),
('16415', 'BEVERNAGE', 'Rudy', NULL),
('16419', 'ANTHOONS', 'Nicolas', NULL),
('16421', 'WAGEMANS', 'Jeremy', NULL),
('16429', 'MAYNÃ‰', 'Lonny', NULL),
('16432', 'DURIEU', 'Emilien', NULL),
('16440', 'de BURLET', 'Marc', NULL),
('16441', 'YAKOUB', 'Jacques', NULL),
('16442', 'CUPI', 'Dylan', NULL),
('16443', 'SNOECK', 'Tanguy', NULL),
('16445', 'BLANCKAERT', 'Claire', NULL),
('16448', 'TIRCHER', 'Kyrill', NULL),
('16451', 'GARCIA AUGUSTO', 'Marcos', NULL),
('16456', 'RIGA', 'SÃ©bastien', NULL),
('16461', 'GÃœNDES', 'Vartan', NULL),
('16462', 'DENUIT', 'Maxime', NULL),
('16464', 'JANSSENS', 'Thibaut', NULL),
('16466', 'GAILLET', 'Mike', NULL),
('16569', 'DECLERCQ', 'Benjamin', NULL),
('16656', 'PLACE', 'SÃ©bastien', NULL),
('16824', 'LEBON', 'SÃ©bastien', NULL),
('16842', 'DE SPIEGELAERE', 'Louis', NULL),
('17000', 'BLONDEAU', 'Brendan', NULL),
('17026', 'CHRISTODOULOU de GRAILLET', 'Nicolas', NULL),
('17118', 'RONSMANS', 'Thomas', NULL),
('17121', 'MACASPAC', 'Marc-Kevin', NULL),
('17188', 'NGUYEN', 'ThiÃªn ToÃ n', NULL),
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
('17500', 'TOUMI', 'YÃ¨ssine', NULL),
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
('17736', 'NSENDA THAMBWE', 'HervÃ©-Claude', NULL),
('17738', 'VANCAMPENHAULT', 'Anthony', NULL),
('17765', 'AERTS', 'Mathieu', NULL),
('17766', 'BAKALEM', 'Abdelhak', NULL),
('17790', 'PIROZZI', 'Francesco', NULL),
('17793', 'SENHAJI', 'Taoufiq', NULL),
('17854', 'LASKOWSKI', 'Maciej', NULL),
('17871', 'DELLOT', 'Jonathan', NULL),
('17879', 'GOSSELIN', 'Louis', NULL),
('17900', 'EZAABOUJI', 'Zineb', NULL),
('17924', 'YALÃ‡INÃ–Z', 'Serhat', NULL),
('17931', 'ZOAO', 'Kevin', NULL),
('17972', 'VELARDE VELARDE', 'Bryan', NULL),
('17977', 'SCHWEISTHAL', 'Jean-FranÃ§ois', NULL),
('17996', 'DEGRÃˆVE', 'Olivier', NULL),
('17998', 'BERTOLINI', 'Nicolas', NULL),
('18073', 'CANOOT', 'Olivier', NULL),
('18074', 'BASHIR', 'Ahmad', NULL),
('18080', 'LAPORTE', 'Robin', NULL),
('18085', 'MATON', 'Anthony', NULL),
('18098', 'HOSSEINI', 'Seyyed', NULL),
('18109', 'FANNA', 'Maxime', NULL),
('18134', 'BOONEN', 'Bastien', NULL),
('18145', 'STEVENS', 'LoÃ¯c', NULL),
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
('18405', 'DESMET', 'JÃ©rÃ©my', NULL),
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `teachers`
--

INSERT INTO `teachers` (`login`, `name`, `surname`, `password`) VALUES
('chooc', 'Choquet', 'Olivier', 'iwashere'),
('colje', 'Collinet', 'Jean-Luc', NULL),
('lecem', 'Leconte', 'Emmeline', NULL);

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
  MODIFY `id_levels` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `queries`
--
ALTER TABLE `queries`
  MODIFY `query_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1475;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `answers`
--
ALTER TABLE `answers`
ADD CONSTRAINT `fk_query_id` FOREIGN KEY (`query_id`) REFERENCES `queries` (`query_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
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
