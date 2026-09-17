-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  jeu. 27 jan. 2022 à 19:16
-- Version du serveur :  10.3.9-MariaDB-log
-- Version de PHP :  7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `zfl2-zbacarho0`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_commentaire_com`
--

CREATE TABLE `t_commentaire_com` (
  `com_num` int(11) NOT NULL,
  `com_date_heure_publication` datetime NOT NULL,
  `com_texte` varchar(200) NOT NULL,
  `vis_num` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_commentaire_com`
--

INSERT INTO `t_commentaire_com` (`com_num`, `com_date_heure_publication`, `com_texte`, `vis_num`) VALUES
(1, '2022-02-26 04:24:33', 'Je suis très content d\'avoir beaucoup appris. Le sujet est de la plus haute importance.', 1);

-- --------------------------------------------------------

--
-- Structure de la table `t_compte_cpt`
--

CREATE TABLE `t_compte_cpt` (
  `cpt_pseudo` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `cpt_mot_de_passe` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_compte_cpt`
--

INSERT INTO `t_compte_cpt` (`cpt_pseudo`, `cpt_mot_de_passe`) VALUES
('Houssam', 'b54bead4c9e8d198837e6a9b2fc0b20d'),
('Leonardi', '3b22979d320c970775f59515a325e562'),
('gEstionnaire', '98abb15e560057e05e4e99187702ed4e'),
('vmarc', '8ee3ad82de6e80d6a37e3a83d0cdf986');

-- --------------------------------------------------------

--
-- Structure de la table `t_configuration_config`
--

CREATE TABLE `t_configuration_cfg` (
  `cfg_intitule` varchar(80) NOT NULL,
  `cfg_date_debut` date NOT NULL,
  `cfg_date_fin` date NOT NULL,
  `cfg_presentation` varchar(80) NOT NULL,
  `cfg_lieu` varchar(80) NOT NULL,
  `cfg_date_vernissage` date NOT NULL,
  `cfg_texte_bienvenue` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_configuration_config`
--

INSERT INTO `t_configuration_cfg` (`cfg_intitule`, `cfg_date_debut`, `cfg_date_fin`, `cfg_presentation`, `cfg_lieu`, `cfg_date_vernissage`, `cfg_texte_bienvenue`) VALUES
('Exposition', '2022-02-11', '2022-02-18', 'C\'est en ce moment inoubliable que je vous présente l\'un de mes chefs d\'oeuvres.', 'UBO CLUB DE Brest', '2022-01-27', 'Je vous souhaite la bienvenue parmi nous. ');

-- --------------------------------------------------------

--
-- Structure de la table `t_exposant_exp`
--

CREATE TABLE `t_exposant_exp` (
  `exp_id` int(11) NOT NULL,
  `exp_nom` varchar(20) NOT NULL,
  `exp_prenom` varchar(20) NOT NULL,
  `exp_email` varchar(50) NOT NULL,
  `exp_text` varchar(100) NOT NULL,
  `exp_url` varchar(200) NOT NULL,
  `exp_image` varchar(100) NOT NULL,
  `cpt_pseudo` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_news_new`
--

CREATE TABLE `t_news_new` (
  `new_id` int(11) NOT NULL,
  `new_titre` varchar(50) NOT NULL,
  `new_texte` varchar(300) NOT NULL,
  `new_date` date NOT NULL,
  `cpt_pseudo` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_news_new`
--

INSERT INTO `t_news_new` (`new_id`, `new_titre`, `new_texte`, `new_date`, `cpt_pseudo`) VALUES
(1, 'Les virus informatique', 'Depuis plusieurs années, nous sommes confrontés aux menaces numériques que sont les virus. Donc franchement, comment pourrait-on s\'en débarrasser pour de bon ? Hélas, c\'est compliqué !', '2022-02-16', 'gEstionnaire');

-- --------------------------------------------------------

--
-- Structure de la table `t_oeuvre_oeuv`
--

CREATE TABLE `t_oeuvre_oeuv` (
  `oeuv_code` int(11) NOT NULL,
  `oeuv_intitule` varchar(50) DEFAULT NULL,
  `oeuv_date_creation` date NOT NULL,
  `oeuv_description` varchar(400) NOT NULL,
  `oeuv_fichier_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_oeuvre_oeuv`
--

INSERT INTO `t_oeuvre_oeuv` (`oeuv_code`, `oeuv_intitule`, `oeuv_date_creation`, `oeuv_description`, `oeuv_fichier_image`) VALUES
(1, 'WannaCryptor', '2022-02-10', 'WannaCry, aussi connu sous le nom WannaCrypt1,2, WanaCrypt0r 2.02 ou similaires, est un logiciel malveillant de type rançongiciel auto-répliquant3.\r\n', '/img/wannacry.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `t_presente_pres`
--

CREATE TABLE `t_presente_pres` (
  `exp_id` int(11) NOT NULL,
  `oeuv_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_profil_pfl`
--

CREATE TABLE `t_profil_pfl` (
  `pfl_nom` varchar(20) NOT NULL,
  `pfl_prenom` varchar(20) NOT NULL,
  `pfl_mail` varchar(50) NOT NULL,
  `pfl_role` char(1) NOT NULL,
  `pfl_validite` char(1) NOT NULL,
  `pfl_date` date DEFAULT NULL,
  `cpt_pseudo` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_profil_pfl`
--

INSERT INTO `t_profil_pfl` (`pfl_nom`, `pfl_prenom`, `pfl_mail`, `pfl_role`, `pfl_validite`, `pfl_date`, `cpt_pseudo`) VALUES
('Houssam', 'Bacar', 'houssam.bacar@send.com', 'O', 'O', '2022-01-28', 'Houssam'),
('Marc', 'Valerie', 'vmarc@domain.com', 'A', 'A', '2022-01-27', 'gEstionnaire');

-- --------------------------------------------------------

--
-- Structure de la table `t_visiteur_vis`
--

CREATE TABLE `t_visiteur_vis` (
  `vis_num` int(11) NOT NULL,
  `vis_intitule` varchar(100) NOT NULL,
  `vis_mot_de_passe` char(32) NOT NULL,
  `vis_date_heure_publication` datetime NOT NULL,
  `vis_nom` varchar(20) DEFAULT NULL,
  `vis_prenom` varchar(20) DEFAULT NULL,
  `vis_mail` varchar(50) DEFAULT NULL,
  `cpt_pseudo` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_visiteur_vis`
--

INSERT INTO `t_visiteur_vis` (`vis_num`, `vis_intitule`, `vis_mot_de_passe`, `vis_date_heure_publication`, `vis_nom`, `vis_prenom`, `vis_mail`, `cpt_pseudo`) VALUES
(1, 'Internaute', '78636ed3b0df2f9699811388d95dcaf6', '2022-01-22 05:10:12', 'Leo', 'Nardi', 'nardi@gmail.fr', 'Leonardi');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `t_commentaire_com`
--
ALTER TABLE `t_commentaire_com`
  ADD PRIMARY KEY (`com_num`),
  ADD UNIQUE KEY `vis_num` (`vis_num`);

--
-- Index pour la table `t_compte_cpt`
--
ALTER TABLE `t_compte_cpt`
  ADD PRIMARY KEY (`cpt_pseudo`);

--
-- Index pour la table `t_exposant_exp`
--
ALTER TABLE `t_exposant_exp`
  ADD PRIMARY KEY (`exp_id`),
  ADD KEY `cpt_pseudo` (`cpt_pseudo`);

--
-- Index pour la table `t_news_new`
--
ALTER TABLE `t_news_new`
  ADD PRIMARY KEY (`new_id`),
  ADD KEY `cpt_pseudo` (`cpt_pseudo`);

--
-- Index pour la table `t_oeuvre_oeuv`
--
ALTER TABLE `t_oeuvre_oeuv`
  ADD PRIMARY KEY (`oeuv_code`);

--
-- Index pour la table `t_presente_pres`
--
ALTER TABLE `t_presente_pres`
  ADD PRIMARY KEY (`exp_id`,`oeuv_code`),
  ADD KEY `oeuv_code` (`oeuv_code`);

--
-- Index pour la table `t_profil_pfl`
--
ALTER TABLE `t_profil_pfl`
  ADD PRIMARY KEY (`cpt_pseudo`);

--
-- Index pour la table `t_visiteur_vis`
--
ALTER TABLE `t_visiteur_vis`
  ADD PRIMARY KEY (`vis_num`),
  ADD KEY `cpt_pseudo` (`cpt_pseudo`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `t_commentaire_com`
--
ALTER TABLE `t_commentaire_com`
  MODIFY `com_num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `t_exposant_exp`
--
ALTER TABLE `t_exposant_exp`
  MODIFY `exp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `t_news_new`
--
ALTER TABLE `t_news_new`
  MODIFY `new_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `t_oeuvre_oeuv`
--
ALTER TABLE `t_oeuvre_oeuv`
  MODIFY `oeuv_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `t_visiteur_vis`
--
ALTER TABLE `t_visiteur_vis`
  MODIFY `vis_num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `t_commentaire_com`
--
ALTER TABLE `t_commentaire_com`
  ADD CONSTRAINT `t_commentaire_com_ibfk_1` FOREIGN KEY (`vis_num`) REFERENCES `t_visiteur_vis` (`vis_num`);

--
-- Contraintes pour la table `t_exposant_exp`
--
ALTER TABLE `t_exposant_exp`
  ADD CONSTRAINT `t_exposant_exp_ibfk_1` FOREIGN KEY (`cpt_pseudo`) REFERENCES `t_compte_cpt` (`cpt_pseudo`);

--
-- Contraintes pour la table `t_news_new`
--
ALTER TABLE `t_news_new`
  ADD CONSTRAINT `t_news_new_ibfk_1` FOREIGN KEY (`cpt_pseudo`) REFERENCES `t_compte_cpt` (`cpt_pseudo`);

--
-- Contraintes pour la table `t_presente_pres`
--
ALTER TABLE `t_presente_pres`
  ADD CONSTRAINT `t_presente_pres_ibfk_1` FOREIGN KEY (`exp_id`) REFERENCES `t_exposant_exp` (`exp_id`),
  ADD CONSTRAINT `t_presente_pres_ibfk_2` FOREIGN KEY (`oeuv_code`) REFERENCES `t_oeuvre_oeuv` (`oeuv_code`);

--
-- Contraintes pour la table `t_profil_pfl`
--
ALTER TABLE `t_profil_pfl`
  ADD CONSTRAINT `t_profil_pfl_ibfk_1` FOREIGN KEY (`cpt_pseudo`) REFERENCES `t_compte_cpt` (`cpt_pseudo`);

--
-- Contraintes pour la table `t_visiteur_vis`
--
ALTER TABLE `t_visiteur_vis`
  ADD CONSTRAINT `t_visiteur_vis_ibfk_1` FOREIGN KEY (`cpt_pseudo`) REFERENCES `t_compte_cpt` (`cpt_pseudo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
