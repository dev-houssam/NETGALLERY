INSERT INTO `t_commentaire_com` (`com_num`, `com_date_heure_publication`, `com_texte`, `vis_num`) VALUES
(1, '2022-02-26 04:24:33', 'Je suis très content d\'avoir beaucoup appris. Le sujet est de la plus haute importance.', 1);



INSERT INTO `t_compte_cpt` (`cpt_pseudo`, `cpt_mot_de_passe`) VALUES
('Houssam', 'b54bead4c9e8d19883706a9b2fcbb20d'),
('Leonardi', '3b22979d32ec970775f09515a325e562'),
('gEstionnaire', '98abb15e560057e5504e99187702ed4e'),
('vmarc', '8ee3ad82de6e0cd6a37e3a83d0cdf986');



INSERT INTO `t_configuration_cfg` (`cfg_intitule`, `cfg_date_debut`, `cfg_date_fin`, `cfg_presentation`, `cfg_lieu`, `cfg_date_vernissage`, `cfg_texte_bienvenue`) VALUES
('Exposition', '2022-02-11', '2022-02-18', 'C\'est en ce moment inoubliable que je vous présente l\'un de mes chefs d\'oeuvres.', 'UBO CLUB DE Brest', '2022-01-27', 'Je vous souhaite la bienvenue parmi nous. ');


INSERT INTO `t_news_new` (`new_id`, `new_titre`, `new_texte`, `new_date`, `cpt_pseudo`) VALUES
(1, 'Les virus informatique', 'Depuis plusieurs années, nous sommes confrontés aux menaces numériques que sont les virus. Donc franchement, comment pourrait-on s\'en débarrasser pour de bon ? Hélas, c\'est compliqué !', '2022-02-16', 'gEstionnaire');


INSERT INTO `t_oeuvre_oeuv` (`oeuv_code`, `oeuv_intitule`, `oeuv_date_creation`, `oeuv_description`, `oeuv_fichier_image`) VALUES
(1, 'WannaCryptor', '2022-02-10', 'WannaCry, aussi connu sous le nom WannaCrypt1,2, WanaCrypt0r 2.02 ou similaires, est un logiciel malveillant de type rançongiciel auto-répliquant3.\r\n', '/img/wannacry.jpeg');



INSERT INTO `t_profil_pfl` (`pfl_nom`, `pfl_prenom`, `pfl_mail`, `pfl_role`, `pfl_validite`, `pfl_date`, `cpt_pseudo`) VALUES
('Houssam', 'Bacar', 'houssam.bacar@send.com', 'O', 'O', '2022-01-28', 'Houssam'),
('Marc', 'Valerie', 'vmarc@domain.com', 'A', 'A', '2022-01-27', 'gEstionnaire');


INSERT INTO `t_visiteur_vis` (`vis_num`, `vis_intitule`, `vis_mot_de_passe`, `vis_date_heure_publication`, `vis_nom`, `vis_prenom`, `vis_mail`, `cpt_pseudo`) VALUES
(1, 'Internaute', '78636ed3b0df209699811388d95dcaf6', '2022-01-22 05:10:12', 'Leo', 'Nardi', 'nardi@gmail.fr', 'Leonardi');



