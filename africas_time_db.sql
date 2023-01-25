-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2023 at 04:47 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `africas_time_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `session_levels`
--

CREATE TABLE `session_levels` (
  `session_id` varchar(50) DEFAULT NULL,
  `phonenumber` varchar(25) DEFAULT NULL,
  `level` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `session_levels`
--

INSERT INTO `session_levels` (`session_id`, `phonenumber`, `level`) VALUES
('ATUid_393516ce5334b9ee172ad4ad4613a2cc', '+254797292290', 1),
('ATUid_4e7adf5d55387e88e6570d9b327ebeda', '+254797292290', 1),
('ATUid_a5f005101e5d6bfeb701055fcc33d99e', '+254797292290', 1),
('ATUid_eac7573b60cdec9f6add9db75cd7c4c5', '+254797292290', 2),
('ATUid_eac7573b60cdec9f6add9db75cd7c4c5', '+254797292290', 1),
('ATUid_47b8f77f80f754d3aab59830e5b65177', '+254797292290', 2),
('ATUid_ccbca532760b1648d89dfa1c8961905d', '+254797292290', 2),
('ATUid_ccbca532760b1648d89dfa1c8961905d', '+254797292290', 1),
('ATUid_a105d9b643cee3841ce01bb14e9f1fb1', '+254797292290', 2),
('ATUid_a105d9b643cee3841ce01bb14e9f1fb1', '+254797292290', 1),
('ATUid_cb73cc077f88a1760fec81681394f78f', '+254797292290', 2),
('ATUid_3657d4345fcee10c9598824ef187cc1f', '+254797292290', 2),
('ATUid_3657d4345fcee10c9598824ef187cc1f', '+254797292290', 1),
('ATUid_950457f9cb3b630dad8067039d7fcccf', '+254797292290', 1),
('ATUid_1d911530d628e8318fd241a4e7797325', '+254797292290', 2),
('ATUid_1d911530d628e8318fd241a4e7797325', '+254797292290', 1),
('ATUid_a32424f5c1aad2cdff7d5d126be33d4a', '+254797292290', 1),
('ATUid_02500253ecc0b0cec3fcbc7b47056a5e', '+254797292290', 1),
('ATUid_c2f33cd233a542eee3dd521179c4ce43', '+254797292290', 1),
('ATUid_6d3e885ba1f9b40542b34b1f7fa7e2cb', '+254797292290', 1),
('ATUid_292beaf6cf57e1e0fc1e425df98ba56c', '+254797292290', 1),
('ATUid_292beaf6cf57e1e0fc1e425df98ba56c', '+254797292290', 2),
('ATUid_64d440c62664d6b32295e60f88fa7c70', '+254797292290', 1),
('ATUid_64d440c62664d6b32295e60f88fa7c70', '+254797292290', 2),
('ATUid_cff63fb6e05c7bd7ad6ad6dda69d4cf9', '+254797292290', 1),
('ATUid_cff63fb6e05c7bd7ad6ad6dda69d4cf9', '+254797292290', 2),
('ATUid_a93d04b0f090e30ba39413603c0a54b3', '+254797292290', 1),
('ATUid_a93d04b0f090e30ba39413603c0a54b3', '+254797292290', 2),
('ATUid_8dd91f4f2d26769ac00bdbe28247e85e', '+254797292290', 1),
('ATUid_8dd91f4f2d26769ac00bdbe28247e85e', '+254797292290', 2),
('ATUid_89ba1508fda683321dbebe90d7df74c6', '+254797292290', 1),
('ATUid_89ba1508fda683321dbebe90d7df74c6', '+254797292290', 2),
('ATUid_08b7527943d46df2b00e061dc1cc1d78', '+254797292290', 1),
('ATUid_08b7527943d46df2b00e061dc1cc1d78', '+254797292290', 2),
('ATUid_201024602fe5bd29f72ba0681696f1f2', '+254797292290', 1),
('ATUid_201024602fe5bd29f72ba0681696f1f2', '+254797292290', 2),
('ATUid_6be434a1e1547cf6097edc3551c7a486', '+254797292290', 0),
('ATUid_6be434a1e1547cf6097edc3551c7a486', '+254797292290', 0),
('ATUid_956a787c9664d78987f1dfde20ae53fa', '+254797292290', 0),
('ATUid_956a787c9664d78987f1dfde20ae53fa', '+254797292290', 0),
('ATUid_956a787c9664d78987f1dfde20ae53fa', '+254797292290', 0),
('ATUid_98aaa6089b790c4b0b418afcc0ef8e9e', '+254797292290', 1),
('ATUid_98aaa6089b790c4b0b418afcc0ef8e9e', '+254797292290', 2),
('ATUid_98aaa6089b790c4b0b418afcc0ef8e9e', '+254797292290', 3),
('ATUid_429491dd4dfcc471aa9a94229f07716c', '+254797292290', 1),
('ATUid_6970617dbb83e83b260f724447ea608e', '+254797292290', 1),
('ATUid_6970617dbb83e83b260f724447ea608e', '+254797292290', 2),
('ATUid_89aaef034257dd935bfa8793c6e443f7', '+254797292290', 1),
('ATUid_26f5a788349e83156e9e1b8214eaaeaf', '+254797292290', 1),
('ATUid_26f5a788349e83156e9e1b8214eaaeaf', '+254797292290', 2),
('ATUid_62914b83b60a2535d1b89613c5363361', '+254797292290', 1),
('ATUid_62914b83b60a2535d1b89613c5363361', '+254797292290', 2),
('ATUid_e4fe7b3c739fc1dfde05c6e5f9c55998', '+254797292290', 1),
('ATUid_e4fe7b3c739fc1dfde05c6e5f9c55998', '+254797292290', 2),
('ATUid_e4fe7b3c739fc1dfde05c6e5f9c55998', '+254797292290', 3),
('ATUid_edf1ca9411a47f159d204a9f111b24d9', '+254797292290', 1),
('ATUid_edf1ca9411a47f159d204a9f111b24d9', '+254797292290', 2),
('ATUid_3d8bbe83f5371e45c27c071a979193c3', '+254797292290', 0),
('ATUid_7c028b0b2464f361d137e1f30e41eb7e', '+254797292290', 1),
('ATUid_7c028b0b2464f361d137e1f30e41eb7e', '+254797292290', 2),
('ATUid_7062b8f74dd2f27e23753681cfb42993', '+254797292290', 0),
('ATUid_7062b8f74dd2f27e23753681cfb42993', '+254797292290', 0),
('ATUid_4a9457d5ed6bdee56d7e896820d77751', '+254797292290', 1),
('ATUid_4a9457d5ed6bdee56d7e896820d77751', '+254797292290', 2),
('ATUid_a1d457702d6e49f05179aedab95e6418', '+254797292290', 1),
('ATUid_9f0a5175f54d1ecd87edab72f302c517', '+254797292290', 1),
('ATUid_79b25dded86fea6471ff53a6f15a6c1d', '+254797292290', 1),
('ATUid_345386ed3b98b8be9c51d82a6e0eed05', '+254797292290', 1),
('ATUid_345386ed3b98b8be9c51d82a6e0eed05', '+254797292290', 2),
('ATUid_70b0911b960ce0b67cfc40c13a8e3858', '+254797292290', 1),
('ATUid_9613cae25afd6b1413b1ac47abbb9571', '+254797292290', 1),
('ATUid_9613cae25afd6b1413b1ac47abbb9571', '+254797292290', 2),
('ATUid_8e45305c650f1d308998c37fbe61ed06', '+254797292290', 1),
('ATUid_56a45a8f03ab9120a9a679b6f0e6db4e', '+254797292290', 1),
('ATUid_56a45a8f03ab9120a9a679b6f0e6db4e', '+254797292290', 2),
('ATUid_9d05411908f724855c3881c8da0b636e', '+254797292290', 1),
('ATUid_9d05411908f724855c3881c8da0b636e', '+254797292290', 2),
('ATUid_6b1e3c70e8a582ab487ad36df72d6a30', '+254797292290', 1),
('ATUid_6b1e3c70e8a582ab487ad36df72d6a30', '+254797292290', 2),
('ATUid_41c1942df64c735f029c18d132a229c0', '+254797292290', 1),
('ATUid_41c1942df64c735f029c18d132a229c0', '+254797292290', 2),
('ATUid_1a3fefb30ac4bc2c7f2b0a31ecfeab54', '+254797292290', 1),
('ATUid_1a3fefb30ac4bc2c7f2b0a31ecfeab54', '+254797292290', 2),
('ATUid_801ad22ed695875a3f8fae71dde61f2a', '+254797292290', 1),
('ATUid_801ad22ed695875a3f8fae71dde61f2a', '+254797292290', 2),
('ATUid_8077192a33cfd2057bb8c65167dfba67', '+254797292290', 1),
('ATUid_8077192a33cfd2057bb8c65167dfba67', '+254797292290', 2),
('ATUid_237d348db6f2182d49ff926260c53210', '+254797292290', 1),
('ATUid_237d348db6f2182d49ff926260c53210', '+254797292290', 2),
('ATUid_237d348db6f2182d49ff926260c53210', '+254797292290', 3),
('ATUid_ebec633aedc286cf259a453f8a57282f', '+254797292290', 1),
('ATUid_28ad8d970ae8beebd15fdc45df32d610', '+254797292290', 1),
('ATUid_28ad8d970ae8beebd15fdc45df32d610', '+254797292290', 2),
('ATUid_8fe3b6852eeff1cc16a4617d6cacd91a', '+254797292290', 1),
('ATUid_8fe3b6852eeff1cc16a4617d6cacd91a', '+254797292290', 2),
('ATUid_8fe3b6852eeff1cc16a4617d6cacd91a', '+254797292290', 3),
('ATUid_a93915a884837057841b80647dabe7b6', '+254797292290', 0),
('ATUid_a93915a884837057841b80647dabe7b6', '+254797292290', 0),
('ATUid_1587e85ce4709fb95c5f995c21f53aa4', '+254797292290', 0),
('ATUid_1587e85ce4709fb95c5f995c21f53aa4', '+254797292290', 0),
('ATUid_d11c2f303eb589dcaabbf1be3688809d', '+254797292290', 0),
('ATUid_d11c2f303eb589dcaabbf1be3688809d', '+254797292290', 0),
('ATUid_87c5c87fb53d40d0e70c44aa0d21eebb', '+254797292290', 1),
('ATUid_341da0a0956b47ba55a48a1dcc276b52', '+254797292290', 1),
('ATUid_341da0a0956b47ba55a48a1dcc276b52', '+254797292290', 2),
('ATUid_341da0a0956b47ba55a48a1dcc276b52', '+254797292290', 3),
('ATUid_f8f42d513fab097fc8dff069ed8d1355', '+254797292290', 0),
('ATUid_f8f42d513fab097fc8dff069ed8d1355', '+254797292290', 0),
('ATUid_77ba5e98a057a3212f83ae27588637e0', '+254797292290', 1),
('ATUid_77ba5e98a057a3212f83ae27588637e0', '+254797292290', 2),
('ATUid_77ba5e98a057a3212f83ae27588637e0', '+254797292290', 3),
('ATUid_475e703bb5b56606a115df64afa78c31', '+254797292290', 1),
('ATUid_475e703bb5b56606a115df64afa78c31', '+254797292290', 2),
('ATUid_c3764896426450eaae1c1b9e52f4f6f1', '+254797292290', 1),
('ATUid_c3764896426450eaae1c1b9e52f4f6f1', '+254797292290', 2),
('ATUid_c3764896426450eaae1c1b9e52f4f6f1', '+254797292290', 3),
('ATUid_a7265d23311661505d1aec55ca0e1f20', '+254797292290', 1),
('ATUid_a7265d23311661505d1aec55ca0e1f20', '+254797292290', 2),
('ATUid_1c72575c5ca30f8922051bedf777a31d', '+254797292290', 1),
('ATUid_1c72575c5ca30f8922051bedf777a31d', '+254797292290', 2),
('ATUid_1c72575c5ca30f8922051bedf777a31d', '+254797292290', 3),
('ATUid_a4379ec9d4f905b675d46d671a36d2a7', '+254797292290', 1),
('ATUid_a4379ec9d4f905b675d46d671a36d2a7', '+254797292290', 2),
('ATUid_a4379ec9d4f905b675d46d671a36d2a7', '+254797292290', 3),
('ATUid_27ccd9bd34ff1c43b6e5307a34f64f40', '+254797292290', 1),
('ATUid_27ccd9bd34ff1c43b6e5307a34f64f40', '+254797292290', 2),
('ATUid_41997b12f83e878cc787d1809baea0d9', '+254797292290', 1),
('ATUid_41997b12f83e878cc787d1809baea0d9', '+254797292290', 2),
('ATUid_41997b12f83e878cc787d1809baea0d9', '+254797292290', 3),
('ATUid_42d8ff5f53f5782cbbe0b925a0c27c37', '+254797292290', 1),
('ATUid_42d8ff5f53f5782cbbe0b925a0c27c37', '+254797292290', 2),
('ATUid_fdfd58240f3e01f5ddd316ad55db918e', '+254797292290', 1),
('ATUid_fdfd58240f3e01f5ddd316ad55db918e', '+254797292290', 2),
('ATUid_fdfd58240f3e01f5ddd316ad55db918e', '+254797292290', 3),
('ATUid_f4363920b0ce2af3d8c8dbaf24dcccdc', '+254797292290', 2),
('ATUid_f4363920b0ce2af3d8c8dbaf24dcccdc', '+254797292290', 1),
('ATUid_e9ee51acf4f5fceb629627efed88975d', '+254797292290', 2),
('ATUid_9383498a74792611beff358ea38a6182', '+254797292290', 1),
('ATUid_0428ed8f47e3572dc801e67c350f729f', '+254797292290', 1),
('ATUid_9bba886c2d39f5069c8e14fd8a81219c', '+254797292290', 2),
('ATUid_9bba886c2d39f5069c8e14fd8a81219c', '+254797292290', 1),
('ATUid_b48ed3ae7d041f924360f2f46f08def5', '+254797292290', 1),
('ATUid_b48ed3ae7d041f924360f2f46f08def5', '+254797292290', 2),
('ATUid_b554c86031c44cd567e70863a0a6bdb2', '+254797292290', 1),
('ATUid_c97767652496bafdc39292d815dd10d2', '+254797292290', 1),
('ATUid_b554c86031c44cd567e70863a0a6bdb2', '+254797292290', 2),
('ATUid_6608da9bbcee384d48cf714eaf1cfebc', '+254797292290', 1),
('ATUid_e460d50d9978ee8e8e50d27e873d33f5', '+254797292290', 1),
('ATUid_6608da9bbcee384d48cf714eaf1cfebc', '+254797292290', 2),
('ATUid_6608da9bbcee384d48cf714eaf1cfebc', '+254797292290', 3),
('ATUid_37ba190b761c03f3a7fa2df10a7141d1', '+254797292290', 1),
('ATUid_37ba190b761c03f3a7fa2df10a7141d1', '+254797292290', 2),
('ATUid_62116328772908c6bd61bcef8c9e352f', '+254797292290', 1),
('ATUid_62116328772908c6bd61bcef8c9e352f', '+254797292290', 2),
('ATUid_2521ac2b3d63e13b2c0bd3bc8a8203e2', '+254797292290', 1),
('ATUid_c7afe1e844b949041faf2809c37bf720', '+254797292290', 1),
('ATUid_c7afe1e844b949041faf2809c37bf720', '+254797292290', 2),
('ATUid_c7afe1e844b949041faf2809c37bf720', '+254797292290', 2),
('ATUid_f4b3f9e45ad460915dc7c443afc53eba', '+254797292290', 1),
('ATUid_f4b3f9e45ad460915dc7c443afc53eba', '+254797292290', 2),
('ATUid_f4b3f9e45ad460915dc7c443afc53eba', '+254797292290', 2),
('ATUid_f4b3f9e45ad460915dc7c443afc53eba', '+254797292290', 2),
('ATUid_1f40cb4f1c65dc2d0cbd8ee6deb654fe', '+254797292290', 1),
('ATUid_0dbdce7b252ef242e141befce0b04118', '+254797292290', 1),
('ATUid_0dbdce7b252ef242e141befce0b04118', '+254797292290', 2),
('ATUid_0dbdce7b252ef242e141befce0b04118', '+254797292290', 2),
('ATUid_40c37e5332863427f43e2801c5df000b', '+254797292290', 1),
('ATUid_40c37e5332863427f43e2801c5df000b', '+254797292290', 2),
('ATUid_40c37e5332863427f43e2801c5df000b', '+254797292290', 2),
('ATUid_40c37e5332863427f43e2801c5df000b', '+254797292290', 2),
('ATUid_40c37e5332863427f43e2801c5df000b', '+254797292290', 2),
('ATUid_40c37e5332863427f43e2801c5df000b', '+254797292290', 3),
('ATUid_633db4627bce0ffa6347cfe2274054de', '+254797292290', 1),
('ATUid_633db4627bce0ffa6347cfe2274054de', '+254797292290', 2),
('ATUid_633db4627bce0ffa6347cfe2274054de', '+254797292290', 2),
('ATUid_6fab1858799cc75978954a1f54f86fa3', '+254797292290', 1),
('ATUid_6fab1858799cc75978954a1f54f86fa3', '+254797292290', 2),
('ATUid_6fab1858799cc75978954a1f54f86fa3', '+254797292290', 2),
('ATUid_6fab1858799cc75978954a1f54f86fa3', '+254797292290', 2),
('ATUid_b1e250bacc19d1caea10e8f992e21c8c', '+254797292290', 3),
('ATUid_e0cb5a176c11341ccffdb1e2be86dfab', '+254797292290', 3),
('ATUid_05c1dccc2bcafb478a60d349753a8143', '+254797292290', 1),
('ATUid_05c1dccc2bcafb478a60d349753a8143', '+254797292290', 2),
('ATUid_e569a1d5f82029a8850eff8bc11bdb94', '+254797292290', 3),
('ATUid_d21bdc5c8ebd8eb96aef68c0b3477f12', '+254797292290', 3),
('ATUid_df860939fab410297ababc97dd5f1063', '+254797292290', 2),
('ATUid_c8f2706e22a45f4416e8ba224a677d2d', '+254797292290', 2),
('ATUid_59b6754dbef3380e44675fd595cc1672', '+254797292290', 3),
('ATUid_dd5475263c04c6126004694e247bb3f6', '+254797292290', 2),
('ATUid_28fe486914e10419e02b05c465728a9e', '+254797292290', 3),
('ATUid_e979fd4ee05429f5604dd3a07797a34f', '+254797292290', 3),
('ATUid_1d16e2d951542f784f5d570e3670b467', '+254797292290', 1),
('ATUid_851292f44c2fca9b81abd3d299dadc68', '+254797292290', 2),
('ATUid_851292f44c2fca9b81abd3d299dadc68', '+254797292290', 1),
('ATUid_eae40b1256a08539732a0ef1b799e3ac', '+254797292290', 1),
('ATUid_eae40b1256a08539732a0ef1b799e3ac', '+254797292290', 2),
('ATUid_eae40b1256a08539732a0ef1b799e3ac', '+254797292290', 3),
('ATUid_92736e9b694a57d6e286c4994ecef4ce', '+254797292290', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(30) DEFAULT NULL,
  `phonenumber` varchar(20) DEFAULT NULL,
  `stack` varchar(30) DEFAULT NULL,
  `status` enum('ACTIVE','SUSPENDED') DEFAULT NULL,
  `other_phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `phonenumber`, `stack`, `status`, `other_phone`) VALUES
('Martin', '+254797292290', 'Android dev', NULL, NULL),
('Martin', '+254797292290', 'Android dev', NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
