-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2024 at 03:28 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_practice`
--
CREATE DATABASE IF NOT EXISTS `db_practice` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_practice`;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `country` varchar(20) NOT NULL,
  `created` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Active | 0=Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `first_name`, `last_name`, `email`, `gender`, `country`, `created`, `status`) VALUES
(1, '[value-2]', '[value-3]', '[value-4]', '', '[value-6]', '0000-00-00 00:00:00', 0),
(2, '[value-2]', '[value-3]', '[value-4]', '', '[value-6]', '0000-00-00 00:00:00', 0),
(3, '[value-2]', '[value-3]', '[value-4]', '', '[value-6]', '0000-00-00 00:00:00', 0),
(4, '[value-2]', '[value-3]', '[value-4]', '', '[value-6]', '0000-00-00 00:00:00', 0),
(5, '[value-2]', '[value-3]', '[value-4]', '', '[value-6]', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'client',
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `birthdate` date NOT NULL,
  `age` varchar(5) NOT NULL,
  `birthplace` varchar(50) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'unlock',
  `lastlogin` datetime DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `creationdate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `type`, `username`, `password`, `firstname`, `middlename`, `lastname`, `birthdate`, `age`, `birthplace`, `gender`, `address`, `email`, `mobile`, `status`, `lastlogin`, `rank`, `creationdate`) VALUES
(1, 'admin', 'admin', 'admin', 'Daren', 'Fajutrao', 'Berido', '2002-06-27', '21', 'Langiden, Abra', 'Male', 'Balagtas, Bulacan', 'darenberido@gmail.com', '09365528628', 'unlock', NULL, 1, '2024-05-21 13:23:08'),
(2, 'client', 'drennnnn', '12345678', 'Daren', 'Fajutrao', 'Berido', '2002-07-27', '21', 'abra', 'Male', 'balagtas, bulacan', 'darenfajutrao@gmail.com', '09066652884', 'unlock', '2024-05-27 16:00:42', NULL, '2024-05-21 15:21:48'),
(3, 'client', 'franco', 'cracken1', 'franco', 'galvez', 'eleazar', '2000-06-06', '23', 'caloocan', 'Male', 'caloocan, city', 'franco@gmail.com', '09123456789', 'unlock', '2024-05-25 16:39:40', NULL, '2024-05-21 15:36:40'),
(4, 'client', 'admins', '123!@#asdASD', 'admin', 'admin', 'admin', '1997-06-10', '26', 'admin', 'Male', 'asd', 'asd@@@.asd', '09111111111', 'lock', '2024-05-27 09:09:44', NULL, '2024-05-27 09:09:16'),
(5, 'client', 'adminss', 'LAST', 'name', 'middle', 'last', '2024-05-03', '0', 'abra', 'Male', 'a', 'a@.com', '09111111112', 'lock', NULL, NULL, '2024-05-27 09:52:01'),
(6, 'admin', 'fdlskhfio', 'aaaaaaaa', 's', 's', 's', '2024-05-08', '0', 's', 'Male', 'a', 'ds@.com', '09111111114', 'unlock', NULL, 2, '2024-05-27 17:39:20'),
(7, 'admin', 's', 'aaaaaaaa', 's', 's', 's', '2024-05-01', '0', 'd', 'Male', 'd', 'd@.com', '09888888888', 'unlock', NULL, 2, '2024-05-27 17:41:24'),
(8, 'admin', 'a', 'aaaaaaaa', 's', 's', 's', '2024-05-01', '0', 'd', 'Male', 'd', 'ad@.com', '09888888900', 'unlock', NULL, 2, '2024-05-27 17:42:29'),
(9, 'admin', '@sd', 'fdsfsdfsdfs', 'dfsdf', 'sdfds', 'fsdfsd', '2024-05-01', '0', 'sdfsdf', 'Male', 'sdfs', 'safsd@.com', '09773846583', 'unlock', NULL, 2, '2024-05-27 17:50:21'),
(10, 'admin', 'asadfas', 'fdsfsdfsdfs', 'dfsdf', 'sdfds', 'fsdfsd', '2024-05-01', '0', 'sdfsdf', 'Male', 'sdfs', 'safd@.com', '09773846580', 'unlock', NULL, 2, '2024-05-27 17:50:54'),
(11, 'admin', '2', '11111111', 'sdfdsf', 'sdfsdf', 'dsafsdaf', '2024-05-02', '0', 'sdfsdf', 'Male', 'sdfsd', '23@.com', '09987656354', 'unlock', NULL, 2, '2024-05-27 17:52:07'),
(12, 'admin', '3', '11111111', 'sfsd', 'fddfkj', 'dfs', '2024-05-02', '0', 'df', 'Male', 'dfjh', 'jasdlfhi@.com', '09987657685', 'unlock', NULL, 3, '2024-05-27 17:54:28'),
(13, 'admin', '4', '11111111', 'admin', 'admin', 'admin', '2000-09-09', '23', 'admin', 'Male', 'admin', 'admin@gmail.com', '09123456781', 'lock', NULL, 4, '2024-05-28 11:31:02'),
(14, 'client', 'pyvel', '123!@#asdASD', 'pyvel', 'pyvel', 'pyvel', '2024-01-06', '0', 'pyvel', 'Male', 'balagtas, bulacan', '@asd.com', '09123456782', 'unlock', '2024-05-28 11:43:55', NULL, '2024-05-28 11:42:59'),
(15, 'admin', 'pyvels', '123!@#asdASD', 'pyvels', 'pyvels', 'pyvels', '2024-05-02', '0', 'pyvels', 'Male', 'asd', '@asd.coms', '09123741852', 'unlock', NULL, 2, '2024-05-28 11:45:14'),
(16, 'client', 'aa', 'A', 'a', 'a', 'a', '2024-05-04', '0', 'a', 'Male', 'a', 'a@a.com', '09987654321', 'unlock', NULL, NULL, '2024-05-28 13:34:15'),
(17, 'client', 'sfds', 'FSDFSD', 'ddsdf', 'sdfsd', 'fsdfsd', '2024-05-09', '0', 'sdf', 'Male', 'a', 'a@a.com.', '09897654321', 'unlock', NULL, NULL, '2024-05-28 13:39:10'),
(18, 'client', 'sfdsa', 'FSDFSD', 'ddsdf', 'sdfsd', 'fsdfsd', '2024-05-09', '0', 'sdf', 'Male', 'a', '.a@a.com.', '09897654328', 'unlock', NULL, NULL, '2024-05-28 13:50:21'),
(19, 'client', 'sfdsaq', 'FSDFSD', 'ddsdf', 'sdfsd', 'fsdfsd', '2024-05-09', '0', 'sdf', 'Male', 'a', '.a@a.com.', '09897654329', 'unlock', NULL, NULL, '2024-05-28 13:50:38'),
(20, 'client', 'sfdsaqa', 'FSDFSD', 'ddsdf', 'sdfsd', 'fsdfsd', '2024-05-09', '0', 'sdf', 'Male', 'a', 'aa@s.com', '09897654320', 'unlock', NULL, NULL, '2024-05-28 13:56:32'),
(21, 'admin', 'admina', 'admin123', 'admin', 'admin', 'admin', '2000-09-09', '23', 'admin', 'Male', 'admin', 'a@aa.com', '09008976654', 'unlock', NULL, 2, '2024-05-28 14:01:55'),
(22, 'admin', 'asdf', 'asfdsafsdf', 'sdafs', 'dfsdaf', 'asdfsadf', '2024-05-08', '0', 'sdfsdf', 'Male', 'd', 'as@a.com', '09745478576', 'unlock', NULL, 1, '2024-05-28 16:58:14');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_task2`
--

CREATE TABLE `tbl_task2` (
  `id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `middlename` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `birthdate` date NOT NULL,
  `age` int(5) NOT NULL,
  `gender` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_task2`
--

INSERT INTO `tbl_task2` (`id`, `firstname`, `middlename`, `lastname`, `birthdate`, `age`, `gender`) VALUES
(16, 'sd', 'df', 'dfd', '2024-04-30', 0, 'Male'),
(17, 'sdfd', 'sdfs', 'sdfsdf', '2024-04-29', 0, 'Female'),
(19, 'dsf', 'dsf', 'sdf', '0000-00-00', 0, 'Male'),
(20, 'dsf', 'dsf3333', 'sdf', '0000-00-00', 0, 'Male'),
(23, 'daren', 'fajutrao', 'berido', '2002-06-27', 21, 'Male'),
(24, 'first', 'middle', 'last', '2011-02-16', 13, ''),
(25, 'daren', 'fajutrao', 'berido', '2002-02-27', 22, 'Female'),
(26, 'Jeny Rose', 'Barroga', 'Nelmida', '2001-08-13', 22, 'Female'),
(27, 'name', 'middle', 'last', '2000-08-20', 23, 'Male'),
(28, 'somename', 'somemiddle', 'somelast', '1995-06-27', 28, 'Male'),
(29, 'daren', 'fajutrao', 'berido', '2002-06-27', 21, 'Male'),
(30, 'othername', 'othermiddle', 'otherlast', '2002-04-13', 22, 'Male'),
(31, 'reynalyn', 'galvez', 'singzon', '1999-07-22', 24, 'Female');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_task2`
--
ALTER TABLE `tbl_task2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_task2`
--
ALTER TABLE `tbl_task2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"db_practice\",\"table\":\"tbl_login\"},{\"db\":\"db_practice\",\"table\":\"tbl_task2\"},{\"db\":\"db_practice\",\"table\":\"members\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-05-30 01:28:16', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
