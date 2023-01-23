-- phpMyAdmin SQL Dump
-- version 4.6.6deb4+deb9u2
-- https://www.phpmyadmin.net/
--
-- Client :  sqletud.u-pem.fr
-- Généré le :  Mar 17 Janvier 2023 à 10:40
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
-- Structure de la table `Authors`
--

CREATE TABLE `Authors` (
  `id_author` int(10) UNSIGNED NOT NULL,
  `name` tinytext NOT NULL,
  `first_name` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Authors`
--

INSERT INTO `Authors` (`id_author`, `name`, `first_name`) VALUES
(1, 'GAURIAT', 'Valentin'),
(2, 'CHREA', 'Léna'),
(3, 'COURON', 'Enora'),
(4, 'GRANDIER', 'Maureen'),
(5, 'PAIN', 'Zacharie'),
(6, 'DUVAL', 'Guilhem');

-- --------------------------------------------------------

--
-- Structure de la table `BristolLinks`
--

CREATE TABLE `BristolLinks` (
  `id_bristol` int(10) UNSIGNED NOT NULL,
  `id_text` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `BristolLinks`
--

INSERT INTO `BristolLinks` (`id_bristol`, `id_text`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33);

-- --------------------------------------------------------

--
-- Structure de la table `Bristols`
--

CREATE TABLE `Bristols` (
  `id_bristol` int(10) UNSIGNED NOT NULL,
  `id_author` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Bristols`
--

INSERT INTO `Bristols` (`id_bristol`, `id_author`) VALUES
(1, 4);

-- --------------------------------------------------------

--
-- Structure de la table `BristolTexts`
--

CREATE TABLE `BristolTexts` (
  `id_text` int(10) UNSIGNED NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `BristolTexts`
--

INSERT INTO `BristolTexts` (`id_text`, `text`) VALUES
(1, 'Pour faucher'),
(2, 'Des détournements indélicats'),
(3, 'Pour dérober'),
(4, 'Des divagations malhonnêtes'),
(5, 'Cueillir l’ambition'),
(6, 'Inconnu'),
(7, 'Fuir la folie des hommes'),
(8, 'Brûler ses ailes'),
(9, 'Se laissant recouvrir'),
(10, 'Sous les larmes'),
(11, 'Libre'),
(12, 'Écrire sur l\'éther bleuté'),
(13, 'Étranger'),
(14, 'Malgré moi'),
(15, 'Cueillir un sourire'),
(16, 'Hélas'),
(17, 'Te chapardant'),
(18, 'Partir au loin'),
(19, 'Malgré toi'),
(20, 'Pour pouvoir s\'en sortir'),
(21, 'Me fauchant'),
(22, 'Observer attentivement'),
(23, 'Prenant ton dû'),
(24, 'L’impénétrable façade'),
(25, 'Sacrilège'),
(26, 'Perdre mon innocence'),
(27, 'Alors, je disparais'),
(28, 'Inexorablement'),
(29, 'Je serais le voleur'),
(30, 'Sans foi ni loi'),
(31, 'Sans jamais se soucier de rien'),
(32, 'Comme le hasard sur mon chemin'),
(33, 'Voler trop près du soleil ');

-- --------------------------------------------------------

--
-- Structure de la table `HaikuLinks`
--

CREATE TABLE `HaikuLinks` (
  `id_haiku` int(11) UNSIGNED NOT NULL,
  `id_text` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `HaikuLinks`
--

INSERT INTO `HaikuLinks` (`id_haiku`, `id_text`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(2, 6),
(3, 7),
(3, 8),
(3, 9),
(4, 10),
(4, 11),
(4, 12),
(5, 13),
(5, 14),
(5, 15),
(6, 16),
(6, 17),
(6, 18),
(7, 19),
(7, 20),
(7, 21),
(8, 22),
(8, 23),
(8, 24),
(9, 25),
(9, 26),
(9, 27),
(10, 28),
(10, 29),
(10, 30);

-- --------------------------------------------------------

--
-- Structure de la table `Haikus`
--

CREATE TABLE `Haikus` (
  `id_haiku` int(10) UNSIGNED NOT NULL,
  `id_author` int(10) UNSIGNED NOT NULL,
  `group_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Haikus`
--

INSERT INTO `Haikus` (`id_haiku`, `id_author`, `group_num`) VALUES
(1, 3, 1),
(2, 3, 1),
(3, 3, 1),
(4, 3, 1),
(5, 3, 1),
(6, 3, 1),
(7, 3, 1),
(8, 2, 1),
(9, 2, 1),
(10, 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `HaikuTexts`
--

CREATE TABLE `HaikuTexts` (
  `id_text` int(11) UNSIGNED NOT NULL,
  `text_num` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `HaikuTexts`
--

INSERT INTO `HaikuTexts` (`id_text`, `text_num`, `text`) VALUES
(1, 1, 'La lumière éblouissante de dehors'),
(2, 2, 'Comme un soleil au milieu du ciel'),
(3, 3, 'A éclairé mes pensées obscures'),
(4, 1, 'La ruelle sombre devant moi'),
(5, 2, 'Comme la ville fantôme de mes rêves'),
(6, 3, 'Ne m’effraie plus maintenant'),
(7, 1, 'L’obscurité qui m’entoure'),
(8, 2, 'Comme un souffle glacial dans mes mains'),
(9, 3, 'Me fait perdre mes repères'),
(10, 1, 'L’éclair qui m’illumine'),
(11, 2, 'Comme une zébrure sur mes yeux fermés'),
(12, 3, 'M’a dévoilé son secret'),
(13, 1, 'L’ombre du grand châtaignier'),
(14, 2, 'Comme un monstre aux mille tentacules dangereuses'),
(15, 3, 'M’effraie plus qu’avant'),
(16, 1, 'Le reflet sur les flaques'),
(17, 2, 'Comme une forme mouvante dans le lointain'),
(18, 3, 'M’invite à m’approcher'),
(19, 1, 'Le flash dans la nuit'),
(20, 2, 'Comme le croque-mitaine en plein travail'),
(21, 3, 'M’a pris par surprise'),
(22, 1, 'La planète étendue au dessus'),
(23, 2, 'Comme un ami protecteur qui me rassure'),
(24, 3, 'M’émeut devant ce spectacle'),
(25, 1, 'Etoile brillant à l’horizon'),
(26, 2, 'Comme l’éclat d’un imposant diamant'),
(27, 3, 'Me provoque dix milles sensations'),
(28, 1, 'La tulipe en pleine éclosion'),
(29, 2, 'Comme l’apparition d’un nouveau-né'),
(30, 3, 'M’émerveille et m’éblouit');

-- --------------------------------------------------------

--
-- Structure de la table `NarrationLinks`
--

CREATE TABLE `NarrationLinks` (
  `id_narration` int(11) UNSIGNED NOT NULL,
  `id_text` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `NarrationLinks`
--

INSERT INTO `NarrationLinks` (`id_narration`, `id_text`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(3, 17),
(3, 18),
(3, 19),
(3, 20),
(3, 21),
(3, 22),
(3, 23),
(3, 24),
(4, 25),
(4, 26),
(4, 27),
(4, 28),
(4, 29),
(4, 30),
(4, 31),
(4, 32);

-- --------------------------------------------------------

--
-- Structure de la table `Narrations`
--

CREATE TABLE `Narrations` (
  `id_narration` int(10) UNSIGNED NOT NULL,
  `id_author` int(10) UNSIGNED NOT NULL,
  `group_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Narrations`
--

INSERT INTO `Narrations` (`id_narration`, `id_author`, `group_num`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 2, 1),
(4, 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `NarrationTexts`
--

CREATE TABLE `NarrationTexts` (
  `id_text` int(11) UNSIGNED NOT NULL,
  `text_num` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `NarrationTexts`
--

INSERT INTO `NarrationTexts` (`id_text`, `text_num`, `text`) VALUES
(1, 1, 'Un grand loup-garou'),
(2, 2, 'Avec ses grandes dents pointues'),
(3, 3, 'Poursuivait ses nombreuses proies'),
(4, 4, 'Dans la forêt la nuit tombée'),
(5, 5, 'En réalité pour se faire de nombreux amis'),
(6, 6, 'Mais finalement, il réalisa'),
(7, 7, 'Que les gens étaient terrifiés par son aspect'),
(8, 8, 'Pourtant, l’habit ne fait pas le moine.'),
(9, 1, 'Un pilote casse-cou'),
(10, 2, 'Avec un sang-froid incroyable'),
(11, 3, 'Prenait en chasse les avions ennemis'),
(12, 4, 'De jour comme de nuit'),
(13, 5, 'Afin de défendre son territoire'),
(14, 6, 'Quand soudain, il comprit'),
(15, 7, 'Qu\'il tirait sur des avions alliés'),
(16, 8, 'Décidément, il vaut mieux bien réfléchir avant d’agir.'),
(17, 1, 'Un clown'),
(18, 2, 'Rigolo'),
(19, 3, 'Terrorisait les enfants'),
(20, 4, 'En souriant bizarrement'),
(21, 5, 'Alors qu’il voulait les divertir'),
(22, 6, 'Quand soudain, il réalisa'),
(23, 7, 'Qu’il effrayait les personnes et cela le rendait triste'),
(24, 8, 'Parfois, les apparences sont trompeuses.'),
(25, 1, 'Un sorcier'),
(26, 2, 'Aux pouvoirs surnaturels'),
(27, 3, 'Capturait des cobayes'),
(28, 4, 'Par son charisme énigmatique'),
(29, 5, 'Pour exercer la magie noire'),
(30, 6, 'Mais finalement, il comprit'),
(31, 7, 'Qu’il faisait beaucoup de mal'),
(32, 8, 'Parfois, il faut utiliser ce qu’on a à bon escient.');

-- --------------------------------------------------------

--
-- Structure de la table `SonnetLinks`
--

CREATE TABLE `SonnetLinks` (
  `id_sonnet` int(10) UNSIGNED NOT NULL,
  `id_text` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `SonnetLinks`
--

INSERT INTO `SonnetLinks` (`id_sonnet`, `id_text`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14);

-- --------------------------------------------------------

--
-- Structure de la table `Sonnets`
--

CREATE TABLE `Sonnets` (
  `id_sonnet` int(10) UNSIGNED NOT NULL,
  `id_author` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Sonnets`
--

INSERT INTO `Sonnets` (`id_sonnet`, `id_author`) VALUES
(1, 5);

-- --------------------------------------------------------

--
-- Structure de la table `SonnetTexts`
--

CREATE TABLE `SonnetTexts` (
  `id_text` int(11) UNSIGNED NOT NULL,
  `text_num` int(11) UNSIGNED NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `SonnetTexts`
--

INSERT INTO `SonnetTexts` (`id_text`, `text_num`, `text`) VALUES
(1, 1, 'Sur son visage nu se fit sentir la brise'),
(2, 2, 'Alors que sur ses pieds, ruisselaient gouttes d\'eau'),
(3, 3, 'Il ne put s\'empêcher de penser à sa Louise'),
(4, 4, 'De sentir la chaleur au contact de sa peau'),
(5, 5, 'À tout prix il voulait l\'emmener à l\'église'),
(6, 6, 'S\'imaginant déjà échanger les anneaux'),
(7, 7, 'Et soudain, sa vision se trouble, devient grise'),
(8, 8, 'Il se sort de ce rêv(e), le bruit le prend d\'assaut'),
(9, 9, 'Immobil(e), dans la boue, piégé dans cette grotte'),
(10, 10, 'Son regard s\'est posé sur ses pieds froids, sans bottes'),
(11, 11, 'Encor, dans les tranchées, il croupira demain'),
(12, 12, 'Paralysé d\'effroi, cette pensée le bloque'),
(13, 13, 'Pourquoi a-t-il fallu qu\'il vive à cette époque ?'),
(14, 14, 'À lutter pour un(e) guerr(e), sachant que c\'était vain.');

-- --------------------------------------------------------

--
-- Structure de la table `TaleChoices`
--

CREATE TABLE `TaleChoices` (
  `id_choice` int(10) UNSIGNED NOT NULL,
  `id_text_next` int(10) UNSIGNED NOT NULL,
  `choice_text` text NOT NULL,
  `id_text_previous` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `TaleChoices`
--

INSERT INTO `TaleChoices` (`id_choice`, `id_text_next`, `choice_text`, `id_text_previous`) VALUES
(1, 2, 'Vous voulez déjà en finir, vous empruntez un couloir d\'où émane un ronflement étrange. ', 1),
(2, 3, 'Vous êtes intelligent, vous cherchez des indices sur le chemin à emprunter dans la salle.', 1),
(3, 4, 'Telle Kylie Jenner, vous réveillez la bête endormie pour accéder au chemin qu\'elle entrave.', 2),
(4, 6, 'Vous n\'avez pas compris le jeu et passez votre chemin pour emprunter un autre couloir.', 2),
(5, 5, 'Vous avez fait le choix étrange de choisir grec ancien au lycée, suivez les inscriptions et empruntez des escaliers secrets.', 3),
(6, 2, 'Vous avez tapé sur des briques au hasard sans succès. Le gamer, que vous êtes, ragequit et prend l\'autre couloir.', 3),
(7, 7, 'Vous connaissez évidemment la réponse et en êtes un peu trop fier petit intello, vous accédez au couloir convoité.', 4),
(8, 2, 'Votre culture laisse à désirer, vous laissez le Sphinx se rendormir alors que vous cherchez la 3G.', 4),
(9, 8, 'Vous êtes partant pour un Pumpkin Spice Latte.', 5),
(10, 9, 'Vous êtes plutôt team tisane de Noël.', 5),
(11, 10, 'Vous lui demandez s\'il sait où se trouve la sortie, sachant que s\'il pouvait partir, il ne serait plus là.', 6),
(12, 11, 'Vous lui demandez de vous chanter l\'Odyssée en intégralité, vous ne l\'avez pas assez entendu dans votre vie.', 6),
(13, 5, 'Vous étiez toujours choisi dernier en sport au collège, cela vous hante encore, alors vous tombez dans le premier précipice à votre portée.', 7),
(14, 12, 'Vous avez vu tous les films Indiana Jones, ce qui est évidemment suffisant pour traverser ce couloir mortel. ', 7),
(15, 13, 'Vous décidez de reprendre votre périple, votre ordinateur de poche n\'a plus de batterie. Vous quittez le repère de Dédale.', 8),
(16, 9, 'La SCNF a encore du retard. Vous regardez Dédale silencieusement alors que vous souriez timidement.', 8),
(17, 13, 'Nous sommes enfin le premier janvier. Vous quittez enfin le repère de Dédale et essuyez la fausse neige de vos vêtements.', 9),
(18, 8, 'La routine entre vous s\'installe. Vous passez commande et faites comme s\'il ne s\'était rien passé entre vous.', 9),
(19, 12, 'Vous suivez ses indications sûrement trompeuses et prenez un petit Doliprane pour votre mal de tête naissant.', 10),
(20, 14, 'Taureau, la lune influe vos pensées, vous foncez dans le tas et vous suivez votre propre route.', 10),
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
(38, 20, 'La corrida, ce n\'est pas bien. C\'était une publicité militante depuis le début. Maintenant, la fin triste pour que vous reteniez le message.', 19);

-- --------------------------------------------------------

--
-- Structure de la table `TaleLinks`
--

CREATE TABLE `TaleLinks` (
  `id_tale` int(11) UNSIGNED NOT NULL,
  `id_text` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `TaleLinks`
--

INSERT INTO `TaleLinks` (`id_tale`, `id_text`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21);

-- --------------------------------------------------------

--
-- Structure de la table `Tales`
--

CREATE TABLE `Tales` (
  `id_tale` int(10) UNSIGNED NOT NULL,
  `id_author` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Tales`
--

INSERT INTO `Tales` (`id_tale`, `id_author`) VALUES
(1, 6);

-- --------------------------------------------------------

--
-- Structure de la table `TaleTexts`
--

CREATE TABLE `TaleTexts` (
  `id_text` int(10) UNSIGNED NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `TaleTexts`
--

INSERT INTO `TaleTexts` (`id_text`, `text`) VALUES
(1, 'Vous êtes dans la première salle du célèbre dédale du minotaure parce que vous êtes nostalgique de l\'époque où vous dévoriez des livres sur la mythologie grecque.'),
(2, 'Vous faites face à une créature mythique imposante, le Sphinx assoupi, qui a été déplacé de Thèbes pour les besoins de l\'intrigue.'),
(3, 'Vous découvrez une stèle mystérieuse décorée d\'inscriptions mystiques.'),
(4, 'Le Sphinx se réveille puis vous pose une énigme familière tel un professeur qui recycle sans arrêt les mêmes devoirs écrits.'),
(5, 'Après une longue descente, vous découvrez la cachette de Dédale, il est d\'ailleurs en train de prendre un petit café et vous propose de le rejoindre.'),
(6, 'Quelle surprise, Ulysse est là… L\'ouragan Katrina, trop fabuleux pour un pauvre homme, l\'a fait dériver jusqu\'ici.'),
(7, 'Malheureusement, le couloir découvert est blindé de pièges de toute part.'),
(8, 'Dédale écrit votre nom avec maintes fautes d\'orthographes sur un pot antique et vous tend votre boisson tandis que vous sortez votre MacBook Air pour vous donner un genre.'),
(9, 'Pendant que Mariah commence à chantonner, Dédale et vous entamez la séquence clichée de décoration de sapin et de bataille de boule de neige romantique.'),
(10, 'Le chemin à suivre Ulysse exprime. Et il ne délivre cela sans rimes.'),
(11, 'Vous vous êtes endormi plus vite qu\'un IMAC en cours de maths. Vous vous réveillez dans une salle vide.'),
(12, 'À la surprise de tous, vous arrivez à un autre embranchement mis en scène pour donner l\'illusion d\'un choix alors que toutes les interactions sont déjà écrites en avance.'),
(13, 'Vous vous retrouvez face à une horde d\'hoplites qui ont l\'air trop armés et pas assez amicaux.'),
(14, 'C\'est maintenant Héraclès que vous croisez, cette histoire a vraiment un casting cinq étoiles.'),
(15, 'C\'est bête, il semble que votre destinée inclut matricide, inceste, épidémie, sacrifice et voyage aux enfers.'),
(16, 'Alors que vous vous baladez gaiement, vous apercevez la lumière du jour à la fin du fil.'),
(17, 'Dans votre fuite, vous pouvez vous engouffrer à travers une porte menaçante ou continuer vers un chemin qui ressemble à tous les autres.'),
(18, 'Hercule semble très peu concerné par comment vous l\'appelez. Il vous présente tout de même une carte qui aurait été utile plus tôt…'),
(19, 'Vous croisez le minotaure. Il était temps, c\'est le héros de l\'histoire, non ?'),
(20, 'Vous êtes mort, un peu bêtement qui plus est. Votre histoire se termine ici à part si vous souhaitez avoir la bonne fin. Petite astuce, il suffit de tricher et de lire le message en dessous.'),
(21, 'Bravo, vous êtes enfin sortie du dédale du minotaure. Vous vous êtes bien amusé et vous avez bien rigolé malgré la situation quelque peu dangereuse. Quoi ? Vous n\'avez pas rigolé ? Même pas un sourire en coin ? Aïe, c\'est bête pour l\'écrivain ça...');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Authors`
--
ALTER TABLE `Authors`
  ADD PRIMARY KEY (`id_author`);

--
-- Index pour la table `BristolLinks`
--
ALTER TABLE `BristolLinks`
  ADD PRIMARY KEY (`id_bristol`,`id_text`),
  ADD KEY `FK_BristolLink_BristolText` (`id_text`);

--
-- Index pour la table `Bristols`
--
ALTER TABLE `Bristols`
  ADD PRIMARY KEY (`id_bristol`),
  ADD KEY `FK_Bristol_Author` (`id_author`);

--
-- Index pour la table `BristolTexts`
--
ALTER TABLE `BristolTexts`
  ADD PRIMARY KEY (`id_text`);

--
-- Index pour la table `HaikuLinks`
--
ALTER TABLE `HaikuLinks`
  ADD PRIMARY KEY (`id_haiku`,`id_text`),
  ADD KEY `FK_HaikuLink_HaikuText` (`id_text`);

--
-- Index pour la table `Haikus`
--
ALTER TABLE `Haikus`
  ADD PRIMARY KEY (`id_haiku`),
  ADD KEY `FK_Haiku_Author` (`id_author`);

--
-- Index pour la table `HaikuTexts`
--
ALTER TABLE `HaikuTexts`
  ADD PRIMARY KEY (`id_text`);

--
-- Index pour la table `NarrationLinks`
--
ALTER TABLE `NarrationLinks`
  ADD PRIMARY KEY (`id_narration`,`id_text`),
  ADD KEY `FK_NarrationLink_NarrationText` (`id_text`);

--
-- Index pour la table `Narrations`
--
ALTER TABLE `Narrations`
  ADD PRIMARY KEY (`id_narration`),
  ADD KEY `FK_Narration_Author` (`id_author`);

--
-- Index pour la table `NarrationTexts`
--
ALTER TABLE `NarrationTexts`
  ADD PRIMARY KEY (`id_text`);

--
-- Index pour la table `SonnetLinks`
--
ALTER TABLE `SonnetLinks`
  ADD PRIMARY KEY (`id_sonnet`,`id_text`),
  ADD KEY `FK_SonnetLink_SonnetText` (`id_text`);

--
-- Index pour la table `Sonnets`
--
ALTER TABLE `Sonnets`
  ADD PRIMARY KEY (`id_sonnet`),
  ADD KEY `FK_Sonnet_Author` (`id_author`);

--
-- Index pour la table `SonnetTexts`
--
ALTER TABLE `SonnetTexts`
  ADD PRIMARY KEY (`id_text`);

--
-- Index pour la table `TaleChoices`
--
ALTER TABLE `TaleChoices`
  ADD PRIMARY KEY (`id_choice`),
  ADD KEY `FK_TaleChoice_TextPrevious` (`id_text_previous`),
  ADD KEY `FK_TaleChoice_TextNext` (`id_text_next`);

--
-- Index pour la table `TaleLinks`
--
ALTER TABLE `TaleLinks`
  ADD PRIMARY KEY (`id_tale`,`id_text`),
  ADD KEY `FK_TaleLink_Text` (`id_text`);

--
-- Index pour la table `Tales`
--
ALTER TABLE `Tales`
  ADD PRIMARY KEY (`id_tale`),
  ADD KEY `FK_Tale_Author` (`id_author`);

--
-- Index pour la table `TaleTexts`
--
ALTER TABLE `TaleTexts`
  ADD PRIMARY KEY (`id_text`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Authors`
--
ALTER TABLE `Authors`
  MODIFY `id_author` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `Bristols`
--
ALTER TABLE `Bristols`
  MODIFY `id_bristol` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `BristolTexts`
--
ALTER TABLE `BristolTexts`
  MODIFY `id_text` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT pour la table `Haikus`
--
ALTER TABLE `Haikus`
  MODIFY `id_haiku` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `HaikuTexts`
--
ALTER TABLE `HaikuTexts`
  MODIFY `id_text` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT pour la table `Narrations`
--
ALTER TABLE `Narrations`
  MODIFY `id_narration` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `NarrationTexts`
--
ALTER TABLE `NarrationTexts`
  MODIFY `id_text` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT pour la table `Sonnets`
--
ALTER TABLE `Sonnets`
  MODIFY `id_sonnet` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `SonnetTexts`
--
ALTER TABLE `SonnetTexts`
  MODIFY `id_text` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT pour la table `TaleChoices`
--
ALTER TABLE `TaleChoices`
  MODIFY `id_choice` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT pour la table `Tales`
--
ALTER TABLE `Tales`
  MODIFY `id_tale` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `TaleTexts`
--
ALTER TABLE `TaleTexts`
  MODIFY `id_text` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `BristolLinks`
--
ALTER TABLE `BristolLinks`
  ADD CONSTRAINT `FK_BristolLink_Bristol` FOREIGN KEY (`id_bristol`) REFERENCES `Bristols` (`id_bristol`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_BristolLink_BristolText` FOREIGN KEY (`id_text`) REFERENCES `BristolTexts` (`id_text`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `Bristols`
--
ALTER TABLE `Bristols`
  ADD CONSTRAINT `FK_Bristol_Author` FOREIGN KEY (`id_author`) REFERENCES `Authors` (`id_author`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `HaikuLinks`
--
ALTER TABLE `HaikuLinks`
  ADD CONSTRAINT `FK_HaikuLink_Haiku` FOREIGN KEY (`id_haiku`) REFERENCES `Haikus` (`id_haiku`),
  ADD CONSTRAINT `FK_HaikuLink_HaikuText` FOREIGN KEY (`id_text`) REFERENCES `HaikuTexts` (`id_text`);

--
-- Contraintes pour la table `Haikus`
--
ALTER TABLE `Haikus`
  ADD CONSTRAINT `FK_Haiku_Author` FOREIGN KEY (`id_author`) REFERENCES `Authors` (`id_author`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `NarrationLinks`
--
ALTER TABLE `NarrationLinks`
  ADD CONSTRAINT `FK_NarrationLink_Narration` FOREIGN KEY (`id_narration`) REFERENCES `Narrations` (`id_narration`),
  ADD CONSTRAINT `FK_NarrationLink_NarrationText` FOREIGN KEY (`id_text`) REFERENCES `NarrationTexts` (`id_text`);

--
-- Contraintes pour la table `Narrations`
--
ALTER TABLE `Narrations`
  ADD CONSTRAINT `FK_Narration_Author` FOREIGN KEY (`id_author`) REFERENCES `Authors` (`id_author`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `SonnetLinks`
--
ALTER TABLE `SonnetLinks`
  ADD CONSTRAINT `FK_SonnetLink_Sonnet` FOREIGN KEY (`id_sonnet`) REFERENCES `Sonnets` (`id_sonnet`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SonnetLink_SonnetText` FOREIGN KEY (`id_text`) REFERENCES `SonnetTexts` (`id_text`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `Sonnets`
--
ALTER TABLE `Sonnets`
  ADD CONSTRAINT `FK_Sonnet_Author` FOREIGN KEY (`id_author`) REFERENCES `Authors` (`id_author`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `TaleChoices`
--
ALTER TABLE `TaleChoices`
  ADD CONSTRAINT `FK_TaleChoice_TextNext` FOREIGN KEY (`id_text_next`) REFERENCES `TaleTexts` (`id_text`),
  ADD CONSTRAINT `FK_TaleChoice_TextPrevious` FOREIGN KEY (`id_text_previous`) REFERENCES `TaleTexts` (`id_text`);

--
-- Contraintes pour la table `TaleLinks`
--
ALTER TABLE `TaleLinks`
  ADD CONSTRAINT `FK_TaleLink_Tale` FOREIGN KEY (`id_tale`) REFERENCES `Tales` (`id_tale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TaleLink_Text` FOREIGN KEY (`id_text`) REFERENCES `TaleTexts` (`id_text`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `Tales`
--
ALTER TABLE `Tales`
  ADD CONSTRAINT `FK_Tale_Author` FOREIGN KEY (`id_author`) REFERENCES `Authors` (`id_author`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
