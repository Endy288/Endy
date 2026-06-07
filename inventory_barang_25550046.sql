-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jun 2026 pada 07.21
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory_barang_25550046`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_id` varchar(11) DEFAULT NULL,
  `nm_kat` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `category_id`, `nm_kat`) VALUES
(1, 'K001', 'elektronik'),
(2, 'K002', 'makanan'),
(3, 'K003', 'minuman'),
(4, 'K004', 'Pertanian'),
(5, 'K005', 'Sparepart');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` varchar(11) DEFAULT NULL,
  `product_Code` varchar(50) DEFAULT NULL,
  `product_name` varchar(150) DEFAULT NULL,
  `stock` int(11) NOT NULL DEFAULT 5,
  `min_stock` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_id` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_Code`, `product_name`, `stock`, `min_stock`, `price`, `gambar`, `created_id`, `update_at`) VALUES
(7, 'K001', 'P001', 'Mesin Cuci', 15, 5, 5000000, '905dff71a2135c5ed5ddb706ea3b6837.jpg', '2026-06-01 10:34:51', NULL),
(8, 'K001', 'P002', 'Kulkas', 15, 5, 6000000, 'fdcdc76d6d78bb71d11c9d66654d9031.jpg', '2026-06-01 10:35:35', NULL),
(9, 'K001', 'P003', 'Televisi', 10, 5, 4500000, '90ee213b89fa5f5eb8df37c0fe469699.jpg', '2026-06-01 10:36:09', NULL),
(10, 'K001', 'P004', 'Radio', 10, 5, 2500000, '1ee80a8b492d6d119bb8430f879c2192.jpg', '2026-06-01 10:38:03', NULL),
(11, 'K002', 'P005', 'Bakso', 50, 50, 16000, 'ba48ff5603bbd47d595bac98e4759e17.jpg', '2026-06-01 10:39:36', NULL),
(12, 'K002', 'P006', 'Rawon', 50, 50, 20000, 'f8d09076f9909c71d22c5436cf35cafc.jpg', '2026-06-01 10:40:19', NULL),
(13, 'K002', 'P007', 'Sate', 100, 100, 24000, 'c34415aec2bf998eb64f58a9220435ab.jpg', '2026-06-01 10:41:10', NULL),
(14, 'K002', 'P008', 'Gudeg', 50, 50, 18000, 'e6a66170676cbb23735eac15609d5f46.jpg', '2026-06-01 10:41:47', NULL),
(15, 'K003', 'P009', 'Es Campur', 20, 20, 8000, 'a07bcaf7daca5b48afd7b8c843b4b6cf.jpg', '2026-06-01 10:42:51', NULL),
(16, 'K003', 'P010', 'Es Teler', 20, 20, 6000, '1f2e80311b096002272877dff6c6cd95.jpg', '2026-06-01 10:43:23', NULL),
(17, 'K003', 'P011', 'Es Doger', 20, 20, 6000, 'd9b2dac9a6578e41b3c50ad13895de33.jpg', '2026-06-01 10:43:50', NULL),
(18, 'K003', 'P012', 'Wedang Ronde', 20, 20, 5000, '4caecbdcf7cb8d454d4f69a9273915f0.jpg', '2026-06-01 10:44:31', NULL),
(19, 'K004', 'P013', 'Sprayer', 50, 50, 100000, '7af97960a51591e513a3f00516ee5672.jpg', '2026-06-01 10:45:07', NULL),
(20, 'K004', 'P014', 'Mesin Menanam Padi', 5, 5, 2000000, '5527ca43995cd2a015b608bf48566cc8.jpg', '2026-06-01 10:46:10', NULL),
(21, 'K004', 'P015', 'Traktor', 10, 5, 4000000, '650bcdff54c964865c0777daf472f78e.jpg', '2026-06-01 10:46:35', NULL),
(22, 'K004', 'P016', 'Alat Bajak', 5, 5, 1500000, 'e215618fdd3bbc319491b550d6633542.jpg', '2026-06-01 10:47:04', NULL),
(23, 'K005', 'P017', 'Oli', 20, 20, 67000, '13f5efc26c213ab994c5320aa84ecd88.jpg', '2026-06-01 10:47:58', NULL),
(24, 'K005', 'P018', 'Kampas Rem', 20, 20, 100000, 'adcb7d81364b3d1b12e5428b74840570.jpg', '2026-06-01 10:48:37', NULL),
(25, 'K005', 'P019', 'Busi', 20, 20, 20000, '8d558d1c7c8041f5822c9d196679f9ee.jpg', '2026-06-01 10:49:10', NULL),
(26, 'K005', 'P020', 'filter Udara', 20, 20, 65000, '5565316fbba32bc31a4134489a417571.jpg', '2026-06-01 10:50:05', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock_history`
--

CREATE TABLE `stock_history` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `change_type` enum('IN','OUT') NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock_logs`
--

CREATE TABLE `stock_logs` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `change_type` varchar(20) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `stock_before` int(11) DEFAULT NULL,
  `stock_after` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `stock_logs`
--

INSERT INTO `stock_logs` (`id`, `product_id`, `change_type`, `qty`, `created_at`, `stock_before`, `stock_after`, `note`, `created_by`) VALUES
(167, 21, 'REDUCE', 3, '2026-06-01 10:50:48', NULL, NULL, NULL, NULL),
(168, 21, 'REDUCE', 3, '2026-06-01 10:50:48', NULL, NULL, NULL, NULL),
(169, 21, 'ADD', 8, '2026-06-01 11:15:41', NULL, NULL, NULL, NULL),
(170, 21, 'ADD', 8, '2026-06-01 11:15:41', NULL, NULL, NULL, NULL),
(171, 8, 'ADD', 5, '2026-06-03 05:41:43', NULL, NULL, NULL, NULL),
(172, 7, 'ADD', 5, '2026-06-06 08:59:27', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','staff') NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `is_active`, `created_at`) VALUES
(5, 'Endy Yobeli H.S', 'endyyobelihs@gmail.com', '$2y$10$Tnr02zbW6W1H95tV50cseebYekF7s8sOgrVaW1UvXcsST7Ks9egMC', 'admin', 1, '2026-05-13 07:09:56');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `stock_history`
--
ALTER TABLE `stock_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `stock_logs`
--
ALTER TABLE `stock_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `stock_history`
--
ALTER TABLE `stock_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `stock_logs`
--
ALTER TABLE `stock_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `stock_history`
--
ALTER TABLE `stock_history`
  ADD CONSTRAINT `stock_history_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
