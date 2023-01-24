-- phpMyAdmin SQL Dump
-- version 4.6.6deb4+deb9u2
-- https://www.phpmyadmin.net/
--
-- Client :  sqletud.u-pem.fr
-- Généré le :  Mar 24 Janvier 2023 à 18:17
-- Version du serveur :  5.7.30-log
-- Version de PHP :  7.0.33-0+deb9u12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `juliette.jeannin_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `authors`
--

CREATE TABLE `authors` (
  `id_author` int(10) UNSIGNED NOT NULL,
  `name` tinytext NOT NULL,
  `first_name` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `authors`
--

INSERT INTO `authors` (`id_author`, `name`, `first_name`) VALUES
(1, 'GAURIAT', 'Valentin'),
(2, 'CHREA', 'Léna'),
(3, 'COURON', 'Enora'),
(4, 'GRANDIER', 'Maureen'),
(5, 'PAIN', 'Zacharie'),
(6, 'DUVAL', 'Guilhem'),
(7, 'MORICE', 'Romane'),
(8, 'KOUY', 'Mélodie'),
(9, 'LANGLAIS', 'Camille'),
(10, 'GRASS', 'Sara'),
(11, 'KERCKHOVE', 'Marianne'),
(12, 'VERNA', 'Maxime'),
(13, 'TOUCHARD', 'Léa'),
(14, 'SALAUN', 'Léo');

-- --------------------------------------------------------

--
-- Structure de la table `bristols`
--

CREATE TABLE `bristols` (
  `id_bristol` int(10) UNSIGNED NOT NULL,
  `id_author` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `bristols`
--

INSERT INTO `bristols` (`id_bristol`, `id_author`) VALUES
(1, 4),
(2, 10),
(3, 11),
(4, 12);

-- --------------------------------------------------------

--
-- Structure de la table `bristoltexts`
--

CREATE TABLE `bristoltexts` (
  `id_text` int(10) UNSIGNED NOT NULL,
  `text` text NOT NULL,
  `id_bristol` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `bristoltexts`
--

INSERT INTO `bristoltexts` (`id_text`, `text`, `id_bristol`) VALUES
(1, 'pour faucher', 1),
(2, 'des détournements indélicats', 1),
(3, 'pour dérober', 1),
(4, 'des divagations malhonnêtes', 1),
(5, 'cueillir l’ambition', 1),
(6, 'inconnu', 1),
(7, 'fuir la folie des hommes', 1),
(8, 'brûler mes ailes', 1),
(9, 'me laissant recouvrir', 1),
(10, 'sous les larmes', 1),
(11, 'libre', 1),
(12, 'écrire sur l\'éther bleuté', 1),
(13, 'étranger', 1),
(14, 'malgré moi', 1),
(15, 'cueillir un sourire', 1),
(16, 'hélas', 1),
(17, 'te chapardant', 1),
(18, 'partir au loin', 1),
(19, 'malgré toi', 1),
(20, 'pour pouvoir m\'en sortir', 1),
(21, 'me fauchant', 1),
(22, 'observer attentivement', 1),
(23, 'prenant ton dû', 1),
(24, 'l’impénétrable façade', 1),
(25, 'sacrilège', 1),
(26, 'Perdre mon innocence', 1),
(27, 'Alors, je disparais', 1),
(28, 'Inexorablement', 1),
(29, 'Je serais le voleur', 1),
(30, 'Sans foi ni loi', 1),
(31, 'Sans jamais se soucier de rien', 1),
(32, 'Comme le hasard sur mon chemin', 1),
(33, 'Voler trop près du soleil ', 1),
(34, 's\'évader', 2),
(35, 'se faufiler dans la foule\r\n', 2),
(36, 's\'en allant paisiblement\r\n', 2),
(37, 'pénétrant dans la pénombre\r\n', 2),
(38, 'sans se retourner\r\n', 2),
(39, 'parmi des milliers\r\n', 2),
(40, 'selon le plan', 2),
(41, 'si le temps le permet\r\n', 2),
(42, 'dorénavant\r\n', 2),
(43, 'ô stupeur !', 2),
(44, 'que faire ?\r\n', 2),
(45, 'soudain\r\n', 2),
(46, 'partir loin\r\n', 2),
(47, 'où les nuages se terminent\r\n', 2),
(48, 'déployer ses ailes\r\n', 2),
(49, 'vers un lieu plein de richesse\r\n', 2),
(50, 'observer attentivement\r\n', 2),
(51, 'sans interrompre le parcours\r\n', 2),
(52, 's’élancer vers l’objet convoité\r\n', 2),
(53, 'tel Arsène Lupin ou Robin des Bois\r\n', 2),
(54, 'franchir la limite de la bienséance\r\n', 2),
(55, 'pour quelque chose qui n’est pas dérobé\r\n', 2),
(56, 'arrêter le temps', 2),
(57, 'dans cet espace infini', 2),
(58, 'filer au loin vers l\'avenir', 2),
(59, 'en direction de l\'inconnu', 2),
(60, 'sans jamais se soucier de rien', 2),
(61, 'des détournements indélicats', 2),
(62, 'voler son cœur', 2),
(63, 'où l’on aimerait se loger', 2),
(64, 'décrocher la lune', 2),
(65, 'pour toucher les étoiles', 2),
(66, 'si un jour on y arrive', 2),
(67, 'écouter le bruit du vent', 3),
(68, 'étant enfin libre\r\n', 3),
(69, 'entre le ciel et la terre', 3),
(70, 'avec une volonté d\'acier', 3),
(71, 'je sens la fièvre monter', 3),
(72, 'le front brûlant', 3),
(73, 'comprends-tu ce que je veux dire ?', 3),
(74, 'sans façon', 3),
(75, 'entre tes mots et tes actes', 3),
(76, 'je ne sens plus mes doigts', 3),
(77, 'lentement', 3),
(78, 'dans un hiver glacial', 3),
(79, 'tout doucement et sûrement', 3),
(80, 'te cristallisant', 3),
(81, 'en mille morceaux', 3),
(82, 'parmi les flocons', 3),
(83, 'tu as vraiment froid ?', 3),
(84, 'silence mortuaire', 3),
(85, 'sous la surface', 3),
(86, 'jusqu\'au printemps', 3),
(87, 'jubilant dans une haine confuse', 3),
(88, 't\'oublier', 3),
(89, 'même à travers le blizzard', 3),
(90, 'qu\'il soit de glace', 3),
(91, 'te métamorphoser', 3),
(92, 'malgré le temps qui s\'écoule', 3),
(93, 'vers l\'avenir proche', 3),
(94, 'comme une unité', 3),
(95, 'lentement et avec précaution', 3),
(96, 'parmi les souvenirs joyeux', 3),
(97, 'à travers les âges', 3),
(98, 'rire aux éclats sans même s’en rendre compte\r\n', 3),
(99, 'la tempête fait rage', 3),
(100, 'où je me perds\r\n', 4),
(101, 'si ce froid qui s\'installe m\'épargne de ses tourments\r\n', 4),
(102, 'où le soleil fait fondre les cœurs\r\n', 4),
(103, 'sous la glace', 4),
(104, 'dans les eaux gelées', 4),
(105, 'avec une volonté d\'acier', 4),
(106, 'sans l\'intrus qui givre et glace vos rires', 4),
(107, 'de toute part', 4),
(108, 'en mille morceaux\r\n', 4),
(109, 'sous la surface', 4),
(110, 'sans un frisson', 4),
(111, 'écoutant le bruit du vent', 4),
(112, 'traversant mon manteau', 4),
(113, 'brisant les reflets', 4),
(114, 'lentement', 4),
(115, 'passionnément', 4),
(116, 'contempler la silhouette glacée', 4),
(117, 'me souvenir de ton reflet', 4),
(118, 'pour enfin t\'admirer', 4),
(119, 'me confondre', 4),
(120, 'la tempête fait rage', 4),
(121, 'c\'est une drôle d\'image', 4),
(122, 'si le temps ne cesse de s’allonger', 4),
(123, 'où songe et réalité ne font plus qu’un', 4),
(124, 'derrière un visage confiant', 4),
(125, 'avec la certitude que la fin est loin', 4),
(126, 'devant toi ma fin est là', 4),
(127, 'sans lumière', 4),
(128, 'l’existence est relative', 4),
(129, 'jubilant dans une haine confuse', 4),
(130, 'loin dans les abysses de la folie', 4),
(131, 'la souffrance est depuis bien longtemps dépassée', 4),
(132, 'rire aux éclats sans même m’en rendre compte', 4);

-- --------------------------------------------------------

--
-- Structure de la table `haikus`
--

CREATE TABLE `haikus` (
  `id_haiku` int(10) UNSIGNED NOT NULL,
  `id_author` int(10) UNSIGNED NOT NULL,
  `group_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `haikus`
