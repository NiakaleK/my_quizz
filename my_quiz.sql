-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Dim 28 Mai 2017 à 21:21
-- Version du serveur :  5.7.14
-- Version de PHP :  7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `my_quiz`
--

-- --------------------------------------------------------

--
-- Structure de la table `fos_user`
--

CREATE TABLE `fos_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`) VALUES
(1, 'Niakniaky', 'niakniaky', 'niakale.keita@epitech.eu', 'niakale.keita@epitech.eu', 1, 'fim8tleh3dkc04oo8s4cww4ss4o88oc', '$2y$13$fim8tleh3dkc04oo8s4cwu3EbwhP6x9mYIY7BnsFFKqVaZUs2yKXy', '2017-05-28 20:54:18', 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

CREATE TABLE `questions` (
  `id_question` int(30) NOT NULL,
  `id_quiz_category` int(30) NOT NULL,
  `question` varchar(255) COLLATE utf8_bin NOT NULL,
  `reponse_A` varchar(255) COLLATE utf8_bin NOT NULL,
  `reponse_B` varchar(255) COLLATE utf8_bin NOT NULL,
  `reponse_C` varchar(255) COLLATE utf8_bin NOT NULL,
  `reponse` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `questions`
--

INSERT INTO `questions` (`id_question`, `id_quiz_category`, `question`, `reponse_A`, `reponse_B`, `reponse_C`, `reponse`) VALUES
(1, 1, 'Dans la partie d’échec, Harry Potter prend la place de :', 'Une tour', 'Un fou', 'Un pion', 'Un fou'),
(2, 1, 'Quel est le mot de passe du bureau de Dumbledore ?', 'Dragées Surprise', 'Chocogrenouille', 'Sorbet Citron', 'Sorbet Citron'),
(3, 1, 'Quel chiffre est écrit à l\'avant du Poudlard Express ?', '4732', '6849', '5972', '5972'),
(4, 1, 'Avec qui Harry est-il interdit de jouer à vie au Quidditch par Ombrage ?', 'George Weasley', 'Fred Weasley', 'Drago Malefoy', 'George Weasley'),
(5, 1, 'Sur quelle(s) main(s) Harry s\'écrit-il "je ne dois pas dire de mensonge" pendant ses retenues avec Ombrage ?', 'La gauche', 'La droite', 'Les deux', 'La droite'),
(6, 1, 'Everard et Dilys sont :', 'Deux directeurs de Poudlard', 'Deux amants célèbres de Poudlard', 'Deux préfets en chef', 'Deux directeurs de Poudlard'),
(7, 1, 'Quel est le prénom du professeur Gobe-Planche ?', 'Libellia', 'Carlotta', 'Wilhelmina', 'Wilhelmina'),
(8, 1, 'Quel est le nom de jeune fille de Molly Weasley ?', 'Foist', 'Jugson', 'Prewett', 'Prewett'),
(9, 1, 'Lequel de ces Mangemorts n\'était pas présent lors de l\'invasion au ministère ?', 'Rowle', 'Crabbe', 'Goyle', 'Rowle'),
(10, 1, 'En quelle année sont morts les parents de Harry Potter ?', '1983', '1981', '1982', '1981'),
(11, 2, 'Que signifie AOC ?', 'Aliment Original Contrôlé', 'Appellation d\'Origine Contrôlée', 'Association des Obligations des Consommateurs', 'Appellation d\'Origine Contrôlée'),
(12, 2, 'Que signifie CROUS ?', 'Centre Régional des Oeuvres Universitaires et Scolaires', 'Centre de Restauration et d\'Organisation Universitaire et Secondaire', 'Comité Régional pour l\'Organisation Universitaire et Scolaire', 'Centre Régional des Oeuvres Universitaires et Scolaires'),
(13, 2, 'Que signifie FAI ?', 'Fournisseur d\'Alimention et d\'Informatique', 'Fédération à l\'Accès Informatique', 'Fournisseur d\'Accès Internet', 'Fournisseur d\'Accès Internet'),
(14, 2, 'Que signifie l\'INSEE ?', 'Institut National de la Statistique et des Études Économiques', 'Institut National de Service pour l\'Économie et l\'Enseignement', 'Institution Nationalisé pour les Statistiques des Établissements Économiques', 'Institut National de la Statistique et des Études Économiques'),
(15, 2, 'Que signifie ADN ?', 'Atome Desoxygénénucléique', 'Aspérité Desoxygéné et Nucléanbique', 'Acide Desoxyriboucléique', 'Acide Desoxyriboucléique'),
(16, 2, 'Que signifie SAMU ?', 'Service d\'Ambulance et de Médecine d\'Urgence', 'Service d\'Aide Médicale Urgente', 'Service Auxiliaire Mutualisé d\'Urgence', 'Service d\'Aide Médicale Urgente'),
(17, 2, 'Que signifie SFR ?', 'Société Francophone des Réseaux', 'Société Française de Radiotéléphone', 'Société Financière et Radio-téléphonique', 'Société Française de Radiotéléphone'),
(18, 2, 'Que signifie FNAC ?', 'Fédération Nationale d\'Achat des Cadres', 'Franchise Nationale d\'Art et de Culture', 'Firme Nationale d\'Achat Culturel', 'Fédération Nationale d\'Achat des Cadres'),
(19, 2, 'Que signifie RATP ?', 'Reseaux automatisé des transports parisiens', 'Régie automatique des transports de Paris', 'Régie autonome des transports parisiens', 'Régie autonome des transports parisiens'),
(20, 2, 'Que signifie SMIC ?', 'Salaire Minimum Interprofessionnel de Croissance', 'Salaire Médian d\'Intérêt Communautaire', 'Salaire Moyen d\'Insertion de Croissance', 'Salaire Minimum Interprofessionnel de Croissance'),
(21, 3, 'Que signifie le verbe Enrêner ?', 'Mettre des rênes', 'Etre dépendent de quelque chose', 'Etre à l\'origine d\'un fait', 'Mettre des rênes'),
(22, 3, 'Qu\'est-ce qu\'un protocole ?', 'Le fait de savoir parler plusieurs langues', 'Une série de chiffre', 'Un ensemble de règles établies', 'Un ensemble de règles établies'),
(23, 3, 'Que fait une langue qui est protractile ?', 'Elle peut se diviser en deux', 'Elle peut être étirée vers l\'avant', 'Elle peut s\'enrouler sur elle même', 'Elle peut être étirée vers l\'avant'),
(24, 3, 'Qu\'est ce qu\'un Campanile ?', 'Un cloché', 'Une maison de campagne', 'Une forteresse', 'Un cloché'),
(25, 3, 'ue signifie le mot « gentilé » ?', 'C\'est un synonyme du mot gentillesse', 'C\'est le nom du mouvement que l\'on fait avec un tournevis', 'C\'est le nom des habitants d\'un lieu', 'C\'est le nom des habitants d\'un lieu'),
(26, 3, 'Qu\'est ce qu\'un Pugilat ?', 'Un combat au corps à corps', 'Une demande d\'audience', 'Une sorte de dague', 'Un combat au corps à corps'),
(27, 3, 'Parmi ces définitions, laquelle n\'est pas une torpille ?', 'Un poisson qui ressemble à une raie', 'Une espèce de calamar', 'Un engin automoteur sous-marin', 'Une espèce de calamar'),
(28, 3, 'Qu\'est ce que la déontologie ?', 'Le code de conduite d\'une profession', 'Une partie de la médecine qui étudie la peau', 'L\'étude des facultés psychiques des dauphins', 'Le code de conduite d\'une profession'),
(29, 3, 'Qu\'est ce qu\'un carcan ?', 'Une sorte de montre', 'Une pièce de tissu', 'Une contrainte qui entrave la liberté', 'Une contrainte qui entrave la liberté'),
(30, 3, 'Que signifie le terme univoque ?', 'Qui a plusieurs sens', 'Qui n\'a qu\'un sens', 'Qui est sans contrainte', 'Qui n\'a qu\'un sens'),
(31, 4, 'Quelle est la spécialité de Reims ?', 'Le biscuit rose', 'Le trou rémois', 'Le cidre rosé', 'Le biscuit rose'),
(32, 4, 'Parmi ces spécialités, laquelle ne fait pas partie du patrimoine gastronomique de la ville de Troyes ?', 'Le chaource', 'La pâte de fruit à la mirabelle', 'L\'andouillette', 'La pâte de fruit à la mirabelle'),
(33, 4, 'Dans quelle département trouve-t-on les lentilles du Puy ?', 'Allier', 'Cantal', 'Haute Loire', 'Haute Loire'),
(34, 4, 'Dans quel département trouve-t-on la Teurgoule ?', 'Le Calvados', 'Le cantal', 'L\'ardèche', 'Le Calvados'),
(35, 4, 'Quel fromage ne trouve-t-on pas en Normandie ?', 'Livarot', 'Neufchâtel', 'Saint Félicien', 'Saint Félicien'),
(36, 4, 'Parmi ces spécialités, laquelle ne vient pas de la région PACA ?', 'Le cassoulet', 'La tapenade', 'Les calissons', 'Le cassoulet'),
(37, 4, 'Quelle est la spécialité de Tours ?', 'Le confis', 'Le magret', 'Les rillons', 'Les rillons'),
(38, 4, 'Parmi ces biscuits lesquelles ne vient pas de Bretagne ?', 'Les madeleines', 'Les craquelins', 'Les gavottes', 'Les madeleines'),
(39, 4, 'Quelle est le nom de cette recette: Lamproie à la… ?', 'Toulousaine', 'Bordelaise', 'Marseillaise', 'Bordelaise'),
(40, 4, 'Le Kouglof est une spécialité de :', 'L\'Alsace', 'La lorraine', 'La Franche comté', 'L\'Alsace'),
(41, 5, 'Comment s\'appelle le père d\'Homer Simpson ?', 'Georges', 'Francis', 'Abraham', 'Abraham'),
(42, 5, 'Quel est le nom du dessin animé gore préféré de Bart et Lisa Simpson ?', 'Les tronçonneuses folles', 'Itchy et Scratchy show', 'Cat and dog', 'Itchy et Scratchy show'),
(43, 5, 'De quel instrument joue Lisa Simpson ?', 'Du saxophone', 'De la trompette', 'De la clarinette', 'Du saxophone'),
(44, 5, 'Comment s\'appelle le meilleur ami de Bart ?', 'Martin', 'Ralph', 'Milhouse', 'Milhouse'),
(45, 5, 'Quelle est la profession de Wiggum ?', 'C\'est le chef de la police', 'Il est vendeur de BD', 'C\'est le vrai nom de l\'homme Abeille', 'C\'est le chef de la police'),
(46, 5, 'Qui en veut à la vie de Bart Simpson ?', 'Krusty le clown', 'Tahiti Bob', 'L\'homme Abeille', 'Tahiti Bob'),
(47, 5, 'Qui est Smithers ?', 'L\'assistant du président de la centrale nucléaire', 'Un collègue d\'Homer Simpson', 'Le président de la centrale nucléaire où travaille Homer', 'L\'assistant du président de la centrale nucléaire'),
(48, 5, 'Quelle est la nationalité de Willy ?', 'Ecossais', 'Canadien', 'Australien', 'Ecossais'),
(49, 5, 'Quelle est la nourriture préférée d\'Homer ?', 'Les pizzas', 'Les hamburgers', 'Les donuts', 'Les donuts'),
(50, 5, 'Dans quelle ville habitent les Simpson ?', 'Sheffield', 'Shortfield', 'Springfield', 'Springfield'),
(51, 6, 'Qui est le créateur des Simpson ?', 'Seth Mac Farlane', 'Matt Groening', 'Glenn Eichler', 'Matt Groening'),
(52, 6, 'Quel est le nom de jeune fille de Marge Simpson ?', 'Polsen', 'Bouvier', 'March', 'Bouvier'),
(53, 6, 'Que faisait le chien des Simpson avant qu\'ils l\'adoptent ?', 'De la course de lévriers', 'C\'était un chien d\'aveugle', 'Il était chien policer', 'De la course de lévriers'),
(54, 6, 'Où Maud Flanders trouva t-elle la mort ?', 'Elle disparaît en mer', 'Dans la maison des Simpson', 'Dans les gradins d\'un stade', 'Dans les gradins d\'un stade'),
(55, 6, 'Quelle réplique prononce très souvent Homer Simpson ?', 'Oh punaise!', 'Oh mon dieu!', 'Oh bravo!', 'Oh punaise!'),
(56, 6, 'Comment s\'appelle la bière préférée des habitat de Springfield ?', 'La Kronekein', 'La Duff', 'La Spiner', 'La Duff'),
(57, 6, 'Quelle est le vice de Marge ?', 'Elle se drogue secrètement', 'Elle boit souvent', 'Elle a une addiction aux jeux d\'argent', 'Elle a une addiction aux jeux d\'argent'),
(58, 6, 'Comment s\'appelle la mère d\'Homer ?', 'Mona', 'Gina', 'Dina', 'Mona'),
(59, 6, 'Comment s\'appelle la ville voisine et ennemie de Springfrield ?', 'Stringville', 'Shelbyville', 'Summerville', 'Shelbyville'),
(60, 6, 'Quelle est l\'une des particularités de Moe ?', 'Il est ventriloque', 'Il vole dans les supermarchés', 'Il a des tendances suicidaires', 'Il a des tendances suicidaires'),
(61, 7, 'Où se trouve la base de commandement du SGC ?', 'Dans le Colorado', 'Dans l\'Arizona', 'Dans l\'Utah', 'Dans le Colorado'),
(62, 7, 'Comment s\'appelle les crabes métalliques qui se reproduisent rapidement en se nourrissant de métal ?', 'Les réplicants', 'Les réplicateurs', 'Les répliqueurs', 'Les réplicateurs'),
(63, 7, 'Combien a y-t-il de saisons dans Stargate SG1 ?', '10 Saisons', '8 Saisons', '12 Saisons', '10 Saisons'),
(64, 7, 'Dans l\'épisode « L\'histoire sans fin » que font Jack et Teal\'c d\'assez particulier ?', 'Ils jouent au tennis dans les couloirs de la base', 'Ils font du camping dans la base', 'Ils font du golf avec la porte des étoiles', 'Ils font du golf avec la porte des étoiles'),
(65, 7, 'Qui est le commandant suprême de la flotte Asgard ?', 'Loki', 'Thor', 'Penegal', 'Thor'),
(66, 7, 'De qui Jolinar était-elle la compagne ?', 'Martouf', 'Selmak', 'Malek', 'Martouf'),
(67, 7, 'Quel mot désigne les habitants de la planète Terre ?', 'Les Tok\'ra', 'Les Oris', 'Les Tau\'ri', 'Les Tau\'ri'),
(68, 7, 'De qui Sha\'are devient-elle l\'hôte ?', 'Amaterasu', 'Hathor', 'Amonet', 'Amonet'),
(69, 7, 'L\'alliance des quatre races est composée des Anciens, Des Asgards, des Furlings et..', 'Des Nox', 'Des Ori', 'Des Unas', 'Des Nox'),
(70, 7, 'Comment meurt Daniel Jackson avant de faire son Ascension et d\'être ensuite remplacé par Jonas Quinn ?', 'Il est tué par Apophis', 'Il absorbe une dose de radiation', 'Il tombe dans un ravin', 'Il absorbe une dose de radiation'),
(71, 8, 'Quels sont les prénoms de Gibbs ?', 'Jack Lenny', 'Leroy Jethro', 'Lance Jimmy', 'Leroy Jethro'),
(72, 8, 'Comment est morte Kate à la fin de la deuxième saison ?', 'D\'une balle dans la tête', 'Lors d\'une explosion', 'En tombant d\'un toit', 'D\'une balle dans la tête'),
(73, 8, 'Quelle est la boisson préférée d\'Abby ?', 'Un diabolo menthe', 'Un thé glacé', 'Un soda caféine', 'Un soda caféine'),
(74, 8, 'Qui est en réalité Jeanne Benoit, la petite amie de Tony dans la Saison 4 ?', 'Une espionne russe', 'La fille d\'un trafiquant d\'armes', 'Un agent double de la CIA', 'La fille d\'un trafiquant d\'armes'),
(75, 8, 'De quelle grave maladie Tony DiNozzo est infectée dans la saison 2 ?', 'La peste', 'La tuberculose', 'Le cholera', 'La peste'),
(76, 8, 'A part les filles, quelle est la grande passion de Tony DiNozzo ?', 'Le base-ball', 'Les voitures de courses', 'Le cinéma', 'Le cinéma'),
(77, 8, 'Ziva David est un ancien officier du … ?', 'KGB', 'NSA', 'Mossad', 'Mossad'),
(78, 8, 'Lorsque Gibbs décide de démissionner à la fin de la Saison 3, quel personnage devient le chef de l\'équipe ?', 'Tony', 'Ziva', 'McGee', 'Tony'),
(79, 8, 'Avec quel agent Palmer a-t-il eu une liaison ?', 'Ziva', 'Lee', 'Kate', 'Lee'),
(80, 8, 'Comment Jenny Shepard trouve-t-elle la mort au court de la saison 5 ?', 'Lors d\'une fusillade', 'Lors d\'un accident de voiture', 'Lors d\'une explosion', 'Lors d\'une fusillade'),
(81, 9, 'Lequel de ces navires ne se retrouvent pas dans le « Toucher-couler » ?', 'Un porte-avions', 'Un cuirassé', 'Un sous-marin', 'Un cuirassé'),
(82, 9, 'Laquelle de ces couleurs n\'existe pas au Trivial poursuite traditionnel ?', 'Orange', 'Vert', 'Rouge', 'Rouge'),
(83, 9, 'Laquelle de ces lettres vaut 10 points au scrabble ?', 'J', 'K', 'Q', 'K'),
(84, 9, 'Quelle est la rue qui coute le moins cher au Monopoly français ?', 'Boulevard de Belleville', 'Rue de Vaugirard', 'Rue Lecourbe', 'Boulevard de Belleville'),
(85, 9, 'Dans le monopoly d\'origine combien gagnait-on en passant par la case départ ?', '2 000 francs', '20 000 francs', '50 000 francs', '20 000 francs'),
(86, 9, 'Parmi ces pays, lequel n\'est pas présent sur le plateau du jeu « Risk » ?', 'Russie', 'Ukraine', 'Chine', 'Russie'),
(87, 9, 'Combien y a-t-il de flèches au Backgammon ?', '24', '12', '32', '24'),
(88, 9, 'Lequel de ces déplacement n\'existe pas aux échecs ?', 'Le roque', 'En passant', 'Le pool', 'Le pool'),
(89, 9, 'Au jeu du Cluedo qui est professeur ?', 'Violet', 'Olive', 'Orange', 'Violet'),
(90, 9, 'Comment appelle-t-on le groupe de cartes au 1000 bornes qui comprend : As du volant, camion-citerne, increvable, prioritaire....', 'Les parades', 'Les bottes', 'Les attaques', 'Les bottes'),
(91, 10, 'Lequel de ces langages ne peut pas être exécuté côté serveur ?', 'HTML', 'JavaScript', 'PHP', 'HTML'),
(92, 10, 'Lequel de ces langages a la vitesse d\'éxécution la plus rapide ?', 'PHP', 'Python', 'C', 'C'),
(93, 10, 'Quel est l\'animal qui représente habituellement le langage PHP ?', 'Serpent', 'Elephant', 'Souris', 'Elephant'),
(94, 10, 'Lequel de ces systèmes d\'exploitation est sous environnement UNIX ?', 'Windows', 'Debian', 'Java', 'Debian'),
(95, 10, 'Lequel de ces langages est reconnu pour sa grande portabilité et sa flexibilité ?', 'Java', 'Python', 'C++', 'Java'),
(96, 10, 'Laquelle de ces propositions n\'est pas un langage de programmation ?', 'Saphir', 'Ruby', 'Perl', 'Saphir'),
(97, 10, 'Quelle commande permet de planifier l\'éxécution de tâches sous UNIX ?', 'task', 'run', 'crontab', 'crontab'),
(98, 10, 'Quel est le composant principal d\'un ordinateur, sur lequel sont greffés les autres ?', 'Carte graphique', 'Carte mère', 'Processeur', 'Carte mère'),
(99, 10, 'Quel port externe n\'existe pas sur un ordinateur ?', 'VGE', 'HDMI', 'USB', 'VGE'),
(100, 10, 'Quel nom d\'attaque n\'existe pas dans le domaine de la sécurité ?', 'DDOS', 'MS-DOS 95', 'Bruteforce', 'MS-DOS 95'),
(101, 11, 'Que signifie HTTP ?', 'Host Type Text Protocol', 'Host Trame Transfer Protocol', 'Hyper Text Transfer Protocol', 'Hyper Text Transfer Protocol'),
(102, 11, 'Que signifie SSL ?', 'Socket Same Loundge', 'Secure Socket Layer', 'Security Socket Law', 'Secure Socket Layer'),
(103, 11, 'Que signifie FTP ?', 'Film Transfert Processus', 'File Transfer Protocol', 'File Trame Pratical', 'File Transfer Protocol'),
(104, 11, 'Laquelle de ces propositions n\'est pas un SGBDR ?', 'MySQL', 'MongoDB', 'CSV', 'CSV'),
(105, 11, 'Que signifie WWW ?', 'Word Wild Web', 'Warp World Web', 'World Wide Web', 'World Wide Web'),
(106, 11, 'Que signifie URI ?', 'Uniform Resource Identifier', 'Unity Range Information', 'Ulimit Redirection Id', 'Uniform Resource Identifier'),
(107, 11, 'Que signifie IP ?', 'Internic Procedural', 'Internet Protocol', 'Internal Processus', 'Internet Protocol'),
(108, 11, 'Qu\'est-ce que peut évoquer REMOTE_ADDR ?', 'Une Adresse IP', 'Une Adresse MAC', 'Une Prise de contrôle', 'Une Adresse IP'),
(109, 11, 'Laquelle de ces propositions n\'est pas une IP correcte ?', '127.0.0.1', '128.256.0.1', '255.255.0.0', '128.256.0.1'),
(110, 11, 'Laquelle de ces propositions n\'est pas une MAC correcte ?', 'EA:9D:00:5B:CE:FF', 'AA:BB:CC:DD:EE:FF', 'EX:3F:7E:E6:2D:58', 'EX:3F:7E:E6:2D:58');

-- --------------------------------------------------------

--
-- Structure de la table `quiz_category`
--

CREATE TABLE `quiz_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `quiz_category`
--

INSERT INTO `quiz_category` (`id`, `name`, `image`) VALUES
(1, 'Harry Potter', 'https://s-media-cache-ak0.pinimg.com/736x/8e/05/e1/8e05e166cc2a9488c8c046e9735be786.jpg'),
(2, 'Sigles Francais', 'https://flenantes.files.wordpress.com/2014/03/sigles.jpg'),
(3, 'Définitions de mots', 'http://techbeacon.com/sites/default/files/styles/article_main_image/public/definition-devops-6-key-attributes-understand-agile.jpg?itok=LAy73tjb'),
(4, 'Les spécialités culinaires', 'http://www.recettesetcie.fr/wp-content/uploads/2017/02/specialites-culinaires-montreal-810x324.jpg'),
(5, 'Séries TV : les simpson - partie 1', 'https://upload.wikimedia.org/wikipedia/fr/7/79/Les_simpson_logo_France.png'),
(6, 'Séries TV : les simpson - partie 2', 'https://upload.wikimedia.org/wikipedia/fr/7/79/Les_simpson_logo_France.png'),
(7, 'Séries TV : Stargate SG1', 'http://www.jodeoli.fr/wp-content/uploads/2010/06/stargate_cast.jpg'),
(8, 'Séries TV : NCIS', 'http://vignette2.wikia.nocookie.net/ncis/images/8/87/NCIS.jpg/revision/latest?cb=20120609204135&path-prefix=fr'),
(9, 'Jeux de société', 'http://www.vivelejeu.com/wp-content/uploads/2013/04/00_jeux_societe.jpg'),
(10, 'Programmation', 'http://fr.ubergizmo.com/wp-content/uploads/2015/01/shutterstock_230705539.jpg'),
(11, 'Sigles informatiques', 'https://www.developpez.net/forums/attachments/p211747d1/a/a/a');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `fos_user`
--
ALTER TABLE `fos_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`);

--
-- Index pour la table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id_question`);

--
-- Index pour la table `quiz_category`
--
ALTER TABLE `quiz_category`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `fos_user`
--
ALTER TABLE `fos_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `questions`
--
ALTER TABLE `questions`
  MODIFY `id_question` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT pour la table `quiz_category`
--
ALTER TABLE `quiz_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
