-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Agu 2020 pada 09.13
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`id`, `nama`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Berita Dalam Negeri', 'berita-dalam-negeri', NULL, '2020-07-29 00:27:03'),
(2, 'Artikel Ilmiah', 'artikel-ilmiah', NULL, '2020-06-29 01:52:09'),
(9, 'Berita Luar Negeri', 'berita-luar-negeri', '2020-07-03 01:50:13', '2020-07-03 01:50:13'),
(10, 'Berita Bola', 'berita-bola', '2020-07-03 01:54:00', '2020-07-03 01:54:00'),
(11, 'Berita Kesehatan', 'berita-kesehatan', '2020-07-29 00:27:33', '2020-07-29 00:27:33'),
(12, 'Berita Teknologi', 'berita-teknologi', '2020-07-29 00:27:57', '2020-07-29 00:27:57'),
(13, 'Berita Edukasi', 'berita-edukasi', '2020-07-29 00:28:24', '2020-07-29 00:28:24'),
(14, 'Berita Kuliner', 'berita-kuliner', '2020-07-29 00:28:53', '2020-07-29 00:28:53'),
(15, 'Music', 'music', '2020-07-29 01:38:23', '2020-07-29 01:38:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_06_26_055538_create_category_table', 1),
(4, '2020_06_30_021208_create_tags_table', 2),
(5, '2020_06_30_034800_create_posts_table', 3),
(6, '2020_06_30_073004_add_new_slug_post_table', 4),
(7, '2020_07_01_062253_create_posts_tags_table', 5),
(8, '2020_07_03_034741_tambah_softdelete_ke_post', 6),
(9, '2020_07_08_034835_tamba_field_user_post', 7),
(10, '2020_07_09_034037_add_tipe_user', 8),
(11, '2020_07_09_034924_add_tipe_user', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `judul`, `category_id`, `content`, `gambar`, `created_at`, `updated_at`, `slug`, `deleted_at`, `users_id`) VALUES
(5, 'Covid 19', 1, 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'publicu/uploads/posts/1593766133covid.jpg', '2020-07-03 01:48:53', '2020-07-14 00:34:36', 'covid-19', NULL, 2),
(6, 'Flu babi', 9, 'Flu babi yang baru muncul di china berpotensi pendemi', 'publicu/uploads/posts/1593766347babi.jpg', '2020-07-03 01:52:27', '2020-07-12 23:26:42', 'flu-babi', '2020-07-12 23:26:42', 2),
(7, 'Messi kesal dengan manajamen barca', 10, 'Where can I get some?\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'publicu/uploads/posts/1593766526messi.jpg', '2020-07-03 01:55:26', '2020-07-14 00:33:10', 'messi-kesal-dengan-manajamen-barca', NULL, 2),
(8, 'Khasus Pemerkosan Anak di bawah Umur', 1, 'Where does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'publicu/uploads/posts/1594195849rape.jpg', '2020-07-08 01:10:49', '2020-07-14 00:32:05', 'khasus-pemerkosan-anak-di-bawah-umur', NULL, 3),
(9, 'ujicobackeditor', 2, '<p><strong>Ini adalah uji coba ck editor guys</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Chek 1 3 4&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Bye Guys</strong></p>', 'publicu/uploads/posts/1596000112cintlex (1).jpg', '2020-07-28 22:21:52', '2020-07-28 22:44:56', 'ujicobackeditor', '2020-07-28 22:44:56', 2),
(10, 'ujicobaCKeditor', 10, '<p>Ini adalah ck editor terbaik</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>kami mencoba kasih masuk</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>God Bless you</p>', 'publicu/uploads/posts/1596001977pip.jfif', '2020-07-28 22:52:57', '2020-07-29 00:31:45', 'ujicobackeditor', NULL, 2),
(11, 'Presiden Belarusia Alexander Lukashenko Selamat dari Infeksi Virus Corona COVID-19', 9, '<p>Presiden&nbsp;<a href=\"https://www.liputan6.com/global/read/4174150/foto-aksi-vladimir-putin-saat-main-hoki-bareng-presiden-belarusia\">Belarusia</a>&nbsp;Alexander Lukashenko mengaku dirinya terinfeksi Virus Corona COVID-19 tanpa menunjukkan gejala apa pun. Namun kini dirinya telah dinyatakan pulih.</p>\r\n\r\n<p>&quot;Hari ini Anda berjumpa dengan seorang pria yang berhasil selamat dari&nbsp;<a href=\"https://www.liputan6.com/bola/read/4225081/tetap-bertanding-klub-belarusia-pasang-manekin-di-stadion-saat-pandemi-virus-corona-covid-19\">Virus Corona</a>. Para dokter kemarin menyimpulkan. Tanpa gejala,&quot; kata Lukashenko saat pertemuan dengan militer, seperti dikutip dari kantor berita&nbsp;<em>BELTA</em>, Selasa (28/7/2020).</p>\r\n\r\n<p>Pemimpin berusia 65 tahun itu menolak menerapkan langkah penguncian atau menutup perbatasan untuk mencegah penyebaran pandemi Virus Corona baru di negara Eropa timur yang berpenduduk 9,5 juta orang itu.</p>\r\n\r\n<p>Lukashenko sebelumnya menepis kekhawatiran soal pandemi sebagai &quot;psikosis&quot; dan menyarankan orang mengonsumsi vodka atau melakukan sauna untuk melawan&nbsp;<a href=\"https://www.liputan6.com/bola/read/4225081/tetap-bertanding-klub-belarusia-pasang-manekin-di-stadion-saat-pandemi-virus-corona-covid-19\">Virus Corona</a>&nbsp;penyebab penyakit pernapasan COVID-19.</p>\r\n\r\n<p>Hingga Selasa 28&nbsp;Juli, tercatat 67.366 kasus COVID-19 dengan 543 kematian di Belarus, menurut Kementerian Kesehatan, seperti dilansir&nbsp;<em>Antara</em>.</p>\r\n\r\n<p>Frustrasi atas penanganan pandemi COVID-19,&nbsp;Lukashenko menuai protes dari kubu oposisi menjelang pemilu 9 Agustus.</p>', 'publicu/uploads/posts/1596008115presiden.PNG', '2020-07-29 00:35:15', '2020-07-29 00:35:15', 'presiden-belarusia-alexander-lukashenko-selamat-dari-infeksi-virus-corona-covid-19', NULL, 2),
(12, 'Mengenal Ikigai, Rahasia Etos Kerja Tinggi dan Karier Cemerlang ala Jepang', 13, '<p>Orang Jepang terkenal dengan etos kerja yang tinggi, kehidupan yang sehat serta karier yang cemerlang. Ternyata, semua itu berkaitan dengan konsep hidup Ikigai. Merangkum laman Instagram platform pendidikan Sekolah.mu, Ikigai merupakan gabungan dari kata &quot;Iki&quot; yang berarti kehidupan dan &quot;Gai&quot; yang berarti nilai. Sehingga, Ikigai memiliki arti memiliki alasan untuk hidup, memiliki nilai-nilai kebahagiaan, memiliki hal-hal yang membuat kamu melangkah maju ke masa depan. Konsep Ikigai akan tercapai bila seseorang memiliki passion, mission, vocation dan profession. Berikut penjelasan Sekolah.mu:<br />\r\n<br />\r\n<br />\r\n1. Passion Ketika kamu memiliki hal yang disukai (himpunan kuning) dan hal yang bisa kamu lakukan (himpunan hijau), maka arsiran yang terbentuk adalah passion. Misalnya kamu suka berbagi inspirasi melalui video dan kamu mampu editing video, maka itu adalah passion kamu.</p>\r\n\r\n<p>2. Profession Ketika kamu memiliki hal yang kamu bisa (himpunan hijau) dan kamu dibayar karena kemampuan tersebut (himpunan biru). Maka, hal tersebut adalah profesimu.</p>\r\n\r\n<p>Misalnya, kamu bisa memberikan inspirasi melalui video, maka salah satu profesi yang bisa dipilih ialah sebagai vlogger. Baca juga: Dana KJP Plus Bulan Juli Cair Hari Ini, Berikut Jadwalnya</p>\r\n\r\n<p>3. Vocation Ketika kamu melakukan sesuatu demi kebutuhan banyak orang (himpunan merah muda) dan kamu dibayar untuk melakukannya (himpunan biru). Maka, hal tersebut dapat disebut sebagai vocation atau keahlian.</p>\r\n\r\n<p>Misalnya, kamu memiliki keahlian sebagi content creator dan kamu menyajikan content yang bermanfaat bagi banyak orang di sebuah perusahaan.<br />\r\n<br />\r\n<br />\r\n&nbsp;</p>', 'publicu/uploads/posts/1596008359japang.PNG', '2020-07-29 00:39:19', '2020-07-29 00:39:19', 'mengenal-ikigai-rahasia-etos-kerja-tinggi-dan-karier-cemerlang-ala-jepang', NULL, 2),
(13, 'Studi: Menikah Tak Membuatmu Lebih Bahagia Ketimbang yang Melajang', 2, '<p>Sebuah penelitian baru di Amerika Serikat telah menemukan bahwa orang yang menghabiskan bertahun-tahun menikah, tak jauh lebih bahagia ketimbang mereka yang melajang.</p>\r\n\r\n<p>Studi tersebut dilakukan oleh peneliti dari&nbsp;<em>Michigan State University</em>&nbsp;dan diikuti oleh 7.532 orang antara usia 18 hingga 60 tahun.</p>\r\n\r\n<p>Penelitian tersebut dilakukan untuk melihat siapa yang melaporkan menjadi yang paling bahagia di kemudian hari. Dari sekian banyak peserta, 79 persen menikah sepanjang hidup mereka, menghabiskan sebagian besar hidup dalam satu pernikahan.</p>\r\n\r\n<p>Kemudian sebanyak 8 persen secara konsisten melajang atau menghabiskan sebagian besar hidup tanpa menikah. Juga terdapat 13 persen yang memiliki riwayat hubungan campuran, yang bervariasi antara berada dalam suatu hubungan, lajang, bercerai, menikah kembali, atau menjadi janda/duda.</p>\r\n\r\n<p>Setelah meminta para peserta untuk menilai tingkat kebahagiaan keseluruhan mereka di kemudian hari, para peneliti menemukan bahwa meskipun orang yang menikah melaporkan sedikit lebih bahagia, mereka tak secara siginifikan lebih bahagia daripada mereka yang masih lajang.</p>\r\n\r\n<p>Mereka yang telah menikah hampir sepanjang hidup mereka menjawab 4 dari 5 tentang betapa bahagianya mereka. Sementara mereka yang lajang di sebagian besar hidup mereka melaporkan mendekati 3,82; dan mereka yang memiliki riwayat hubungan bervariasi menjawab 3,7.</p>\r\n\r\n<p>Meski pernikahan sebelumnya dikaitkan dengan tingkat kesejahteraan yang lebih tinggi, temuan baru yang dipublikasikan dalam&nbsp;<em>Journal of Positive Psychology</em>&nbsp;menunjukkan bahwa menikah tak selalu membuat Anda jauh lebih bahagia.</p>\r\n\r\n<p>Para peneliti mencatat bahwa penelitian sebelumnya cenderung melihat efek status perkawinan pada satu titik waktu atau periode yang relatif singkat.</p>\r\n\r\n<p>Sementara penelitian mereka adalah salah satu yang pertama untuk melihat tingkat kebahagiaan menikah, sebelum menikah, dan orang lajang pada akhir hidup mereka. Penelitian mereka melihat apa pengaruh status hubungan mereka terhadap kesejahteraan dari waktu ke waktu.</p>\r\n\r\n<p>&quot;Orang sering berpikir bahwa mereka perlu menikah agar bahagia, jadi kami mengajukan pertanyaan, &#39;Apakah orang perlu berada dalam suatu hubungan untuk bahagia? Apakah hidup melajang berarti tak bahagia? Bagaimana jika Anda menikah tapi pernikahan tersebut tak berhasil?&#39;&quot; kata salah satu penulis, Dr William Chopik.</p>\r\n\r\n<p>&quot;Ternyata, mempertaruhkan kebahagiaanmu untuk menikah bukanlah taruhan yang pasti,&quot; ujar dia.</p>', 'publicu/uploads/posts/1596008607menikah.PNG', '2020-07-29 00:43:27', '2020-07-29 00:43:27', 'studi-menikah-tak-membuatmu-lebih-bahagia-ketimbang-yang-melajang', NULL, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts_tags`
--

CREATE TABLE `posts_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `posts_id` int(11) NOT NULL,
  `tags_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts_tags`
--

INSERT INTO `posts_tags` (`id`, `posts_id`, `tags_id`, `created_at`, `updated_at`) VALUES
(2, 4, 2, NULL, NULL),
(3, 4, 4, NULL, NULL),
(4, 3, 5, NULL, NULL),
(7, 5, 6, NULL, NULL),
(8, 6, 6, NULL, NULL),
(9, 6, 7, NULL, NULL),
(10, 7, 8, NULL, NULL),
(11, 8, 6, NULL, NULL),
(12, 9, 5, NULL, NULL),
(14, 10, 8, NULL, NULL),
(15, 11, 6, NULL, NULL),
(16, 12, 12, NULL, NULL),
(17, 13, 13, NULL, NULL),
(18, 13, 14, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tags`
--

INSERT INTO `tags` (`id`, `nama`, `slug`, `created_at`, `updated_at`) VALUES
(4, 'buku anime', 'buku-anime', '2020-06-29 20:30:09', '2020-06-29 20:30:09'),
(5, 'berita bola', 'berita-bola', '2020-06-29 20:30:24', '2020-06-29 20:30:24'),
(6, 'pendemi', 'pendemi', '2020-07-03 01:50:48', '2020-07-03 01:50:48'),
(7, 'Flu', 'flu', '2020-07-03 01:50:59', '2020-07-03 01:50:59'),
(8, 'liga spanyol', 'liga-spanyol', '2020-07-03 01:54:15', '2020-07-03 01:54:15'),
(9, 'bahasa pemrograman', 'bahasa-pemrograman', '2020-07-29 00:29:42', '2020-07-29 00:29:42'),
(10, 'software', 'software', '2020-07-29 00:30:06', '2020-07-29 00:30:06'),
(11, 'menu masakan', 'menu-masakan', '2020-07-29 00:30:45', '2020-07-29 00:30:45'),
(12, 'tutorial', 'tutorial', '2020-07-29 00:31:15', '2020-07-29 00:31:15'),
(13, 'Rumah Tangah', 'rumah-tangah', '2020-07-29 00:40:30', '2020-07-29 00:40:30'),
(14, 'Lajang', 'lajang', '2020-07-29 00:40:38', '2020-07-29 00:40:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tipe` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `tipe`) VALUES
(2, 'felicio', 'fernandesfelicio99@gmail.com', NULL, '$2y$10$MCenvwkjWr/o/CLmYpknLOTILTecZQBlPRWJNwwF.yzh/XF1xLxFi', NULL, '2020-07-07 18:54:16', '2020-07-07 18:54:16', 1),
(3, 'juan', 'juanskidipopop@gmail.com', NULL, '$2y$10$d5nd2uAt0RIQ7NGXOsvYqOgeQiGlCtsdsX7SfbsxVNMRwvGT7Dhv2', NULL, '2020-07-08 01:01:57', '2020-07-08 01:01:57', 0),
(4, 'philps', 'philpspatric69@gmail.com', NULL, '$2y$10$fohcVPyM8r1b5QvL.x82WeKI12dCY6idMZ7W1UFt2JP6I9WqVNIU.', NULL, '2020-07-08 23:44:03', '2020-07-08 23:44:03', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `posts_tags`
--
ALTER TABLE `posts_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `posts_tags`
--
ALTER TABLE `posts_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