--

INSERT INTO `haikus` (`id_haiku`, `id_author`, `group_num`) VALUES
(1, 3, 1),
(2, 3, 1),
(3, 3, 1),
(4, 3, 1),
(5, 3, 1),
(6, 3, 1),
(7, 3, 1),
(8, 2, 1),
(9, 2, 1),
(10, 13, 2),
(11, 13, 2),
(12, 13, 2),
(13, 13, 2),
(14, 13, 2),
(15, 13, 2),
(16, 13, 2);

-- --------------------------------------------------------

--
-- Structure de la table `haikutexts`
--

CREATE TABLE `haikutexts` (
  `id_text` int(10) UNSIGNED NOT NULL,
  `text_num` int(11) NOT NULL,
  `text` text NOT NULL,
  `id_haiku` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `haikutexts`
--

INSERT INTO `haikutexts` (`id_text`, `text_num`, `text`, `id_haiku`) VALUES
(1, 1, 'La lumière éblouissante de dehors', 1),
(2, 2, 'Comme un soleil au milieu du ciel', 1),
(3, 3, 'A éclairé mes pensées obscures', 1),
(4, 1, 'La ruelle sombre devant moi', 2),
(5, 2, 'Comme la ville fantôme de mes rêves', 2),
(6, 3, 'Ne m’effraie plus maintenant', 2),
(7, 1, 'L’obscurité qui m’entoure', 3),
(8, 2, 'Comme un souffle glacial dans mes mains', 3),
(9, 3, 'Me fait perdre mes repères', 3),
(10, 1, 'L’éclair qui m’illumine', 4),
(11, 2, 'Comme une zébrure sur mes yeux fermés', 4),
(12, 3, 'M’a dévoilé son secret', 4),
(13, 1, 'L’ombre du grand châtaignier', 5),
(14, 2, 'Comme un monstre aux mille tentacules dangereux', 5),
(15, 3, 'M’effraie plus qu’avant', 5),
(16, 1, 'Le reflet sur les flaques', 6),
(17, 2, 'Comme une forme mouvante dans le lointain', 6),
(18, 3, 'M’invite à m’approcher', 6),
(19, 1, 'Le flash dans la nuit', 7),
(20, 2, 'Comme le croque-mitaine en plein travail', 7),
(21, 3, 'M’a pris par surprise', 7),
(22, 1, 'Etoile brillant à l’horizon', 8),
(23, 2, 'Comme l’éclat d’un imposant diamant', 8),
(24, 3, 'Me provoque dix mille sensations', 8),
(25, 1, 'La tulipe en pleine éclosion', 9),
(26, 2, 'Comme l’apparition d’un nouveau-né', 9),
(27, 3, 'M’émerveille et m’éblouit', 9),
(31, 1, 'À côté des fleurs fanées ', 10),
(32, 2, 'Devant la tombe de ma grand-mère ', 10),
(33, 3, 'Le vent emporte mes larmes ', 10),
(34, 1, 'Dans un rayon de soleil ', 11),
(35, 2, 'Devant le vieux saule pleureur du jardin ', 11),
(36, 3, 'Je revois cette enfant perdue ', 11),
(37, 1, 'Avec ma toute petite valise ', 12),
(38, 2, 'Devant le quai de la gare vide', 12),
(39, 3, 'Des milliers de souvenirs reviennent ', 12),
(40, 1, 'À côté des vieux portraits ', 13),
(41, 2, 'Devant l\'horloge depuis bien longtemps arrêtée', 13),
(42, 3, 'J\'aperçois mon frère assis ', 13),
(43, 1, 'Dans une photo mal cadrée ', 14),
(44, 2, 'Devant la mer et les vagues agitées', 14),
(45, 3, 'Je retrouve un passé oublié ', 14),
(46, 1, 'Entre le jacaranda et les lilas ', 15),
(47, 2, 'Devant les lavandes et la glycine fleurie', 15),
(48, 3, 'Mon frère contemple la tranquillité ', 15),
(49, 1, 'Sous le bleu du ciel ', 16),
(50, 2, 'Devant les nuages qui se meuvent doucement ', 16),
(51, 3, 'La quiétude emplit mon âme ', 16);

-- --------------------------------------------------------

--
-- Structure de la table `narrations`
--

CREATE TABLE `narrations` (
  `id_narration` int(10) UNSIGNED NOT NULL,
  `id_author` int(10) UNSIGNED NOT NULL,
  `group_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `narrations`
--

INSERT INTO `narrations` (`id_narration`, `id_author`, `group_num`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 2, 1),
(4, 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `narrationtexts`
--

CREATE TABLE `narrationtexts` (
  `id_text` int(10) UNSIGNED NOT NULL,
  `text_num` int(11) NOT NULL,
  `text` text NOT NULL,
  `id_narration` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `narrationtexts`
--

INSERT INTO `narrationtexts` (`id_text`, `text_num`, `text`, `id_narration`) VALUES
(1, 1, 'Un grand loup-garou', 1),
(2, 2, 'avec ses grandes dents pointues', 1),
(3, 3, 'poursuivait ses nombreuses proies', 1),
(4, 4, 'dans la forêt la nuit tombée', 1),
(5, 5, 'en réalité pour se faire de nombreux amis', 1),
(6, 6, 'mais finalement, il réalisa', 1),
(7, 7, 'que les gens étaient terrifiés par son aspect', 1),
(8, 8, 'pourtant, l’habit ne fait pas le moine', 1),
(9, 1, 'Un pilote casse-cou', 2),
(10, 2, 'avec un sang-froid incroyable', 2),
(11, 3, 'prenait en chasse les avions ennemis', 2),
(12, 4, 'de jour comme de nuit', 2),
(13, 5, 'afin de défendre son territoire', 2),
(14, 6, 'quand soudain, il comprit', 2),
(15, 7, 'qu\'il tirait sur des avions alliés', 2),
(16, 8, 'décidément, il vaut mieux bien réfléchir avant d’agir', 2),
(17, 1, 'Un clown', 3),
(18, 2, 'rigolo', 3),
(19, 3, 'terrorisait les enfants', 3),
(20, 4, 'en souriant bizarrement', 3),
(21, 5, 'alors qu’il voulait les divertir', 3),
(22, 6, 'quand soudain, il réalisa', 3),
(23, 7, 'qu’il effrayait les personnes et cela le rendait triste', 3),
(24, 8, 'parfois, les apparences sont trompeuses', 3),
(25, 1, 'Un sorcier', 4),
(26, 2, 'aux pouvoirs surnaturels', 4),
(27, 3, 'capturait des cobayes', 4),
(28, 4, 'par son charisme énigmatique', 4),
(29, 5, 'pour exercer la magie noire', 4),
(30, 6, 'mais finalement, il comprit', 4),
(31, 7, 'qu’il faisait beaucoup de mal', 4),
(32, 8, 'parfois, il faut utiliser ce qu’on a à bon escient', 4);

-- --------------------------------------------------------

--
-- Structure de la table `sonnets`
--

CREATE TABLE `sonnets` (
  `id_sonnet` int(10) UNSIGNED NOT NULL,
  `id_author` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `sonnets`
--

INSERT INTO `sonnets` (`id_sonnet`, `id_author`) VALUES
(2, 1),
(1, 5),
(3, 7),
(4, 8),
(5, 9);

-- --------------------------------------------------------

--
-- Structure de la table `sonnettexts`
--

CREATE TABLE `sonnettexts` (
  `id_text` int(10) UNSIGNED NOT NULL,
  `text_num` int(10) UNSIGNED NOT NULL,
  `text` text NOT NULL,
  `id_sonnet` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `sonnettexts`
--

INSERT INTO `sonnettexts` (`id_text`, `text_num`, `text`, `id_sonnet`) VALUES
(1, 1, 'Sur son visage nu se fit sentir la brise', 1),
(2, 2, 'Alors que sur ses pieds, ruisselaient gouttes d\'eau', 1),
(3, 3, 'Il ne put s\'empêcher de penser à sa Louise', 1),
(4, 4, 'De sentir la chaleur au contact de sa peau', 1),
(5, 5, 'À tout prix il voulait l\'emmener à l\'église', 1),
(6, 6, 'S\'imaginant déjà échanger les anneaux', 1),
(7, 7, 'Et soudain, sa vision se trouble, devient grise', 1),
(8, 8, 'Il se sort de ce rêve, le bruit le prend d\'assaut', 1),
(9, 9, 'Immobile, dans la boue, piégé dans cette grotte', 1),
(10, 10, 'Son regard s\'est posé sur ses pieds froids, sans bottes', 1),
(11, 11, 'Encor, dans les tranchées, il croupira demain', 1),
(12, 12, 'Paralysé d\'effroi, cette pensée le bloque', 1),
(13, 13, 'Pourquoi a-t-il fallu qu\'il vive à cette époque ?', 1),
(14, 14, 'À lutter pour une guerre, sachant que c\'était vain', 1),
(15, 1, 'Un espion dangereux, des aventures exquises', 2),
(16, 2, 'De Cuba à Moscou, par avion ou bateau', 2),
(17, 3, 'Sur certains documents, il voulait la mainmise', 2),
(18, 4, 'Pour les gouvernements, il était un fléau', 2),
(19, 5, 'L\'espion avait des meurtres, une certaine expertise', 2),
(20, 6, 'Il voyagea partout, même à Monte-Carlo', 2),
(21, 7, 'À l\'aide de son costard, elles furent toutes conquises', 2),
(22, 8, 'Les dés seront jetés, s\'il est au casino\r\n', 2),
(23, 9, 'Il renverse avec style les tyrans, les despotes', 2),
(24, 10, 'Il s\'introduit partout, car il est polyglotte', 2),
(25, 11, 'D\'appui ou de soutien, il n\'a jamais besoin', 2),
(26, 12, 'Ses manières du passé parfois choquent, provoquent\r\n', 2),
(27, 13, 'Son flegme britannique vient d\'une autre époque\r\n', 2),
(28, 14, 'Tel était cet espion, créé par l\'écrivain\r\n', 2),
(29, 1, 'Il a quitté les siens et rompu toute emprise', 3),
(30, 2, 'Troubadour depuis peu, c\'est un doux jouvenceau\r\n', 3),
(31, 3, 'Il cherche l\'aventure telle qu\'il l\'idéalise', 3),
(32, 4, 'Il rêve de succès en longeant les châteaux\r\n', 3),
(33, 5, 'Sans remords ni regret mais avec flemmardise\r\n', 3),
(34, 6, 'Il parcourt les sentiers pour distraire les badauds\r\n', 3),
(35, 7, 'En faisant des grimaces, en contant des bêtises', 3),
(36, 8, 'Toujours accompagné de son fidèle banjo\r\n', 3),
(37, 9, 'Le menestrel chantonne à bord de sa roulotte\r\n', 3),
(38, 10, 'Il ne se soucie guère du chemin qui cahote', 3),
(39, 11, 'Lorsqu\'il sent les effluves du ragoût et du pain\r\n', 3),
(40, 12, 'Arrivé au village, il entend qu\'on se moque\r\n', 3),
(41, 13, 'Il se fait transpercer par un vif coup d\'estoc', 3),
(42, 14, 'Et ainsi se termine son espiègle chemin', 3),
(43, 1, 'Un jeune homme attendait là sa belle promise\r\n', 4),
(44, 2, 'Pour une promenade en mer depuis Bordeaux', 4),
(45, 3, 'Le temps qui s\'écoulait devenait sa hantise', 4),
(46, 4, 'Tombent à l\'eau ses rêves d\'explorer des îlots', 4),
(47, 5, 'Il se souvient encore de leur promesse émise', 4),
(48, 6, 'Dans un jardin rempli de roses et de moineaux', 4),
(49, 7, 'Une rencontre qui lie deux âmes conquises', 4),
(50, 8, 'Lorsque des inconnus finissent tourtereaux', 4),
(51, 9, 'Pas une journée sans envoi de douces notes', 4),
(52, 10, 'Échanges passionnés d\'aventures sur la flotte', 4),
(53, 11, 'Imaginer ensemble une vie de marin', 4),
(54, 12, 'Longtemps attendu pour ses ambitions loufoques\r\n', 4),
(55, 13, 'Attendant son amante pour que tout débloque\r\n', 4),
(56, 14, 'Ignorant que son âme s\'est éteinte en chemin', 4),
(57, 1, 'Le pianiste qui joue chante ses vocalises', 5),
(58, 2, 'Pour laisser sa musique apaiser le chaos', 5),
(59, 3, 'Le bruit du métronome exerce son emprise\r\n', 5),
(60, 4, 'Et la salle paraît démunie de ses mots', 5),
(61, 5, 'L\'instrument envoûté par la musique émise', 5),
(62, 6, 'Où les mains du pianiste enivrent le morceau\r\n', 5),
(63, 7, 'Une sensible enfant que l\'air joué enlise\r\n', 5),
(64, 8, 'Elle se retenait d\'éclater en sanglots\r\n', 5),
(65, 9, 'Le musicien perdu dans la suite de notes\r\n', 5),
(66, 10, 'Introduit l\'instant fort où le dénouement flotte\r\n', 5),
(67, 11, 'Lorsque le son final imite à tort Chopin\r\n', 5),
(68, 12, 'L\'étudiant loin de lui le regarde et se moque\r\n', 5),
(69, 13, 'Il riait si fort de l\'artiste qu\'il provoque\r\n', 5),
(70, 14, 'On le dévisageait, ce malheureux pantin\r\n', 5);

-- --------------------------------------------------------

--
-- Structure de la table `talechoices`
--

CREATE TABLE `talechoices` (
  `id_choice` int(10) UNSIGNED NOT NULL,
  `id_text_next` int(10) UNSIGNED NOT NULL,
  `choice_text` text NOT NULL,
  `id_text_previous` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `talechoices`
--

INSERT INTO `talechoices` (`id_choice`, `id_text_next`, `choice_text`, `id_text_previous`) VALUES
(1, 2, 'Vous voulez déjà en finir, vous empruntez un couloir d\'où émane un ronflement étrange. ', 1),
(2, 3, 'Vous êtes intelligent, vous cherchez des indices sur le chemin à emprunter dans la salle.', 1),
(3, 4, 'Telle Kylie Jenner, vous réveillez la bête endormie pour accéder au chemin qu\'elle entrave.', 2),
(4, 6, 'Vous n\'avez pas compris le jeu et passez votre chemin pour emprunter un autre couloir.', 2),
(5, 5, 'Vous avez fait le choix étrange de choisir grec ancien au lycée : vous suivez les inscriptions et empruntez des escaliers secrets.', 3),
(6, 2, 'Vous avez tapé sur des briques au hasard sans succès. Le <em>gamer</em> que vous êtes, ragequit et prend l\'autre couloir.', 3),
(7, 7, 'Vous connaissez évidemment la réponse et en êtes un peu trop fier petit intello, vous accédez au couloir convoité.', 4),
(8, 2, 'Votre culture laisse à désirer, vous laissez le Sphinx se rendormir alors que vous cherchez la 3G.', 4),
(9, 8, 'Vous êtes partant pour un Pumpkin Spice Latte.', 5),
(10, 9, 'Vous êtes plutôt team tisane de Noël.', 5),
(11, 10, 'Vous lui demandez s\'il sait où se trouve la sortie, sachant que s\'il pouvait partir, il ne serait plus là.', 6),
(12, 11, 'Vous lui demandez de vous chanter l\'<em>Odyssée</em> en intégralité, vous ne l\'avez pas assez entendu dans votre vie.', 6),
(13, 5, 'Vous étiez toujours choisi dernier en sport au collège, cela vous hante encore, alors vous tombez dans le premier précipice à votre portée.', 7),
(14, 12, 'Vous avez vu tous les films <em>Indiana Jones<em>, ce qui est évidemment suffisant pour traverser ce couloir mortel. ', 7),
(15, 13, 'Vous décidez de reprendre votre périple, votre ordinateur de poche n\'a plus de batterie. Vous quittez le repère de Dédale.', 8),
(16, 9, 'La SNCF a encore du retard. Vous regardez Dédale silencieusement alors que vous souriez timidement.', 8),
(17, 13, 'Nous sommes enfin le premier janvier. Vous quittez enfin le repère de Dédale et essuyez la fausse neige de vos vêtements.', 9),
(18, 8, 'La routine entre vous s\'installe. Vous passez commande et faites comme s\'il ne s\'était rien passé entre vous.', 9),
(19, 12, 'Vous suivez ses indications sûrement trompeuses et prenez un petit Doliprane pour votre mal de tête naissant.', 10),
(20, 14, 'Taureau, la lune influe sur vos pensées, vous foncez dans le tas et vous suivez votre propre route.', 10),
(21, 6, 'Vous essayez de trouver de la compagnie. Vous chantez dans l\'espoir que votre chant divin attire quelqu\'un. ', 11),
(22, 2, 'Trop de drame pour aujourd\'hui. Vous revenez sur vos pas et espérez ne pas vous rendormir.', 11),
(23, 15, 'Vous suivez votre destinée écrite dès votre naissance et empruntez le chemin de gauche.', 12),
(24, 16, 'Vous suivez un petit fil rouge qui traîne sur le sol. L\'idée de trouver un kit de tricotage vous emporte vers le chemin de droite.', 12),
(25, 20, 'Vous leur tapez la bise, les Disney vous ont appris qu\'il ne faut pas se fier aux apparences.', 13),
(26, 17, 'Vous fuyez avec classe tel le courageux aventurier que vous êtes.', 13),
(27, 18, 'Vous n\'êtes pas un puriste de la mythologie grecque et vous l\'appelez Hercule.', 14),
(28, 13, 'Vous n\'avez pas de temps à perdre. Peu importe qui il est, vous le laissez donner un coup de balai et continuez.', 14),
(29, 20, 'Rien d\'insurmontable. Les feuilletons de ce genre finissent bien quand ils finissent...', 15),
(30, 11, 'Cette histoire est tellement mal écrite que cela doit être un rêve.', 15),
(31, 21, 'Il n\'y a pas de blague pour une fois, la sortie est vraiment à portée.', 16),
(32, 16, 'Pourquoi ne pas vous balader encore un peu. L\'auteur n\'a pas oublié une branche et ne réalise donc pas une boucle.', 16),
(33, 19, 'Une grande porte décorée de pics, de flambeaux et de sang humain ? Oui, vous vous entendez bien avec les amateurs de métal.', 17),
(34, 12, 'Vous venez de lire toutes les autres histoires. Vous n\'avez pas spécialement envie de vous éterniser ici. Il vous reste encore quelques histoires à lire d\'ailleurs.', 17),
(35, 19, 'Vous suivez l\'icône d\'une vache toute mignonne. Votre campagne native vous manque terriblement.', 18),
(36, 21, 'Grand amateur de céréales, vous retrouvez le chemin vers la sortie en partant vers la fin.', 18),
(37, 1, 'Si vous voulez rester en vie, retournez à la case départ et ne touchez pas 200 dollars.', 19),
(38, 20, 'La corrida, ce n\'est pas bien. C\'était une publicité militante depuis le début. Maintenant, la fin triste pour que vous reteniez le message.', 19),
(39, 23, 'Vous désirez emprunter le Sentier des Anciens Hommes.', 22),
(40, 38, 'Vous désirez passer par la Rivière Veuve.', 22),
(41, 24, 'Vous empruntez le sentier de droite.', 23),
(42, 25, 'Vous empruntez le sentier de gauche.', 23),
(43, 28, 'Vous avez les points de force nécessaires', 24),
(44, 28, 'De toute façon vous avez forcément les points de force nécessaires.', 24),
(45, 26, 'Vous répondez \"Un œuf !\".', 25),
(46, 27, 'Vous n\'êtes pas très concentré et mettez trop de temps à répondre.', 25),
(47, 32, 'Elle vous emmène à l\'entrée d\'un labyrinthe.', 26),
(48, 32, 'Elle vous emmène à l\'entrée d\'un labyrinthe.', 26),
(49, 23, 'Vous retournez au labyrinthe.', 27),
(50, 23, 'Vous retournez au labyrinthe.', 27),
(51, 30, 'Vous prenez les escaliers.', 28),
(52, 29, 'Vous prenez l\'allée.', 28),
(53, 40, 'Vous lui faites confiance.', 29),
(54, 30, 'Vous ne lui faites pas confiance', 29),
(55, 31, 'Vous décidez de vous recueillir en leur mémoire.', 30),
(56, 32, 'Vous préférez passer votre chemin.', 30),
(57, 32, 'Elles vous emmènent aux portes d\'un labyrinthe.', 31),
(58, 32, 'Elles vous emmènent aux portes d\'un labyrinthe.', 31),
(59, 33, 'Vous avez les points de force nécessaires.', 32),
(60, 41, 'Vous n\'avez pas les points de force nécessaires.', 32),
(61, 34, 'Vous empruntez le chemin de gauche.', 33),
(62, 35, 'Vous empruntez le chemin du milieu.', 33),
(63, 38, 'Vous avez les points de force nécessaires.', 34),
(64, 41, 'Vous n\'avez pas les points de force nécessaires.', 34),
(65, 36, 'Vous l\'empruntez.', 35),
(66, 37, 'Vous l\'ignorez.', 35),
(67, 22, 'Retour à la case départ...', 36),
(68, 22, 'Retour à la case départ...', 36),
(71, 38, 'Vous êtes devant la Rivière Veuve, quand soudain...', 37),
(72, 38, 'Vous êtes devant la Rivière Veuve, quand soudain...', 37),
(73, 39, 'Vous avez les points de force nécessaires.', 38),
(74, 41, 'Vous n\'avez pas les points de force nécessaires.', 38),
(75, 40, 'Il vous emmène devant son maître.', 39),
(76, 40, 'Il vous emmène devant son maître.', 39),
(77, 42, 'Vous avez les points de force nécessaires.', 40),
(78, 41, 'Vous n\'avez pas les points de force nécessaires.', 40);

-- --------------------------------------------------------

--
-- Structure de la table `tales`
--

CREATE TABLE `tales` (
  `id_tale` int(10) UNSIGNED NOT NULL,
  `id_author` int(10) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `id_first_text` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `tales`
--

INSERT INTO `tales` (`id_tale`, `id_author`, `title`, `id_first_text`) VALUES
(1, 6, 'Le Minotaure', 1),
(2, 14, 'Le récit dont vous êtes le robot', 22);

-- --------------------------------------------------------

--
-- Structure de la table `taletexts`
--

CREATE TABLE `taletexts` (
  `id_text` int(10) UNSIGNED NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `taletexts`
--

INSERT INTO `taletexts` (`id_text`, `text`) VALUES
(1, 'Vous êtes dans la première salle du célèbre dédale du Minotaure parce que vous êtes nostalgique de l\'époque où vous dévoriez des livres sur la mythologie grecque.'),
(2, 'Vous faites face à une créature mythique imposante, le Sphinx assoupi, qui a été déplacé de Thèbes pour les besoins de l\'intrigue.'),
(3, 'Vous découvrez une stèle mystérieuse décorée d\'inscriptions mystiques.'),
(4, 'Le Sphinx se réveille puis vous pose une énigme familière tel un professeur qui recycle sans arrêt les mêmes devoirs écrits.'),
(5, 'Après une longue descente, vous découvrez la cachette de Dédale, il est d\'ailleurs en train de prendre un petit café et vous propose de le rejoindre.'),
(6, 'Quelle surprise, Ulysse est là… L\'ouragan Katrina, trop fabuleux pour un pauvre homme, l\'a fait dériver jusqu\'ici.'),
(7, 'Malheureusement, le couloir découvert est blindé de pièges de toute part.'),
(8, 'Dédale écrit votre nom avec maintes fautes d\'orthographe sur un pot antique et vous tend votre boisson tandis que vous sortez votre MacBook Air pour vous donner un genre.'),
(9, 'Pendant que Mariah commence à chantonner, Dédale et vous entamez la séquence cliché de décoration de sapin et de bataille de boules de neige romantique.'),
(10, 'Le chemin à suivre Ulysse exprime. Et il ne délivre cela sans rimes.'),
(11, 'Vous vous êtes endormi plus vite qu\'un IMAC en cours de maths. Vous vous réveillez dans une salle vide.'),
(12, 'À la surprise de tous, vous arrivez à un autre embranchement mis en scène pour donner l\'illusion d\'un choix alors que toutes les interactions sont déjà écrites en avance.'),
(13, 'Vous vous retrouvez face à une horde d\'hoplites qui ont l\'air trop armé et pas assez amical.'),
(14, 'C\'est maintenant Héraclès que vous croisez, cette histoire a vraiment un casting cinq étoiles.'),
(15, 'C\'est bête, il semble que votre destinée inclue matricide, inceste, épidémie, sacrifice et voyage aux enfers.'),
(16, 'Alors que vous vous baladez gaiement, vous apercevez la lumière du jour à la fin du fil.'),
(17, 'Dans votre fuite, vous pouvez vous engouffrer à travers une porte menaçante ou continuer vers un chemin qui ressemble à tous les autres.'),
(18, 'Hercule semble très peu concerné par la façon dont vous l\'appelez. Il vous présente tout de même une carte qui aurait été utile plus tôt…'),
(19, 'Vous croisez le Minotaure. Il était temps, c\'est le héros de l\'histoire, non ?'),
(20, 'Vous êtes mort, un peu bêtement qui plus est. Votre histoire se termine ici à part si vous souhaitez avoir la bonne fin. Petite astuce, il suffit de tricher et de lire le message en dessous.'),
(21, 'Bravo, vous êtes enfin sorti du dédale du Minotaure. Vous vous êtes bien amusé et vous avez bien rigolé malgré la situation quelque peu dangereuse. Quoi ? Vous n\'avez pas rigolé ? Même pas un sourire en coin ? Aïe, c\'est bête pour l\'écrivain ça...'),
(22, 'Vous êtes un petit robot guerrier défendant l\'humanité en affrontant des monstres venus d\'une autre dimension. Chaque fois que vous emprunterez un chemin, vous gagnerez 1 point de force. Vous commencez l\'aventure avec 1 point de force. Vous vous apprêtez à entrer dans la forêt aux mille songes. Deux entrées sont possibles : le Sentier des Anciens Hommes ou la Rivière Veuve.'),
(23, 'Vous gagnez 1 point de force. Vous entrez dans un labyrinthe d\'arbres et de rochers. Le chemin se divise soudain en deux : un sentier à droite et un sentier à gauche.\r\n'),
(24, 'Vous gagnez 1 point de force. Vous faites face au monstre Araignée rampante. Le battre requiert 2 points de force.\r\n'),
(25, 'Vous gagnez 1 point de force. Vous rencontrez la fée des songes qui vous expose une énigme : \"Un coffre, sans serrure ni clé et pourtant un trésor doré y est caché, que suis-je ?\"'),
(26, 'La fée vous félicite d\'avoir répondu correctement à son énigme et vous offre deux points de force.'),
(27, 'La colère envahit la fée alors que vous n\'avez pas su répondre correctement à son énigme. Elle se transforme en démon et vous subtilise deux points de force.'),
(28, 'Vous gagnez 1 point de force. Deux autres chemins s\'offrent à vous : un escalier montant et une allée s\'enfonçant sombrement dans la forêt.\r\n'),
(29, 'Vous gagnez 1 point de force. Vous rencontrez le vieux sage qui vous propose de vous guider jusqu’à l\'objet de votre quête.\r\n'),
(30, 'Vous gagnez 1 point de force. Vous entrez dans une salle dans laquelle de nombreux héros sont morts en affrontant des monstres.\r\n'),
(31, 'Les âmes des héros tombés au combat vous remercient de votre dévotion et vous octroient 2 points de force supplémentaire.'),
(32, 'Vous gagnez 1 point de force. Vous faites face au monstre Gardien du labyrinthe. Le battre requiert 5 points de force.\r\n'),
(33, 'Vous gagnez 1 point de force. Vous sortez du labyrinthe et avez encore le choix entre 3 chemins.'),
(34, 'Vous gagnez 1 point de force et faites face au monstre Lutin enragé. Le battre requiert 6 points de force.\r\n'),
(35, 'Vous gagnez 1 point de force. Vous passez devant un portail mystique.\r\n'),
(36, 'Ce portail était un portail temporel. Vous perdez tous vos points de force.'),
(37, 'Vous gagnez 1 point de force. Vous sentez que vous vous approchez de la fin de votre quête et arrivez au niveau de la Rivière Veuve.'),
(38, 'Vous gagnez 1 point de force. Vous êtes surpris par le monstre Kraken, calamité cachée de la Rivière Veuve. Le battre requiert 12 points de force.'),
(39, 'Vous gagnez 1 point de force. Vous rencontrez un monstre Zombie inoffensif qui vous félicite pour votre parcours.'),
(40, 'Vous gagnez 1 point de force. Vous vous retrouvez face au roi des monstres. Le battre requiert 15 points de force.\r\n'),
(41, 'Vous vous êtes fait battre par le monstre. Votre mission est un échec et l\'histoire s\'arrête ici.'),
(42, 'Vous avez réussi votre mission, félicitations ! L\'histoire s\'arrête ici.\r\n');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id_author`);

--
-- Index pour la table `bristols`
--
ALTER TABLE `bristols`
  ADD PRIMARY KEY (`id_bristol`),
  ADD KEY `FK_Bristol_Author` (`id_author`);

--
-- Index pour la table `bristoltexts`
--
ALTER TABLE `bristoltexts`
  ADD PRIMARY KEY (`id_text`),
  ADD KEY `FK_IDBristol_IDBristol` (`id_bristol`);

--
-- Index pour la table `haikus`
--
ALTER TABLE `haikus`
  ADD PRIMARY KEY (`id_haiku`),
  ADD KEY `FK_Haiku_Author` (`id_author`);

--
-- Index pour la table `haikutexts`
--
ALTER TABLE `haikutexts`
  ADD PRIMARY KEY (`id_text`),
  ADD KEY `FK_IDHaiku_IDHaiku` (`id_haiku`);

--
-- Index pour la table `narrations`
--
ALTER TABLE `narrations`
  ADD PRIMARY KEY (`id_narration`),
  ADD KEY `FK_Narration_Author` (`id_author`);

--
-- Index pour la table `narrationtexts`
--
ALTER TABLE `narrationtexts`
  ADD PRIMARY KEY (`id_text`),
  ADD KEY `FK_IDNarration_IDNarration` (`id_narration`);

--
-- Index pour la table `sonnets`
--
ALTER TABLE `sonnets`
  ADD PRIMARY KEY (`id_sonnet`),
  ADD KEY `FK_Sonnet_Author` (`id_author`);

--
-- Index pour la table `sonnettexts`
--
ALTER TABLE `sonnettexts`
  ADD PRIMARY KEY (`id_text`),
  ADD KEY `FK_IDSonnet_IDSonnet` (`id_sonnet`);

--
-- Index pour la table `talechoices`
--
ALTER TABLE `talechoices`
  ADD PRIMARY KEY (`id_choice`),
  ADD KEY `FK_TaleChoice_TextPrevious` (`id_text_previous`),
  ADD KEY `FK_TaleChoice_TextNext` (`id_text_next`);

--
-- Index pour la table `tales`
--
ALTER TABLE `tales`
  ADD PRIMARY KEY (`id_tale`),
  ADD KEY `FK_Tale_Author` (`id_author`),
  ADD KEY `FK_First_Text` (`id_first_text`);

--
-- Index pour la table `taletexts`
--
ALTER TABLE `taletexts`
  ADD PRIMARY KEY (`id_text`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `authors`
--
ALTER TABLE `authors`
  MODIFY `id_author` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT pour la table `bristols`
--
ALTER TABLE `bristols`
  MODIFY `id_bristol` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `bristoltexts`
--
ALTER TABLE `bristoltexts`
  MODIFY `id_text` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;
--
-- AUTO_INCREMENT pour la table `haikus`
--
ALTER TABLE `haikus`
  MODIFY `id_haiku` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT pour la table `haikutexts`
--
ALTER TABLE `haikutexts`
  MODIFY `id_text` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT pour la table `narrations`
--
ALTER TABLE `narrations`
  MODIFY `id_narration` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `narrationtexts`
--
ALTER TABLE `narrationtexts`
  MODIFY `id_text` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT pour la table `sonnets`
--
ALTER TABLE `sonnets`
  MODIFY `id_sonnet` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `sonnettexts`
--
ALTER TABLE `sonnettexts`
  MODIFY `id_text` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT pour la table `talechoices`
--
ALTER TABLE `talechoices`
  MODIFY `id_choice` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT pour la table `tales`
--
ALTER TABLE `tales`
  MODIFY `id_tale` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `taletexts`
--
ALTER TABLE `taletexts`
  MODIFY `id_text` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `bristols`
--
ALTER TABLE `bristols`
  ADD CONSTRAINT `FK_Bristol_Author` FOREIGN KEY (`id_author`) REFERENCES `authors` (`id_author`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `bristoltexts`
--
ALTER TABLE `bristoltexts`
  ADD CONSTRAINT `FK_IDBristol_IDBristol` FOREIGN KEY (`id_bristol`) REFERENCES `bristols` (`id_bristol`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `haikus`
--
ALTER TABLE `haikus`
  ADD CONSTRAINT `FK_Haiku_Author` FOREIGN KEY (`id_author`) REFERENCES `authors` (`id_author`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `haikutexts`
--
ALTER TABLE `haikutexts`
  ADD CONSTRAINT `FK_IDHaiku_IDHaiku` FOREIGN KEY (`id_haiku`) REFERENCES `haikus` (`id_haiku`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `narrations`
--
ALTER TABLE `narrations`
  ADD CONSTRAINT `FK_Narration_Author` FOREIGN KEY (`id_author`) REFERENCES `authors` (`id_author`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `narrationtexts`
--
ALTER TABLE `narrationtexts`
  ADD CONSTRAINT `FK_IDNarration_IDNarration` FOREIGN KEY (`id_narration`) REFERENCES `narrations` (`id_narration`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `sonnets`
--
ALTER TABLE `sonnets`
  ADD CONSTRAINT `FK_Sonnet_Author` FOREIGN KEY (`id_author`) REFERENCES `authors` (`id_author`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `sonnettexts`
--
ALTER TABLE `sonnettexts`
  ADD CONSTRAINT `FK_IDSonnet_IDSonnet` FOREIGN KEY (`id_sonnet`) REFERENCES `sonnets` (`id_sonnet`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `talechoices`
--
ALTER TABLE `talechoices`
  ADD CONSTRAINT `FK_TaleChoice_TextNext` FOREIGN KEY (`id_text_next`) REFERENCES `taletexts` (`id_text`),
  ADD CONSTRAINT `FK_TaleChoice_TextPrevious` FOREIGN KEY (`id_text_previous`) REFERENCES `taletexts` (`id_text`);

--
-- Contraintes pour la table `tales`
--
ALTER TABLE `tales`
  ADD CONSTRAINT `FK_First_Text` FOREIGN KEY (`id_first_text`) REFERENCES `taletexts` (`id_text`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Tale_Author` FOREIGN KEY (`id_author`) REFERENCES `authors` (`id_author`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
