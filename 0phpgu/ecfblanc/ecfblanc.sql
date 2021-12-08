-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 22 nov. 2021 à 12:50
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ecfblanc`
--

-- --------------------------------------------------------

--
-- Structure de la table `candidats`
--

CREATE TABLE `candidats` (
  `id_user` int(10) UNSIGNED NOT NULL,
  `lastname_user` varchar(50) NOT NULL,
  `firstname_user` varchar(50) NOT NULL,
  `mail_user` varchar(150) NOT NULL,
  `pass_user` varchar(400) NOT NULL,
  `departement_user` int(10) UNSIGNED NOT NULL,
  `age_user` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `candidats`
--

INSERT INTO `candidats` (`id_user`, `lastname_user`, `firstname_user`, `mail_user`, `pass_user`, `departement_user`, `age_user`) VALUES
(1, 'Anguenot', 'Guillaume', 'aluligu@gmail.com', '$2y$10$Uamj4Mx1uI6/0DCNO.yINembOWlIQDpUHAROlswhqXtqVpnPwVAIO', 5, 23),
(2, 'gu', 'om', 'gyomang@gmail.com', '$2y$10$6UVR5X8lpdtiB1It3AYXj.g2A7vmrkraTXw38we7dLiP.ySn39tMe', 68, 23),
(7, 'Anguenot', 'Guillaume', 'aluligu@gmail.com', '$2y$10$.7bb625S5QIWJ68gAJvEx.lQ6V2wbvIlbeWO6Pm5wd.UPb7QLMBDO', 1, 23);

-- --------------------------------------------------------

--
-- Structure de la table `departements`
--

CREATE TABLE `departements` (
  `id_dep` int(10) UNSIGNED NOT NULL,
  `Name` varchar(50) NOT NULL,
  `dep_actif` int(10) UNSIGNED NOT NULL,
  `dep_taux` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `departements`
--

INSERT INTO `departements` (`id_dep`, `Name`, `dep_actif`, `dep_taux`) VALUES
(1, '01 - Ain', 1, '1.00'),
(2, '02 - Aisne', 1, '1.00'),
(3, '03 - Allier', 1, '1.00'),
(4, '04 - Alpes-de-Haute-Provence', 1, '1.00'),
(5, '05 - Hautes-Alpes', 1, '1.00'),
(6, '06 - Alpes-Maritimes', 1, '1.00'),
(7, '07 - Ardèche', 1, '1.00'),
(8, '08 - Ardennes', 1, '1.00'),
(9, '09 Ariège', 1, '1.00'),
(10, '10 - Aube', 1, '1.00'),
(11, '11 - Aude', 1, '1.00'),
(12, '12 - Aveyron', 1, '1.00'),
(13, '13 - Bouches-du-Rhône', 1, '1.00'),
(14, '14 - Calvados', 1, '1.00'),
(15, '15 - Cantal', 1, '1.00'),
(16, '16 - Charente', 1, '1.00'),
(17, '17 - Charente-Maritime', 1, '1.00'),
(18, '18 - Cher', 1, '1.00'),
(19, '19 - Corrèze', 1, '1.00'),
(20, '2A 2B - Départements Corse', 1, '1.00'),
(21, '21 - Côte-d Or', 1, '1.00'),
(22, '22 - Côtes-d Armor', 1, '1.00'),
(23, '23 - Creuse', 1, '1.00'),
(24, '24 - Dordogne', 1, '1.00'),
(25, '25 - Doubs', 1, '1.00'),
(26, '26 - Drôme', 1, '1.00'),
(27, '27 - Eure', 1, '1.00'),
(28, '28 - Eure-et-Loir', 1, '1.00'),
(29, '29 - Finistère', 1, '1.00'),
(30, '30 - Gard', 1, '1.00'),
(31, '31 - Haute-Garonne', 1, '1.00'),
(32, '32 - Gers', 1, '1.00'),
(33, '33 - Gironde', 1, '1.00'),
(34, '34 - Hérault', 1, '1.00'),
(35, '35 - Ille-et-Vilaine', 1, '1.00'),
(36, '36 - Indre', 1, '1.00'),
(37, '37 - Indre-et-Loire', 1, '1.00'),
(38, '38 - Isère', 1, '1.00'),
(39, '39 - Jura', 1, '1.00'),
(40, '40 - Landes', 1, '1.00'),
(41, '41 - Loir-et-Cher', 1, '1.00'),
(42, '42 - Loire', 1, '1.00'),
(43, '43 - Haute-Loire', 1, '1.00'),
(44, '44 - Loire-Atlantique', 1, '1.00'),
(45, '45 - Loiret', 1, '1.00'),
(46, '46 - Lot', 1, '1.00'),
(47, '47 - Lot-et-Garonne', 1, '1.00'),
(48, '48 - Lozère', 1, '1.00'),
(49, '49 - Maine-et-Loire', 1, '1.00'),
(50, '50 - Manche', 1, '1.00'),
(51, '51 - Marne', 1, '1.00'),
(52, '52 - Haute-Marne', 1, '1.00'),
(53, '53 - Mayenne', 1, '1.00'),
(54, '54 - Meurthe-et-Moselle', 1, '1.00'),
(55, '55 - Meuse', 1, '1.00'),
(56, '56 - Morbihan', 1, '1.00'),
(57, '57 - Moselle', 1, '1.00'),
(58, '58 - Nièvre', 1, '1.00'),
(59, '59 - Nord', 1, '1.00'),
(60, '60 - Oise', 1, '1.00'),
(61, '61 - Orne', 1, '1.00'),
(62, '62 - Pas-de-Calais', 1, '1.00'),
(63, '63 - Puy-de-Dôme', 1, '1.00'),
(64, '64 - Pyrénées-Atlantiques', 1, '1.00'),
(65, '65 - Hautes-Pyrénées', 1, '1.00'),
(66, '66 - Pyrénées-Orientales', 1, '1.00'),
(67, '67 - Bas-Rhin', 1, '1.00'),
(68, '68 - Haut-Rhin', 1, '1.00'),
(69, '69 - Rhône', 1, '1.00'),
(70, '70 - Haute-Saône', 1, '1.00'),
(71, '71 - Saône-et-Loire', 1, '1.00'),
(72, '72 - Sarthe', 1, '1.00'),
(73, '73 - Savoie', 1, '1.00'),
(74, '74 - Haute-Savoie', 1, '1.00'),
(75, '75 - Paris', 1, '1.00'),
(76, '76 - Seine-Maritime', 1, '1.00'),
(77, '77 - Seine-et-Marne', 1, '1.00'),
(78, '78 - Yvelines', 1, '1.00'),
(79, '79 - Deux-Sèvres', 1, '1.00'),
(80, '80 - Somme', 1, '1.00'),
(81, '81 - Tarn', 1, '1.00'),
(82, '82 - Tarn-et-Garonne', 1, '1.00'),
(83, '83 - Var', 1, '1.00'),
(84, '84 - Vaucluse', 1, '1.00'),
(85, '85 - Vendée', 1, '1.00'),
(86, '86 - Vienne', 1, '1.00'),
(87, '87 - Haute-Vienne', 1, '1.00'),
(88, '88 - Vosges', 1, '1.00'),
(89, '89 - Yonne', 1, '1.00'),
(90, '90 - Territoire de Belfort', 1, '1.00'),
(91, '91 - Essonne', 1, '1.00'),
(92, '92 - Hauts-de-Seine', 1, '1.00'),
(93, '93 - Seine-Saint-Denis', 1, '1.00'),
(94, '94 - Val-de-Marne', 1, '1.00'),
(95, '95 - Val-dOise', 1, '1.00');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `candidats`
--
ALTER TABLE `candidats`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `fk_dept2` (`departement_user`);

--
-- Index pour la table `departements`
--
ALTER TABLE `departements`
  ADD PRIMARY KEY (`id_dep`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `candidats`
--
ALTER TABLE `candidats`
  MODIFY `id_user` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `candidats`
--
ALTER TABLE `candidats`
  ADD CONSTRAINT `fk_dept` FOREIGN KEY (`departement_user`) REFERENCES `departements` (`id_dep`),
  ADD CONSTRAINT `fk_dept2` FOREIGN KEY (`departement_user`) REFERENCES `departements` (`id_dep`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
