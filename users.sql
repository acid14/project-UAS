-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Jun 2025 pada 17.23
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'j', '$2y$10$UPGOWHxBFcdshSyJbi/tLeA18I4nNHtRzc.umVfeTL1EKATZOct3K', '2025-06-16 17:21:04'),
(2, '1', '$2y$10$Qd8MsJUaTmQpxrErEFOzve3bGhOuM.eHLfWeDUw3ACkfVcydvVSui', '2025-06-16 17:37:10'),
(3, 'faqih', '$2y$10$NkTerWP40L0CrYlUUf5/Ue6TfIfILLAEJqJefhAs6feQUdZNFb.n.', '2025-06-16 17:39:01'),
(4, 'helmi', '$2y$10$peWpYK75mXf/WcQVgUutd.Qt7l6m1KbhfD6Tx32nVozyDFW5INcl2', '2025-06-16 17:51:37'),
(5, 'jevon', '$2y$10$DM00suFHDNI/9sVf./K.AeQVfN5cmKWWS0Ww45aYPKxK8HXz4byTS', '2025-06-19 15:38:56'),
(6, 'ma', '$2y$10$MepI8nXUel3crACb0zVq6.2MPKOxmpPe2G/FAITZ8TKMipWTPsga6', '2025-06-20 04:34:25'),
(7, 'acid', '$2y$10$O1uWwXCfHuk/kFQr49IPgO5bEmvmXH8r6NrXjUkkXEnuBVSw9hdTK', '2025-06-20 05:43:28'),
(8, 'erwin', '$2y$10$3sjso1wVO2x1lPDisQggVurMsvCRJ0O8O0IzAUV1vstv5bK5iJzBK', '2025-06-20 06:35:13'),
(9, '2', '$2y$10$.dvgZb4Kx.PmPLycHZgKSegLMkK1jBrkMErbYSXNSzJTouA5SR2Dq', '2025-06-20 06:48:52'),
(10, '123', '$2y$10$DH3rQh2RFZ6tVEVSDAaz/.spoCJTHty8BMLsjt9kaZ9xeRNDueNz2', '2025-06-20 07:42:38');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
