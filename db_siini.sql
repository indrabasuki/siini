-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Mar 2021 pada 08.56
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_siini`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_admin` varchar(30) NOT NULL,
  `foto` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_admin`
--

INSERT INTO `tbl_admin` (`username`, `password`, `nama_admin`, `foto`) VALUES
('admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Admin Kita', '47154580.jpg'),
('Bas', '99cb7df6d0713ec29c395fc9a6fda7eaae5180ad', 'Ibas Ibas', ''),
('ibas', 'e1e16189959240defad4a4ce1212491f16db9c73', 'Indra basuki', 'teknisii icon.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_dosen`
--

CREATE TABLE `tbl_dosen` (
  `nid` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_dosen` varchar(30) NOT NULL,
  `foto` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_dosen`
--

INSERT INTO `tbl_dosen` (`nid`, `password`, `nama_dosen`, `foto`) VALUES
('1234567811', 'ce3eaa938d09504bae9458dffb805f2de7c9da4e', 'Rusli S.Ag.', ''),
('1234567812', 'ce3eaa938d09504bae9458dffb805f2de7c9da4e', 'Kartika Dwi Putri S.Kom.', ''),
('1234567813', 'ce3eaa938d09504bae9458dffb805f2de7c9da4e', 'Elida Sari S.Pd., M.M.', ''),
('1234567814', 'ce3eaa938d09504bae9458dffb805f2de7c9da4e', 'Erwin Effendy Drs H. Mpd', ''),
('1234567815', 'ce3eaa938d09504bae9458dffb805f2de7c9da4e', 'Hardiansyah S.Kom. MM', ''),
('1234567816', 'ce3eaa938d09504bae9458dffb805f2de7c9da4e', 'Hannie S.Kom., MMSI.', ''),
('1234567817', 'ce3eaa938d09504bae9458dffb805f2de7c9da4e', 'Teguh Prasetyo Ir., M.M.', ''),
('1234567818', 'ce3eaa938d09504bae9458dffb805f2de7c9da4e', 'Purwanto S.Kom.', ''),
('1234567891', 'feebb5e02e2a758742d60013483a182f389243bf', 'Imam Zaenuddin S.Kom., M.Kom.', ''),
('1234567892', 'feebb5e02e2a758742d60013483a182f389243bf', 'Lindya Yuwita Verawaty S.H., M', ''),
('1234567893', 'feebb5e02e2a758742d60013483a182f389243bf', 'Maria Rosanti S.Pt., S.Pd., M.', ''),
('1234567894', 'feebb5e02e2a758742d60013483a182f389243bf', 'Florentina Risnu Sawitri S.H.,', ''),
('1234567895', 'feebb5e02e2a758742d60013483a182f389243bf', 'Abdul Rohim S.Kom., M.Kom.', ''),
('1234567896', 'feebb5e02e2a758742d60013483a182f389243bf', 'Purwanto S.Kom.	', ''),
('1234567897', 'feebb5e02e2a758742d60013483a182f389243bf', 'Ahmad Ali Mahrus S.Kom.	', ''),
('1234567898', 'ce3eaa938d09504bae9458dffb805f2de7c9da4e', 'Suryono ST, MM', ''),
('1234567899', 'ce3eaa938d09504bae9458dffb805f2de7c9da4e', 'Syahrul Udhiyat S.Kom.', ''),
('1284567812', '75991c10ae15c751c89770a53922d59ddc4681b2', 'IBAS IBAS IBAS', ''),
('8234567816', 'fef4e9fe5bf45d1baf3dab685e1ee3e77e517e98', 'Ibas Bas', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_mahasiswa`
--

CREATE TABLE `tbl_mahasiswa` (
  `nim` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_mhs` varchar(30) NOT NULL,
  `jk_mhs` enum('Laki-laki','Perempuan') NOT NULL,
  `thn_akademik` year(4) NOT NULL,
  `jurusan_mhs` enum('Teknik Informatika','Sistem Informasi','Manajemen Informatika','Komputerisasi Akuntansi') NOT NULL,
  `jenjang_mhs` enum('S1','D3') NOT NULL,
  `kelas_program` enum('Pagi','Malam','Shift') NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_mahasiswa`
--

INSERT INTO `tbl_mahasiswa` (`nim`, `password`, `nama_mhs`, `jk_mhs`, `thn_akademik`, `jurusan_mhs`, `jenjang_mhs`, `kelas_program`, `foto`) VALUES
('109180640033', 'f3f676ba1dfcb2a96c9fa90ffe6c4bc7f0df67cc', 'IRFAN MAULANA', 'Laki-laki', 2018, 'Teknik Informatika', 'S1', 'Malam', 'irvan.jpeg'),
('109180640035', '8b917163dfcc9451024f7cb1ba03031ba74bf781', 'VEDE RINGKO UKI', 'Laki-laki', 2018, 'Sistem Informasi', 'S1', 'Malam', 'UMBU.jpeg'),
('109180940054', 'a05cb83a92233abdaab0f60d6bcefd40b6015e51', 'DEOGY AHMAD', 'Laki-laki', 2018, 'Sistem Informasi', 'S1', 'Malam', 'deogy.jpeg'),
('109180940100', 'f2646211c7af7ec430ff6bdfd458f422f4231fb7', 'Iqbal', 'Perempuan', 2021, 'Sistem Informasi', 'S1', 'Pagi', ''),
('109180940101', '7862bc878d6cac677c38ae3205e0102190c686e3', 'JOKO', 'Laki-laki', 2020, 'Teknik Informatika', 'S1', 'Malam', ''),
('109180940133', '72e173fba65dfbd32d5221519ed8d6a44c7b577f', 'ANISA MUTIARA OKTAFIA', 'Perempuan', 2018, 'Sistem Informasi', 'S1', 'Malam', 'oshin.jpeg'),
('109180940135', '044f6b219a7f9c4cb01cb949f43187a91b415a7a', 'MARYANA SYLVIA SARI', 'Perempuan', 2018, 'Sistem Informasi', 'S1', 'Malam', 'maryana.jpeg'),
('109180940137', '036282932c9c925648ba6392383cfd8ad7265a03', 'INDRA BASUKI', 'Perempuan', 2018, 'Sistem Informasi', 'S1', 'Pagi', 'ibas.jpeg'),
('109180940178', 'bf2de08f461f6ca9aed54267e1dd516427c3601c', 'MUMU MULYASAR', 'Laki-laki', 2018, 'Sistem Informasi', 'S1', 'Malam', 'mumu.jpeg'),
('109190640033', '4f9c333385a773f59b5c3f492506d595f083c7ad', 'FAUZAN MASRURI', 'Laki-laki', 2018, 'Teknik Informatika', 'S1', 'Malam', 'fauzan.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_matakuliah`
--

CREATE TABLE `tbl_matakuliah` (
  `kode_mk` varchar(5) NOT NULL,
  `nama_mk` varchar(30) NOT NULL,
  `jml_sks` int(2) NOT NULL,
  `semester` enum('1','2','3','4','5','6','7','8') NOT NULL,
  `jurusan` enum('Teknik Informatika','Sistem Informasi','Manajemen Informatika','KomputerisasiAkuntansi') NOT NULL,
  `nid` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_matakuliah`
--

INSERT INTO `tbl_matakuliah` (`kode_mk`, `nama_mk`, `jml_sks`, `semester`, `jurusan`, `nid`) VALUES
('08199', 'PENGANTAR MANAJEMEN BISNIS ', 3, '2', 'Sistem Informasi', '1234567816'),
('08415', 'LOGIKA MATEMATIKA ', 3, '2', 'Sistem Informasi', '1234567812'),
('09000', 'PROYEK PEMROGRAMAN/SKRIPSI 4', 1, '7', 'Sistem Informasi', '1234567891'),
('09111', 'PENGANTAR ILMU EKONOMI ', 3, '3', 'Sistem Informasi', '1234567817'),
('09311', 'STRUKTUR DATA ', 3, '2', 'Sistem Informasi', '1234567898'),
('09400', 'PENGANTAR TEKNOLOGI INFORMASI ', 3, '1', 'Sistem Informasi', '1234567891'),
('09401', 'KULIAH PENGENALAN LAPANGAN ', 2, '2', 'Sistem Informasi', '1234567812'),
('09402', 'JARINGAN KOMPUTER', 3, '5', 'Sistem Informasi', '1234567891'),
('09403', 'PENDIDIKAN PANCASILA & KEWARGA', 3, '2', 'Sistem Informasi', '1234567894'),
('09404', 'KALKULUS ', 5, '1', 'Sistem Informasi', '1234567812'),
('09406', 'BAHASA INDONESIA', 2, '5', 'Sistem Informasi', '1234567892'),
('09407', 'MATEMATIKA DISKRIT ', 3, '3', 'Sistem Informasi', '1234567814'),
('09409', 'AKUNTANSI DASAR ', 2, '1', 'Sistem Informasi', '1234567893'),
('09411', 'SISTEM OPERASI', 3, '5', 'Sistem Informasi', '1234567895'),
('09412', 'KONSEP SISTEM INFORMASI ', 2, '2', 'Sistem Informasi', '1234567816'),
('09415', 'BAHASA PEMROGRAMAN 3', 3, '5', 'Sistem Informasi', '1234567895'),
('09418', 'SISTEM PENDUKUNG KEPUTUSAN', 3, '5', 'Sistem Informasi', '1234567894'),
('09422', 'PROYEK PEMROGRAMAN/SKRIPSI 3', 1, '6', 'Sistem Informasi', '1234567891'),
('09423', 'KOMPUTER BISNIS 1 (PAK 1) ', 2, '1', 'Sistem Informasi', '1234567815'),
('09425', 'UNIFIED MODELING LANGUAGE', 3, '5', 'Sistem Informasi', '1234567891'),
('09432', 'SISTEM INFORMASI AKUNTANSI', 2, '5', 'Sistem Informasi', '1234567893'),
('1209', 'BAHASA INGGRIS 2 ', 2, '2', 'Sistem Informasi', '1234567813'),
('12111', 'KOMPUTER BISNIS 2 (PAK 2) ', 2, '2', 'Sistem Informasi', '1234567891'),
('12112', 'PENGOLAHAN INTALASI KOMPUTER ', 2, '2', 'Sistem Informasi', '1234567891'),
('12113', 'SISTEM BASIS DATA 1 ', 3, '3', 'Sistem Informasi', '1234567899'),
('1333', 'STATISTIKA 1 ', 3, '3', 'Sistem Informasi', '1234567817'),
('21123', 'SISTEM INFORMASI MANAJEMEN ', 2, '3', 'Sistem Informasi', '1234567897'),
('23311', 'BAHASA PEMROGRAMAN 2 ', 3, '4', 'Sistem Informasi', '1234567812'),
('3001', 'PENDIDIKAN ANTI KORUPSI ', 2, '1', 'Sistem Informasi', '1234567817'),
('31123', 'BAHASA PEMROGRAMAN 1 ', 3, '3', 'Sistem Informasi', '1234567812'),
('31124', 'STATISTIKA 2 ', 3, '4', 'Sistem Informasi', '1234567893'),
('32112', 'PEMROGRAMAN TERSTRUKTUR ', 3, '4', 'Sistem Informasi', '1234567896'),
('33121', 'ORGANISASI & ARSITEKTUR KOMPUT', 3, '3', 'Sistem Informasi', '1234567816'),
('4221', 'TEKNIK RISET OPERASIONAL ', 3, '4', 'Sistem Informasi', '1234567817'),
('51222', 'SISTEM BASIS DATA 2 ', 3, '4', 'Sistem Informasi', '1234567899'),
('52113', 'ALJABAR LINEAR & MATRIKS ', 3, '4', 'Sistem Informasi', '1234567893'),
('KB094', 'PROYEK PEMROGRAMAN/SKRIPSI 1 ', 1, '3', 'Sistem Informasi', '1234567899'),
('KK094', 'PEMROGRAMAN BERORIENTASI OBJEK', 2, '3', 'Sistem Informasi', '1234567898'),
('PK091', 'BAHASA INGGRIS 1 ', 3, '1', 'Sistem Informasi', '1234567813'),
('PK094', 'PENDIDIKAN AGAMA ', 2, '1', 'Sistem Informasi', '1234567811');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_nilai`
--

CREATE TABLE `tbl_nilai` (
  `nim` varchar(20) NOT NULL,
  `kode_mk` varchar(5) NOT NULL,
  `nid` varchar(20) NOT NULL,
  `thn_akademik` year(4) NOT NULL,
  `semester` enum('1','2','3','4','5','6','7','8') NOT NULL,
  `nilai` int(3) NOT NULL,
  `grade` char(2) NOT NULL,
  `tgl_input` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_nilai`
--

INSERT INTO `tbl_nilai` (`nim`, `kode_mk`, `nid`, `thn_akademik`, `semester`, `nilai`, `grade`, `tgl_input`) VALUES
('109180940133', '09411', '1234567895', 2018, '5', 100, 'A', '2021-03-08'),
('109180940137', '09402', '1234567891', 2018, '5', 92, 'A', '2021-03-08'),
('109180940137', '09406', '1234567892', 2018, '5', 92, 'A', '2021-03-08'),
('109180940137', '09411', '1234567895', 2018, '5', 92, 'A', '2021-03-08'),
('109180940137', '09415', '1234567895', 2018, '5', 92, 'A', '2021-03-08'),
('109180940137', '09418', '1234567894', 2018, '5', 92, 'A', '2021-03-08'),
('109180940137', '09422', '1234567891', 2018, '6', 92, 'A', '2021-03-08'),
('109180940137', '09425', '1234567891', 2018, '5', 92, 'A', '2021-03-08'),
('109180940137', '09432', '1234567893', 2018, '5', 92, 'A', '2021-03-08'),
('109180940178', 'PK094', '1234567811', 2018, '1', 90, 'A', '2021-03-08'),
('109180940135', '08199', '1234567816', 2018, '2', 100, 'A', '2021-03-08'),
('109180940178', '09401', '1234567812', 2018, '2', 100, 'A', '2021-03-14'),
('109180940100', '09422', '1234567891', 2021, '6', 90, 'A', '2021-03-14'),
('109180940137', '09404', '1234567812', 2018, '1', 100, 'A', '2021-03-14'),
('109190640033', '09402', '1234567891', 2018, '5', 90, 'A', '2021-03-14'),
('109180940135', '12112', '1234567891', 2018, '2', 100, 'A', '2021-03-15'),
('109180940101', '31123', '1234567812', 2020, '3', 78, 'B', '2021-03-15'),
('109180940135', '12111', '1234567891', 2018, '2', 89, 'B+', '2021-03-15');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `tbl_dosen`
--
ALTER TABLE `tbl_dosen`
  ADD PRIMARY KEY (`nid`);

--
-- Indeks untuk tabel `tbl_mahasiswa`
--
ALTER TABLE `tbl_mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `tbl_matakuliah`
--
ALTER TABLE `tbl_matakuliah`
  ADD PRIMARY KEY (`kode_mk`),
  ADD KEY `nid` (`nid`);

--
-- Indeks untuk tabel `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  ADD KEY `nim` (`nim`),
  ADD KEY `kode_mk` (`kode_mk`),
  ADD KEY `nid` (`nid`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_matakuliah`
--
ALTER TABLE `tbl_matakuliah`
  ADD CONSTRAINT `nid-mk` FOREIGN KEY (`nid`) REFERENCES `tbl_dosen` (`nid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  ADD CONSTRAINT `kode-mk` FOREIGN KEY (`kode_mk`) REFERENCES `tbl_matakuliah` (`kode_mk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nid-nilai` FOREIGN KEY (`nid`) REFERENCES `tbl_dosen` (`nid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nim-nilai` FOREIGN KEY (`nim`) REFERENCES `tbl_mahasiswa` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
