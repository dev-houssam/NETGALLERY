# NETGALLERY

### Application Web de gestion d'une exposition

**NETGALLERY** est une application Web conçue pour gérer et présenter une exposition artistique en ligne. Elle permet aux visiteurs de consulter les œuvres et les informations associées, tandis que les organisateurs disposent d'un espace d'administration pour gérer les contenus de l'exposition.

Le projet a été réalisé dans le cadre d'un projet universitaire de **L2 Informatique** en 2022, avec une architecture reposant sur **PHP, MariaDB et SQL**.

## Fonctionnalités

### 👤 Gestion des utilisateurs

* Création et gestion des profils utilisateurs
* Gestion des rôles **Administrateur** et **Organisateur**
* Activation et désactivation des profils
* Modification des informations personnelles
* Authentification à l'espace Back Office

Les profils désactivés restent conservés en base de données mais ne permettent plus l'accès à l'application d'administration. 

### 🖼️ Gestion des œuvres

Les utilisateurs autorisés peuvent :

* Ajouter une œuvre
* Modifier une œuvre
* Supprimer une œuvre
* Rechercher des œuvres
* Associer une ou plusieurs œuvres à leurs exposants
* Consulter la fiche détaillée d'une œuvre

Le modèle prend également en charge les **œuvres collectives**, pouvant être associées à plusieurs exposants. 

### 🎨 Gestion des exposants

Chaque exposant peut être enregistré avec :

* Nom et prénom
* Adresse e-mail
* Biographie
* Site Web
* Image
* Œuvres présentées

Les relations entre exposants et œuvres sont modélisées afin de gérer aussi bien les œuvres individuelles que collectives. 

### 📰 Actualités

Les utilisateurs disposant d'un compte actif peuvent publier des actualités relatives à l'exposition.

Les dernières actualités restent accessibles à l'ensemble des visiteurs, y compris aux utilisateurs non connectés. 

### 📖 Livre d'or

L'application intègre un livre d'or permettant aux visiteurs de laisser un commentaire.

L'accès est associé au **ticket d'entrée du visiteur**, et les organisateurs peuvent modérer les commentaires publiés. 

### 🎟️ Gestion des visites

Chaque visiteur dispose d'un ticket contenant notamment :

* Un numéro de visiteur
* Un mot de passe
* La date et l'heure de création
* La clé Wi-Fi

Le ticket permet notamment d'accéder aux fonctionnalités réservées aux visiteurs pendant leur visite. 

### 📱 Consultation de la galerie

Un visiteur peut accéder à la galerie depuis :

* Un smartphone
* Une tablette
* Un ordinateur

Un **QR Code** placé dans l'espace d'exposition permet notamment d'accéder directement à la galerie des œuvres. 

---

## 🏗️ Architecture des données

La base de données repose sur plusieurs entités permettant de représenter les différents éléments de l'exposition :

```text
Compte utilisateur
       │
       └── Profil
             │
             ├── Actualités
             ├── Exposants
             │      │
             │      └── Œuvres
             │
             └── Visiteurs
                    │
                    └── Commentaires

Configuration de l'exposition
```

Le modèle relationnel comprend notamment les tables :

```text
t_compte_cpt
t_profil_pfl
t_news_new
t_visiteur_vis
t_commentaire_com
t_exposant_exp
t_oeuvre_oeuv
t_presente_pres
t_configuration_cfg
```

La relation `t_presente_pres` permet notamment de représenter la relation **plusieurs-à-plusieurs entre les exposants et les œuvres**, nécessaire pour gérer les œuvres collectives.

---

## 🗄️ Base de données

La base utilise **MariaDB** et **InnoDB**, avec des clés primaires et étrangères permettant de maintenir les relations entre les différentes entités.

Exemple de relation :

```text
Exposant
   │
   ├──────────────┐
   │              │
   ▼              ▼
Œuvre 1        Œuvre 2
   ▲              ▲
   └──────┬───────┘
          │
       Présente
```

La structure SQL définit notamment les contraintes d'intégrité référentielle entre les comptes, profils, visiteurs, commentaires, exposants et œuvres.

---

## 🖥️ Interface Web

L'application devait proposer une interface **responsive**, utilisable depuis différents types d'appareils.

Deux espaces principaux sont prévus :

### Partie publique

Accessible aux visiteurs :

* Présentation de l'exposition
* Actualités
* Galerie des œuvres
* Informations sur les exposants
* Fiches détaillées des œuvres
* Livre d'or

### Back Office

Accessible aux utilisateurs autorisés :

* Gestion des profils
* Gestion des œuvres
* Gestion des exposants
* Gestion des actualités
* Gestion des visiteurs
* Modération du livre d'or
* Configuration de l'exposition

---

## 🔐 Gestion des rôles

Deux rôles principaux sont définis dans l'application :

| Rôle               | Accès                                                   |
| ------------------ | ------------------------------------------------------- |
| **Administrateur** | Gestion des profils et fonctionnalités d'administration |
| **Organisateur**   | Gestion des contenus de l'exposition                    |

Les visiteurs utilisent quant à eux l'application principalement pour consulter les contenus de l'exposition et interagir avec le livre d'or.

---

## 🛠️ Technologies

* **PHP**
* **SQL**
* **MariaDB**
* **HTML / CSS**
* **Responsive Web Design**
* **Git**

Le cahier des charges imposait le développement de l'application Web en **PHP** avec **MariaDB** pour la base de données. 

---

## 🎯 Objectifs pédagogiques

Ce projet a permis de travailler sur plusieurs aspects du développement Web :

* Analyse d'un cahier des charges
* Modélisation d'une base de données relationnelle
* Conception SQL
* Développement Web côté serveur avec PHP
* Gestion de formulaires
* Authentification et gestion des rôles
* CRUD sur différentes entités
* Gestion des relations entre entités
* Gestion des droits d'accès
* Conception d'une interface responsive
* Déploiement d'une application Web

---

## 📚 Contexte

**Projet universitaire — L2 Informatique**

**Université de Bretagne Occidentale (UBO)**
**2022**

Le projet devait être livré sur le serveur de production de l'université et s'appuyer sur un jeu de données réaliste comprenant notamment plusieurs profils, administrateurs, exposants, œuvres et actualités. 

---

## 👨‍💻 Auteur

**Houssam BACAR**

Étudiant en informatique — Université de Bretagne Occidentale

## LICENCE MIT
