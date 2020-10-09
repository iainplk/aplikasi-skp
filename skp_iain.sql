-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2020 at 09:58 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skp_iain`
--

-- --------------------------------------------------------

--
-- Table structure for table `laporan_master`
--

DROP TABLE IF EXISTS `laporan_master`;
CREATE TABLE `laporan_master` (
  `id` int(10) NOT NULL,
  `tanggal_buka` date DEFAULT NULL,
  `tanggal_tutup` date DEFAULT NULL,
  `peg_nama` varchar(50) DEFAULT NULL,
  `peg_nip` varchar(20) NOT NULL,
  `peg_pangkat` varchar(50) DEFAULT NULL,
  `peg_unit_kerja` varchar(255) DEFAULT NULL,
  `peg_jabatan` varchar(255) DEFAULT NULL,
  `peg_sanggah` text,
  `peg_tanggal_sanggah` date DEFAULT NULL,
  `peg_tanggal_ttd` date DEFAULT NULL,
  `ats_nama` varchar(50) DEFAULT NULL,
  `ats_nip` varchar(20) NOT NULL,
  `ats_pangkat` varchar(50) DEFAULT NULL,
  `ats_jabatan` varchar(255) DEFAULT NULL,
  `ats_jawab` text,
  `ats_tanggal_jawab` date DEFAULT NULL,
  `ats_tanggal_ttd` date DEFAULT NULL,
  `pim_nama` varchar(50) DEFAULT NULL,
  `pim_nip` varchar(20) NOT NULL,
  `pim_pangkat` varchar(50) DEFAULT NULL,
  `pim_jabatan` varchar(255) DEFAULT NULL,
  `pim_keputusan` text,
  `pim_tanggal_keputusan` date DEFAULT NULL,
  `pim_tanggal_ttd` date DEFAULT NULL,
  `rekomendasi` text,
  `tanggal_rekomendasi` date DEFAULT NULL,
  `ori_pelayanan` double DEFAULT '0',
  `integritas` double DEFAULT '0',
  `komitmen` double DEFAULT '0',
  `disiplin` double DEFAULT '0',
  `kerjasama` double DEFAULT '0',
  `kepemimpinan` double DEFAULT '0',
  `validasi` tinyint(1) DEFAULT '0',
  `riwayat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `laporan_realisasi`
--

DROP TABLE IF EXISTS `laporan_realisasi`;
CREATE TABLE `laporan_realisasi` (
  `id` int(10) NOT NULL,
  `target` int(10) NOT NULL,
  `uraian` text,
  `kredit` double DEFAULT '0',
  `kuantitas` int(5) DEFAULT '1',
  `kualitas` double DEFAULT '95',
  `tanggal` datetime DEFAULT NULL,
  `biaya` double DEFAULT '0',
  `keterangan` text,
  `riwayat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `laporan_target`
--

DROP TABLE IF EXISTS `laporan_target`;
CREATE TABLE `laporan_target` (
  `id` int(10) NOT NULL,
  `master` int(10) NOT NULL,
  `pekerjaan` text,
  `kredit` double DEFAULT '0',
  `kuantitas` int(5) DEFAULT '1',
  `output` varchar(20) DEFAULT NULL,
  `kualitas` double DEFAULT '100',
  `waktu` int(2) DEFAULT '12',
  `biaya` double DEFAULT '0',
  `validasi` tinyint(1) DEFAULT '0',
  `riwayat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pangkat_pns`
--

DROP TABLE IF EXISTS `pangkat_pns`;
CREATE TABLE `pangkat_pns` (
  `urutan` int(2) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pangkat_pns`
--

INSERT INTO `pangkat_pns` (`urutan`, `nama`) VALUES
(1, 'Juru Muda (I/a)'),
(2, 'Juru Muda Tingkat I (I/b)'),
(3, 'Juru (I/c)'),
(4, 'Juru Tingkat I (I/d)'),
(5, 'Pengatur Muda (II/a)'),
(6, 'Pengatur Muda Tingkat I (II/b)'),
(7, 'Pengatur (II/c)'),
(8, 'Pengatur Tingkat I (II/d)'),
(9, 'Penata Muda (III/a)'),
(10, 'Penata Muda Tingkat I (III/b)'),
(11, 'Penata (III/c)'),
(12, 'Penata Tingkat I (III/d)'),
(13, 'Pembina (IV/a)'),
(14, 'Pembina Tingkat I (IV/b)'),
(15, 'Pembina Utama Muda (IV/c)'),
(16, 'Pembina Utama Madya (IV/d)'),
(17, 'Pembina Utama (IV/e)');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

DROP TABLE IF EXISTS `pegawai`;
CREATE TABLE `pegawai` (
  `nip` varchar(20) NOT NULL,
  `password` text,
  `nama` varchar(50) DEFAULT NULL,
  `gelar_depan` varchar(20) DEFAULT NULL,
  `gelar_belakang` varchar(20) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `nik` varchar(20) DEFAULT NULL,
  `npwp` varchar(20) DEFAULT NULL,
  `alamat` text,
  `telepon` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `nidn` varchar(20) DEFAULT NULL,
  `pangkat` varchar(50) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `unit_kerja` varchar(255) DEFAULT NULL,
  `atasan` varchar(20) DEFAULT NULL,
  `pimpinan` varchar(20) DEFAULT NULL,
  `ketenagaan` int(1) DEFAULT NULL,
  `aktivasi_akun` tinyint(1) DEFAULT '1',
  `riwayat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`nip`, `password`, `nama`, `gelar_depan`, `gelar_belakang`, `tempat_lahir`, `tanggal_lahir`, `gender`, `nik`, `npwp`, `alamat`, `telepon`, `email`, `nidn`, `pangkat`, `jabatan`, `unit_kerja`, `atasan`, `pimpinan`, `ketenagaan`, `aktivasi_akun`, `riwayat`) VALUES
('195512311983031026', '827ccb0eea8a706c4c34a16891f84e7b', 'ABUBAKAR H.M.', 'Dr. H.', 'M.Ag.', 'Bima', '1955-12-31', 'L', '6271031212550009', NULL, '', '081349262401', 'abubakar_1255@yahoo.co.id', '2012125502', 'Pembina Utama Muda (IV/c)', 'Dekan FUAD', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('195602031990031001', '827ccb0eea8a706c4c34a16891f84e7b', 'ABDUL QODIR', 'Dr. H.', 'M.Pd.', 'banjarnegara', '2011-02-03', 'L', '6271030302560003', NULL, '', '081349775351', 'abdulqodir@gmail.com', '2003025602', 'Pembina Utama Muda (IV/c)', 'Wakil Rektor Bidang Akademik dan Kemahasiswaan', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('195603011985031005', '827ccb0eea8a706c4c34a16891f84e7b', 'AHMAD SYAR`I', 'Drs. H.', 'M.Pd.', 'Marindi', '1956-03-01', 'L', NULL, '', NULL, '08125144771, 08115221956', '', '', 'Pembina Utama Muda (IV/c)', '', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('195607251990032001', '827ccb0eea8a706c4c34a16891f84e7b', 'ST. RAHMAH', 'Dra. Hj.', 'M.Si.', 'Ujung Pandang', '1956-07-25', 'P', '6271036507560001', '144378171711000', 'Jl. Siam No. 52 Komp. Palangka Permai\r\nG.Obos XII Palangka Raya', '05363362328, 081241541545', 'st.rahmah@gmail.com', '2025075601', 'Pembina (IV/a)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('195609021992031001', '827ccb0eea8a706c4c34a16891f84e7b', 'ASMAIL AZMY H.B.', 'Drs.', 'M.Fil.I.', 'hulu sungai tengah', '1956-09-02', 'L', '6271010209560003', NULL, '', '05363203733, 081349082628, 08152810208', 'asmailazmy@gmial.com', '2002095601', 'Penata Tingkat I (III/d)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('195811211985032001', '827ccb0eea8a706c4c34a16891f84e7b', 'TUTUT SHOLIHAH', 'Dr.', 'M.Pd.', 'blitar', '1958-11-21', 'P', '6271036111580002', '155439060711000', '', '085249512371, 081333989535', 'sholihahtutut@gmail.com', '2021115801', 'Pembina (IV/a)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('195903281992122001', '827ccb0eea8a706c4c34a16891f84e7b', 'SRI PURYANINGSIH', 'Dra.', 'M.Pd.', '', '1959-03-28', 'P', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('196002091988031002', '827ccb0eea8a706c4c34a16891f84e7b', 'M. NAWIR', 'Drs.', NULL, '', '2012-10-03', 'L', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('196003181982031002', '827ccb0eea8a706c4c34a16891f84e7b', 'FIMEIR LIADI', 'H.', 'M.Pd.', 'Muara Teweh', '1960-03-18', 'L', '6203011803600003', '72.381.482.8-711.000', '', '085345490718', 'fimeirliadi@gmail.com', '2018036003', 'Pembina Tingkat I (IV/b)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('196007091990031002', '827ccb0eea8a706c4c34a16891f84e7b', 'MUNIB', NULL, 'M.Ag.', 'Blitar', '1960-09-07', 'L', '91', NULL, '', '081349184455', 'ibintirta@yaho.co.id', '2007096001', 'Pengatur Tingkat I (II/d)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('196105201999031003', '827ccb0eea8a706c4c34a16891f84e7b', 'FAHMI', 'Drs.', 'M.Pd.', 'Barabai, HST', '1961-05-20', 'L', '6271032005610003', '14.6887823-711.000', 'Jl. Yos Sudarso XII No. 27/A RT.09 RW.06', '085249227651', 'fahmi@iainpalangkaraya.ac.id', '2020056102', 'Pembina (IV/a)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('196108061982032002', '827ccb0eea8a706c4c34a16891f84e7b', 'SRI RAHMAWATY', 'Hj.', NULL, NULL, '1961-08-06', 'P', NULL, NULL, NULL, '085249475009', '', NULL, 'Penata Tingkat I (III/d)', NULL, NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('196205011992031001', '827ccb0eea8a706c4c34a16891f84e7b', 'AMAL FATHULLAH', 'Drs. H.', 'M.Pd.I.', 'Banjarmasin', '1962-05-01', 'L', NULL, '', NULL, '081298363778', 'amal@iain-palangkaraya.ac.id', '', 'Pembina Tingkat I (IV/b)', 'Kepala Biro Administrasi Umum, Akademik dan Keuangan', NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('196205052007012008', '827ccb0eea8a706c4c34a16891f84e7b', 'SITI MUAWANAH', 'Dra.', 'M.Pd.', 'Rejosari', '1962-05-05', 'P', '6271034505620003', NULL, '', '081352782500', 'muawanahsiti23@yahoo.com', '2005056202', 'Penata (III/c)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('196206011983031004', '827ccb0eea8a706c4c34a16891f84e7b', 'MUHDI', 'H.', NULL, NULL, '1962-06-01', 'L', NULL, NULL, NULL, '085246229797, 085345895582', '', NULL, 'Penata Muda Tingkat I (III/b)', NULL, NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('196206041989031010', '827ccb0eea8a706c4c34a16891f84e7b', 'ABD. RAHMAN', 'Drs. H.', 'M.Ag.', 'Haur Gading', '1962-06-04', 'L', '6271030406620005', '15.374.155.8-711.000', 'Jl. Intan II No.335  RT.04  RW.06 Komplek Palangka Pemai  Kelurahan Menteng Kecamatan Jekan Raya  Kota Palangka Raya Kalimantan Tengah ', '08125094899', 'abdurrahmanabdullah2@gmail.com', '2004066201', 'Pembina (IV/a)', '1. Staf Bidang Akademik, 2, Ketua LPM, 3. Sekretaris Jurusan Tarbiyah, 4.Ketua Program D2 PAI, 5.Ketua Jurusan Tarbiyah, 6.Ketua Pusat Sumber Belajar dan Praktikum  pada  STAIN Palangka Raya.', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('196206081989031003', '827ccb0eea8a706c4c34a16891f84e7b', 'MAZRUR', 'Drs. H.', 'M.Pd.', 'RT.KEMINTING', '1962-06-08', 'L', '200608061962', '15.759.531.5-711.000', 'Jl. Kecubung I No. 8 RT. 3 RW. 6 Komplek Palangka Permai Kelurahan Menteng Kec. Jekan Raya Palangka Raya Kaimantan Tengah ', '05363229625, 08125094205', 'mazrur_62@yahoo.co.id', '2008066202', 'Pembina (IV/a)', 'Lektor Kepala', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('196208151991021001', '827ccb0eea8a706c4c34a16891f84e7b', 'JASMANI', 'Drs.', 'M.Ag.', 'Kebumen', '1962-08-15', 'L', '474.4.138/2981/J', '15.717.948.2-711.00', '', '081251529318', 'adab@iain-palangkaraya.ac.id', '2015086201', 'Pembina Tingkat I (IV/b)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('196301181991031002', '827ccb0eea8a706c4c34a16891f84e7b', 'KHAIRIL ANWAR', 'Dr. H.', 'M.Ag.', 'Martapura', '1963-01-18', 'L', '6271011801630006', '68.809.819.3-711.000', 'Kantor: Jalan G. Obos, Komplek Islamic Centre, Palangka Raya, Kalimantan Tengah, 73312, Telp. 0536-3226536\r\n\r\nRumah: Jalan Harum Manis III, No, 29, Palangka Raya, Kalimantan Tengah, 73111, Telp. 0536-3227948.', '081251573333', 'khairilanwar720@ymail.com', '2018016301', 'Pembina Tingkat I (IV/b)', '1. Mengelola STAIN Palangka Raya untuk menjadi perguruan tinggi yang unggul dan maju dalam tridharma perguruan tinggi;\r\n2. Mengantarkan mahasiswa yang kompetitif dan berkualitas serta berakhlak mulia.', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('196305041991032002', '827ccb0eea8a706c4c34a16891f84e7b', 'HAMDANAH', 'Dr. Hj.', 'M.Ag.', 'Banjarmasin', '1963-05-04', 'P', '6271034405640005', '68.809.818.5-711.000', '', '085250404497, 08125091907', ' hamdanahilham@gmail.com, hamdanahilhamsyah@ymail.com', '2004056301', 'Pembina Utama Muda (IV/c)', 'Kaprodi Magister Pendidikan Agama Islam (MPAI) Pascasarjana IAIN Palangka Raya', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('196307031991031003', '827ccb0eea8a706c4c34a16891f84e7b', 'SUPRAMONO', 'Dr.', 'M.Pd.', 'Nganjuk', '1963-07-03', 'L', NULL, NULL, 'Jl.B.koetin No.40 Palangkaraya Telp.0536 32 39449\r\n', '0536 32 39449', 'supramono@gmail.com', NULL, '', '', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('196311091992031004', '827ccb0eea8a706c4c34a16891f84e7b', 'SABIAN UTSMAN', 'Dr.', 'S.H., M.Si.', 'SEBUAI', '1963-03-09', 'L', '6271030911630001', '15.050.955.2-711.000', 'JL. BIDURI II. BLOK A NO:24 PALANGKA RAYA KALIMANTAN TENGAH', '05363242641, 081349197311, 085754144715', 'sabian_usman@yahoo.co.id', '2009116302', 'Pembina (IV/a)', 'Lektor Mata Kuliah Sosiologi Hukum', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('196312131991031002', '827ccb0eea8a706c4c34a16891f84e7b', 'NURIMAN WIJAYA', 'Drs.', 'M.Pd.', '', '1963-12-13', 'L', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('196404271984031001', '827ccb0eea8a706c4c34a16891f84e7b', 'NANANG PRIATNA', NULL, NULL, NULL, '1964-04-27', 'L', NULL, NULL, NULL, '081250476614', '', NULL, 'Penata Muda Tingkat I (III/b)', NULL, NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('196406131993031004', '827ccb0eea8a706c4c34a16891f84e7b', 'ILHAMSYAH', NULL, 'S.H., M.H.', 'Banjarmasin', '1964-06-13', 'L', NULL, '49.813.924.7-711.000', 'Jl. Jintan No. 07\r\nPalangka Raya', '08125097985', 'kang.rohma@yahoo.com', '6271031306640003', 'Pembina (IV/a)', '', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('196501011998031003', '827ccb0eea8a706c4c34a16891f84e7b', 'SADIANI', 'Dr.', 'M.H.', 'Mangkatip', '1965-01-01', 'L', '00010119652007', NULL, '', ' 081251164040', 'sadiani2015@gmail.com', '2001016501', 'Penata Tingkat I (III/d)', 'Sekretaris Prodi Pascasarjana Hukum Keluarga IAIN Palangka Raya\r\n', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('196504291991031002', '827ccb0eea8a706c4c34a16891f84e7b', 'NORMUSLIM', 'Drs. H.', 'M.Ag.', 'Puruk Cahu', '1965-04-29', 'L', '6271032904650006', '148197734711000', '', '085345970044, 081349000220', 'nor_muslim65@yahoo.com', '2029046501', 'Pembina Tingkat I (IV/b)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('196607051994031010', '827ccb0eea8a706c4c34a16891f84e7b', 'ROFI`I', 'Drs.', 'M.Ag.', 'Nganjuk', '1966-07-05', 'L', '6271030507660001', NULL, '', '082159159758', 'kang.rohma@yahoo.com', '2005076601', 'Penata (III/c)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('196703191991121001', '827ccb0eea8a706c4c34a16891f84e7b', 'AKHMADI', 'Drs.', 'M.Si.', '', '1967-03-19', 'L', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('196703271994021001', '827ccb0eea8a706c4c34a16891f84e7b', 'MARDAYA', 'Drs.', 'M.Pd.', '', '2011-08-11', 'L', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('196705112001121002', '827ccb0eea8a706c4c34a16891f84e7b', 'TAUFIK', NULL, 'S.Ag.', NULL, '1967-05-11', 'L', NULL, NULL, NULL, '085249591099', '', NULL, 'Penata (III/c)', NULL, NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('196706101994022001', '827ccb0eea8a706c4c34a16891f84e7b', 'PANIYEM', NULL, 'S.H.', NULL, '1967-06-10', 'P', NULL, NULL, NULL, '085249248952', '', NULL, 'Penata (III/c)', NULL, NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('196707041995031001', '827ccb0eea8a706c4c34a16891f84e7b', 'HAJAJI', 'Drs.', 'M.Pd.I.', 'Kotawaringin Barat', '1967-07-04', 'L', NULL, '148182629731000', NULL, '0811513769', 'hajajizamra@gmail.com', '', 'Pembina Tingkat I (IV/b)', '', NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('196710031993032001', '827ccb0eea8a706c4c34a16891f84e7b', 'RODHATUL JENNAH', 'Dra. Hj.', 'M.Pd.', 'Martapura', '1967-10-03', 'P', '6271034310670007', '15.759.531.5-711.001', '', '08125142817', 'rodah_67@yahoo.co.id', '2003106702', 'Pembina (IV/a)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('196711282006041005', '827ccb0eea8a706c4c34a16891f84e7b', 'SYAIRIL FADLI', NULL, 'M.Hum.', 'Amuntai', '1967-11-28', 'L', '6271012811670001', NULL, 'Palangka Raya', '081352958789', 'ktkntidak@gmail.com', '2028116701', 'Penata Tingkat I (III/d)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('196712261996032003', '827ccb0eea8a706c4c34a16891f84e7b', 'HALIMAH', 'Dra.', 'M.Pd.', 'Banjarmasin', '1967-12-26', 'P', NULL, '688098722711000', 'Palangka Raya', '', 'h5h_14@yahoo.co.id', '', 'Pembina (IV/a)', 'DLB/Guru Bahasa Inggris Profesional MAN Model Palangka Raya', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('196719111994021001', '827ccb0eea8a706c4c34a16891f84e7b', 'MISBAH', 'Drs.', 'M.Ag.', 'loireng Demak, 19 Nopember 1967', '1967-11-19', 'L', NULL, '', 'Jl. Lumba-lumba no. 76 B ', '081349270419', 'misbahsayung@gmail.com', '', 'Pembina (IV/a)', '', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('196801081994021001', '827ccb0eea8a706c4c34a16891f84e7b', 'SARDIMI', 'Dr. H.', 'M.Ag.', 'Jangkang', '1968-01-08', 'L', '6271030801680005', NULL, 'Jl. G. Obos iX no. 55 Kom Perum Palangka Permai  Palangka Raya', '05363230776, 085249230765', 'sardimi@iain-palangkaraya.ac.id', '2008016801', 'Pembina (IV/a)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('196803222008011005', '827ccb0eea8a706c4c34a16891f84e7b', 'SABARUN', NULL, 'M.Pd.', 'Temanggung', '1968-03-22', 'L', '6271032203680001', '14.744.613.2-711.000', 'Pesantren Mahasiswa ULIN NUHA STAIN Palangka Raya, Jalan Raya G. Obos, Palangka Raya, Kalimantan Tengah', '085646483912', 'sabarun22@yahoo.com', '2022036801', 'Penata Tingkat I (III/d)', 'murdor mahad Palangka Raya', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('196809061991031001', '827ccb0eea8a706c4c34a16891f84e7b', 'YUDISWORO D.S.', NULL, NULL, NULL, '1968-09-06', 'L', NULL, NULL, NULL, '085248774123', '', NULL, 'Penata Muda Tingkat I (III/b)', NULL, NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('196809121992032001', '827ccb0eea8a706c4c34a16891f84e7b', 'SUPARMI', NULL, 'S.H.', 'Pleihari', '1968-09-12', 'P', NULL, NULL, NULL, '081349081883, 081349269978', '', NULL, 'Penata (III/c)', NULL, NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('196809121998032002', '827ccb0eea8a706c4c34a16891f84e7b', 'JASIAH', NULL, 'M.Pd.', 'Pleihari', '1968-09-12', 'P', '6271035209680003', '144379302711000', 'Perum Palangka Permai Jl.Intan I no.1', '081349081883', 'jasiahpalangkaraya@gmail.com', '2012096801', 'Penata Tingkat I (III/d)', 'Dosen pada jurusan Tarbiyah mata kuliah Ilmu pendidikan', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('196810301999031001', '827ccb0eea8a706c4c34a16891f84e7b', 'HARLES ANWAR', NULL, 'M.Si.', 'Muara Laung I', '2011-08-20', 'L', '6271033010680003', '68.809.804.5-711.000', '', '082157046239, 08125144199', 'wakilrektor3iainpalangkaraya@gmail.com ', '2030106801', 'Pembina (IV/a)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('196812012000031003', '827ccb0eea8a706c4c34a16891f84e7b', 'ABDUL KHAIR', NULL, 'M.H.', 'Pematang Benteng, dusun tengah', '1968-12-01', 'L', '6271030112680002', '14.744.644.7.711.000', 'Jl. Widuri II No.3 G. Obos XII Palangka Raya', '085249356703', 'khairstain@gmail.com', '2001126801', 'Penata Tingkat I (III/d)', 'Membantu Ketua Jurusan Mengonsep surat, melaksanakan dan memonitor kegiatan jurusan syari\'ah, mengawasi etika mahasiswa', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('196903232003121002', '827ccb0eea8a706c4c34a16891f84e7b', 'DAKIR', 'Dr.', 'M.A.', 'Banjarnegara', '1968-07-09', 'L', '6271011903690001', NULL, 'Palangka Raya', '081352700222', 'dakireka@gmail.com', '2019036901', 'Penata (III/c)', 'Dosen', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197001312002121002', '827ccb0eea8a706c4c34a16891f84e7b', 'RAHMADI NIRWANTO', NULL, 'M.Pd.', 'Kasongan', '1970-01-31', 'L', '6271033101700003', NULL, 'Jl. G. Obos XV B no. 9B', '087859201345', 'rnirwanto.plk@gmail.com', '2031017002', 'Penata Tingkat I (III/d)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197002081998032001', '827ccb0eea8a706c4c34a16891f84e7b', 'NORWILI', NULL, 'M.H.I.', 'Batola', '1970-02-08', 'P', '6271034802700005', NULL, 'JL. RTA. Milono Km. 4.5 \r\nBangas Permai, JL. Sepakat III No. 62. Palangka Raya', '081349196750', 'noorwili@yahoo.com', '2008027001', 'Penata Tingkat I (III/d)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197004082005011004', '827ccb0eea8a706c4c34a16891f84e7b', 'SAPUADI', NULL, 'M.Pd.', 'Seruyan', '2013-09-03', 'L', NULL, NULL, 'Jl. Garuda Palangka Raya', '081320207099', '', NULL, 'Penata (III/c)', '', NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('197004251997032003', '827ccb0eea8a706c4c34a16891f84e7b', 'HAMIDAH', 'Hj.', 'M.A.', 'Palangka  Raya', '1970-04-25', 'P', '6271016504700004', NULL, '', '081251675748', 'emailhamidah@gmail.com', '2025047002', 'Penata Tingkat I (III/d)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197005032001121002', '827ccb0eea8a706c4c34a16891f84e7b', 'SYARIFUDDIN', 'Dr.', 'M.Ag.', 'Banjar', '1970-05-03', 'L', '6302060305700004', '15.099.893.8-711-000', '', '085242913884', 'syarif.adi@gmail.com', '2003057002', 'Penata Tingkat I (III/d)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197007252003121001', '827ccb0eea8a706c4c34a16891f84e7b', 'ALI ISKANDAR Z.', NULL, 'M.Pd.', 'Pangkalan Bun', '1970-07-25', 'L', '6271032507700003', '14.819.681.9-711.000', 'Jl. Biduri Blok A No. 26 Palangka Raya', '081221230970, 0811529923', 'andaiiskandar@yahoo.co.id', '2025077001', 'Penata Tingkat I (III/d)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197008102002121002', '827ccb0eea8a706c4c34a16891f84e7b', 'LAILANI', NULL, 'S.Ag.', 'Tamiang Layang', '1970-08-10', 'L', NULL, NULL, 'Jl. Bawang Putih KPR Plk. Permai Palangka Raya', '081352781209', '', NULL, 'Penata (III/c)', NULL, NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('197103021998031004', '827ccb0eea8a706c4c34a16891f84e7b', 'AJAHARI', NULL, 'M.Ag.', 'Nihan hulu', '1971-03-02', 'L', '6271030203710004', NULL, '', '081349154270', 'ajaharim@yahoo.co.id', '2002037101', 'Pembina (IV/a)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197103171998032002', '827ccb0eea8a706c4c34a16891f84e7b', 'YULIANI KHALFIAH', NULL, 'M.Pd.I.', 'Wasah Hilir', '1971-03-17', 'P', '6271035703710002', '68.809.805.2-711.000', '', '08521789810, 085251789810', 'yuliani@gmail.com', '2017037101', 'Penata (III/c)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197103272005011005', '827ccb0eea8a706c4c34a16891f84e7b', 'SUGIANTO', NULL, 'S.E.', '', '1971-03-27', 'L', NULL, '', NULL, '081352737729', '', '', 'Penata Muda Tingkat I (III/b)', '', NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('197105242000031003', '827ccb0eea8a706c4c34a16891f84e7b', 'MUHAMMAD', 'Prof. Dr.', 'M.Ag.', 'Kaboro', '1971-05-24', 'L', '6271032405710006', '14.518.414.9-711.000', 'Jl. Garuda IV No. 56\r\nPalangka Raya', '081334400426', 'abiulil@yahoo.com', '2024057101', 'Pembina Tingkat I (IV/b)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197109142003122001', '827ccb0eea8a706c4c34a16891f84e7b', 'TRIWID SYAFAROTUNNAJAH', NULL, 'M.Pd.', 'Lampung', '1971-09-14', 'P', '129', NULL, 'Jln. Meranti IV Penarung Palangka Raya Kalimantan Tengah', '081349684189', 'triwid.sn@gmail.com', '2014097101', 'Penata Tingkat I (III/d)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197109192000031004', '827ccb0eea8a706c4c34a16891f84e7b', 'USMAN', NULL, 'S.S., M.H.I.', 'Nagara', '1970-03-01', 'L', NULL, NULL, 'jl. Yakut 2 Palangka Raya', '08125095389', 'fatih_usman@yahoo.co.id', NULL, 'Penata Tingkat I (III/d)', '', NULL, NULL, NULL, 3, 1, 'admin:2016-03-19 21:11:54'),
('197111071999031005', '827ccb0eea8a706c4c34a16891f84e7b', 'SYAIKHU', 'H.', 'M.H.I.', 'Amuntai', '1971-11-07', 'L', '6271030711710002', '69.249.589.5-711.000', 'g.obos 12 jl.Widuri II no 10', '081351739299', 'haikalsyaikhu@yahoo.co.id', '2007117101', 'Pembina (IV/a)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197204042000031005', '827ccb0eea8a706c4c34a16891f84e7b', 'IMAM QALYUBI', 'Dr.', 'M.Hum.', 'Probolinggo', '1972-04-04', 'L', '6271030404720008', '15.050.675.6-711.000', 'Palangka Raya', '085228056747', 'imamqalyubi@yahoo.com', '1104047201', 'Penata Muda Tingkat I (III/b)', 'Dosen', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197204082001121001', '827ccb0eea8a706c4c34a16891f84e7b', 'IWAN FAUZI', NULL, 'M.A.', 'Tanah Merah', '1972-04-08', 'L', NULL, NULL, 'Jalan G. Obos VIII no. 4\r\nPalangkaraya', '0811 52 14 52', 'iwanfauzi09@yahoo.com', NULL, 'Penata Tingkat I (III/d)', 'Dosen pada Prog. Studi Pend. Bahasa Inggris\r\nFakultas Keguruan dan Ilmu Pendidikan\r\nUniversitas Palangka Raya', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197204211998031002', '827ccb0eea8a706c4c34a16891f84e7b', 'AKHMAD DASUKI', 'H.', 'Lc., M.A.', 'Amuntai', '1972-04-21', 'L', '6271012104720001', '147449250711000', 'Jl. Ramin 2 Gg. Randu No. 26 Palangka Raya', '085390831255', 'ahmaddasuki30@yahoo.co.id', '2021047202', 'Penata Tingkat I (III/d)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197205021999032004', '827ccb0eea8a706c4c34a16891f84e7b', 'MUSLIMAH', 'Dr. Hj.', 'M.Pd.I.', 'Kuala Jelai', '1972-05-02', 'P', NULL, '68.322.911.6.713.000', NULL, '081349023285', 'muslimah.abdulazis@iain-palangkaraya.ac.id', '', 'Pembina (IV/a)', '', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197206261994031002', '827ccb0eea8a706c4c34a16891f84e7b', 'WAWAN SATIJAWAN', NULL, NULL, 'Jakarta', '1972-06-26', 'L', NULL, NULL, 'Jl. Sapan X No. B/3 Palangka Raya', '081911000073', '', NULL, 'Penata Muda Tingkat I (III/b)', NULL, NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('197207071999031006', '827ccb0eea8a706c4c34a16891f84e7b', 'AHMAD NAWAWI', 'H.', 'M.Ag.', 'Palangka Raya', '1972-07-07', 'L', '6271010707720004', '35.110.325.4-412.000', '', '081294740481, 081319831098', 'ahmad_nw92@yahoo.com', '2007077202', 'Penata Tingkat I (III/d)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197207081999031003', '827ccb0eea8a706c4c34a16891f84e7b', 'ELVI SOERADJI', 'Dr.', 'M.H.I.', 'Palangka Raya', '1972-07-08', 'L', '6271030807720002', NULL, '', '081251018411', 'elvisoeradji@gmail.com', '2008077201', 'Penata (III/c)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197208142000031003', '827ccb0eea8a706c4c34a16891f84e7b', 'HARTANI', NULL, 'M.Si.', 'Babirik', '2013-08-01', 'L', NULL, NULL, '', '081349713643', 'hartani@kemenag.go.id', NULL, 'Pembina (IV/a)', 'Kepala Bagian AUAK', NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('197209291998032002', '827ccb0eea8a706c4c34a16891f84e7b', 'SRI HIDAYATI', NULL, 'M.A.', 'Banjarmasin', '1972-09-29', 'P', '474.4.138/1643/0', '68.809.810.2-711.000', 'Jl. Keruing No. 75 Palangka Raya', '082149050572', 'sasasrihidayati@yahoo.co.id', '2029097201', 'Penata (III/c)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197210102003121006', '827ccb0eea8a706c4c34a16891f84e7b', 'AHMADI', NULL, 'M.S.I.', 'PALANGKA RAYA', '2011-07-29', 'L', '6271031010720008', NULL, '', '085249016467', 'ahmadi.madi@gmail.com', '2010107202', 'Penata Tingkat I (III/d)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197211232000031002', '827ccb0eea8a706c4c34a16891f84e7b', 'GITO SUPRIADI', NULL, 'M.Pd.', 'Ponorogo', '1972-11-23', 'L', '60', '145184883711000', 'Jl. G. Obos IX Perumahan Caritha Permai No. 1 Palangka Raya', '085345676051', 'gitosupriadi72@gmail.om', '2023117202', 'Pembina (IV/a)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197301221998032001', '827ccb0eea8a706c4c34a16891f84e7b', 'MARIAH KIBTIYAH', NULL, 'M.Si.', 'Kotim', '1973-01-22', 'P', '6271016201730003', '14.744.828.6-711.000', '', '08125143446, 081251434464', 'qibtyakiko@gmail.com', '2022017301', 'Penata Tingkat I (III/d)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197302072000032001', '827ccb0eea8a706c4c34a16891f84e7b', 'MARDIATI', NULL, 'S.E.', 'Lampung Tengah', '1973-02-07', 'P', NULL, NULL, NULL, '081369498861', '', '', 'Penata (III/c)', 'Pengelola Administrasi Kemahasiswaan', NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('197306011999032005', '827ccb0eea8a706c4c34a16891f84e7b', 'ZAINAP HARTATI', 'Dr. Hj.', 'M.Ag.', 'Tanjung', '1973-06-01', 'P', '6271034106730005', '143278778711001', '', '081345521235, 0811521059', 'hartatizainap@yahoo.co.id', '2001067304', 'Pembina (IV/a)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197310182009011006', '827ccb0eea8a706c4c34a16891f84e7b', 'AKHMAD RIADY', NULL, 'S.Sos.', NULL, '1973-10-18', 'L', NULL, NULL, NULL, '081250843945', '', NULL, 'Penata Muda Tingkat I (III/b)', NULL, NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('197311272005011003', '827ccb0eea8a706c4c34a16891f84e7b', 'TAUFIK WARMAN M.', NULL, 'M.Th.I.', 'Kanang', '1973-11-27', 'L', '62.71/179/03.02/', '15.374.470.1-711.000', '', '085390390334', 'taufik@gmail.com', '2027107302', 'Penata (III/c)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197312151999031003', '827ccb0eea8a706c4c34a16891f84e7b', 'ASEP M. IQBAL', NULL, 'M.A.', 'Sukabumi', '1973-12-15', 'L', '32.02.18.151273.', NULL, '', '', 'x@yahoo.com', '2015127302', 'Penata (III/c)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197402011999031002', '827ccb0eea8a706c4c34a16891f84e7b', 'ALI SADIKIN', NULL, 'M.Si.', 'Muara Teweh', '2011-08-14', 'L', '474.4.138/14312/', '19976513133141451', '', '085252929459', 'alisadikin2015@gmail.com', '2001027401', 'Penata Tingkat I (III/d)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197403031998032001', '827ccb0eea8a706c4c34a16891f84e7b', 'PUSPITA', 'Hj.', 'S.Sos., M.Si.', NULL, '1974-03-03', 'P', NULL, NULL, NULL, '081349232989', '', NULL, 'Penata (III/c)', NULL, NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('197404232001121002', '827ccb0eea8a706c4c34a16891f84e7b', 'M. ALI SIBRAM MALISI', 'Dr.', 'M.Ag.', 'Hulu Sungai Selatan', '1974-04-23', 'L', '6271012304740004', '14.819.972.2-711.000', '', '085252951989, 085387825482', 'admin@stainpalangkaraya.ac.id', '2023047401', 'Penata (III/c)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197405141999032004', '827ccb0eea8a706c4c34a16891f84e7b', 'RAYATI', NULL, 'S.Kom., M.M.', 'Palangka Raya', '1974-05-14', 'P', NULL, NULL, 'Komplek Bangas Permai Palangka Raya', '085350222227', '', NULL, 'Penata Tingkat I (III/d)', '', NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('197405211999032003', '827ccb0eea8a706c4c34a16891f84e7b', 'RITA SUKAESIH', NULL, 'S.Pd., M.Si.', 'Lampeong', '1974-05-21', 'P', NULL, NULL, 'Jl. Bandeng V Gg. 5 No. 08 Palangkaraya', '081349214343', 'ritasukaesih@yahoo.com', NULL, '', '', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197409142000031002', '827ccb0eea8a706c4c34a16891f84e7b', 'RAHMAD RIYADI', NULL, NULL, NULL, '1974-09-14', 'L', NULL, NULL, NULL, '081349017346, 085754833959', '', NULL, 'Pengatur Tingkat I (II/d)', NULL, NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('197412122002121004', '827ccb0eea8a706c4c34a16891f84e7b', 'SUPRIYADI', NULL, NULL, NULL, '1974-12-12', 'L', NULL, NULL, NULL, '081352797578, 081953349772', '', NULL, 'Pengatur (II/c)', NULL, NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('197501012005012010', '827ccb0eea8a706c4c34a16891f84e7b', 'MARSIAH', NULL, 'M.A.', 'Sekapung', '1975-01-01', 'P', '6261044101750002', '15.099.840.9-711.001', '', '085753591079, 08125166880', 'marsiahfachri79@gmail.com', '2001017502', 'Penata Tingkat I (III/d)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197501091999031002', '827ccb0eea8a706c4c34a16891f84e7b', 'IBNU ELMI A.S. PELU', 'Dr.', 'S.H., M.H.', 'Buntok', '1975-01-09', 'L', '6271030901750002', NULL, 'Jl. Zamrud II No. 430 KPR Palangka Permai Palangka Raya, Kalimantan Tengah', '085249752531, 082151901547', 'ibnu_borneo@yahoo.com', '2009017502', 'Pembina (IV/a)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197505032006041010', '827ccb0eea8a706c4c34a16891f84e7b', 'ALI MURTADHO', NULL, 'S.Ag., M.H.', 'Semarang', '1975-05-03', 'L', '6105010305750004', '67.518.560.7-706.000', 'George Obos XII GG. Zamrut I No.22', '085387546377', 'alimurtadhoemzaed@gmail.com', '2003057503', 'Penata (III/c)', NULL, NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('197506202003121003', '827ccb0eea8a706c4c34a16891f84e7b', 'M. ZAINAL ARIFIN', NULL, 'M.Hum.', 'Banjarmasin', '2011-07-29', 'L', '81', NULL, '', '085651387908', 'zainal_arifin@gmail.com', '2020067501', 'Penata Tingkat I (III/d)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197507072002121004', '827ccb0eea8a706c4c34a16891f84e7b', 'SIMINTO', NULL, 'M.Hum.', 'Karang Caya', '1975-07-07', 'L', '3372040707750024', '14.327.839.8-711.000', 'Alamat 1: Jl. Sadewa I No. 14 Mapagan Ungaran Barat Kab. Semarang Jawa Tengah\r\nAlamat 2: Jl. Mutiara III No. 502 Kompleks Palangka Permai G. Obos XII Kel. Menteng Kecamatan Jekan Raya Kota Palangka Raya', '081250961795', 'simintohs2015@gmail.com', '2007077506', 'Pembina Tingkat I (IV/b)', 'Lektor Kepala/Sekprodi MPI', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197507132003122002', '827ccb0eea8a706c4c34a16891f84e7b', 'MULHIMAH', NULL, 'M.Pd.I.', 'Banjarmasin', '2011-08-08', 'P', NULL, '12345676', 'Jl. Menteng XXV Blok. E No. 42 Palangka Raya 73112', '081349044690', 'mulhimah@gmail.com', '123456', 'Penata (III/c)', '', NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('197507172005012006', '827ccb0eea8a706c4c34a16891f84e7b', 'EMAWATI', 'Dr.', 'M.Ag.', 'Palangka Raya', '1975-07-17', 'P', '6271035707750005', '146885264711000', 'Jl. Yos Sudarso XII No. 15 B Palangka Raya', '081349268773', 'emasetyo@yahoo.com', '2017077501', 'Penata Tingkat I (III/d)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197508182000032003', '827ccb0eea8a706c4c34a16891f84e7b', 'ASMAWATI', NULL, 'M.Pd.', 'Jangkang Baru', '2011-08-14', 'P', '6271035805740005', '14.482.155.0-711.000', '', '081352798890', 'asmawati1688@gmail.com', '2018087502', 'Penata Tingkat I (III/d)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197508282005012007', '827ccb0eea8a706c4c34a16891f84e7b', 'ATI ASIE', NULL, 'S.E.', 'Palangka Raya', '1975-08-28', 'P', NULL, NULL, NULL, '081352841228', '', NULL, 'Penata (III/c)', 'Penyusun Administrasi Akademik', NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('197509112003121003', '827ccb0eea8a706c4c34a16891f84e7b', 'NANANG HAMDANI', NULL, 'S.Ag.', 'Kotim', '1975-09-11', 'L', NULL, NULL, 'Jl. Biduri II No.A/22 RT.09 RW.VI Kel. Menteng Kec. Jekan Raya, Palangka Raya, Kalimantan Tengah, 73111', '081349139830, 081350542404', 'alfandar75@yahoo.com', NULL, 'Penata (III/c)', 'Kepala Bagian Akademik dan Kemahasiswaan', NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('197509152009121002', '827ccb0eea8a706c4c34a16891f84e7b', 'M. ZAINI MIFTAH', NULL, 'M.Pd.', 'Lamongan', '1975-09-15', 'L', '6271031509750006', '34.750.569.5711.000', 'Jl. G. Obos V Gang Sejahtera Perum BTN Kav. No. 4 Palangka Raya', '081230089794', 'miftahmzaini@gmail.com', '2015097501', 'Penata Tingkat I (III/d)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197601122000031001', '827ccb0eea8a706c4c34a16891f84e7b', 'FADLI RAHMAN', NULL, 'M.Ag.', 'Kandangan', '1976-01-12', 'L', '6271011201760003', '68.809.807.8.711.000', '', '08125156056', 'fadli120176@gmail.com', '2012017601', 'Pembina Tingkat I (IV/b)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197608072000031004', '827ccb0eea8a706c4c34a16891f84e7b', 'ABDUL AZIS', NULL, 'M.Pd.', 'Baru', '1976-08-07', 'L', '6271030708760008', NULL, 'Jln. G. Obos IX No. 53 Palangka Raya', '085249303208, 085248530020', 'az.trihidayati@yahoo.com', '2007087602', 'Pembina (IV/a)', '1. Sekretaris P3M (2009 - 2010)\r\n2. Kepala Puskom (2010 - 2012)\r\n3. Sekretaris LP2M (2013 - sekarang)', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197608172006042009', '827ccb0eea8a706c4c34a16891f84e7b', 'SITI SYAROFAH', NULL, 'S.Ag.', '', '2011-08-08', 'P', NULL, NULL, '', '', '', NULL, '', '', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197612112003121002', '827ccb0eea8a706c4c34a16891f84e7b', 'SAIFUL LUTFI', NULL, 'S.Pd.I.', 'Kapuas', '1976-12-11', 'L', NULL, '885629329711000', 'Jl. G. Obos (Samping PWNU Kalteng)', '085249481809', 'saifullut76@yahoo.com', '', 'Penata Muda Tingkat I (III/b)', '', NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('197701202003121005', '827ccb0eea8a706c4c34a16891f84e7b', 'HAMDINOR', NULL, 'S.Sos.', 'Harusan', '1977-01-20', 'L', NULL, NULL, NULL, '081251968818', '', NULL, 'Penata Muda Tingkat I (III/b)', 'Pengelola Layanan Akademik', NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('197701212009121002', '827ccb0eea8a706c4c34a16891f84e7b', 'YUNU SUDARTO', NULL, 'S.Ag.', NULL, '1977-01-21', 'L', NULL, NULL, NULL, '081349641252', '', NULL, 'Penata Muda (III/a)', NULL, NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('197701272003122004', '827ccb0eea8a706c4c34a16891f84e7b', 'MILA', NULL, 'M.Pd.', 'Buntok', '1977-01-27', 'P', '6271016701770002', NULL, 'Jl. Christopel Mihing No.83 Palangka Raya', '0811529989', 'mila27.iain@gmail.com', '2027017703', 'Penata (III/c)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197704132003121003', '827ccb0eea8a706c4c34a16891f84e7b', 'ABDUL HELIM', NULL, 'M.Ag.', 'Magantis', '1977-04-13', 'L', '6271011130477000', '14.437.729.8-711.000', 'Jl. Meranti Gg. Istiqamah No. 27 (Komplek Babussalam) RT. 02 RW. VI Kel. Panarung Kec. Pahandut Kota Palangka Raya.\r\n', '081349150759', 'abdulhelim@yahoo.com', '2013047702', 'Pembina (IV/a)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197709172005011011', '827ccb0eea8a706c4c34a16891f84e7b', 'MIFTAHUDDIN', NULL, 'S.T.', NULL, '1977-09-17', 'L', NULL, NULL, NULL, '08125152827', '', NULL, 'Penata Muda Tingkat I (III/b)', NULL, NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('197710042003121003', '827ccb0eea8a706c4c34a16891f84e7b', 'AKHMAD KARTAPATI', NULL, 'M.A.P.', NULL, '1977-10-04', 'L', NULL, NULL, NULL, '081349163014', '', NULL, 'Penata (III/c)', NULL, NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('197712062003122004', '827ccb0eea8a706c4c34a16891f84e7b', 'NOOR HUJJATUSNAINI', NULL, 'M.Pd.', 'Kabupaten Seruyan', '1977-12-06', 'P', '6271034612770005', '14.278.904.9-711.000', '', '081528825539, 085787472343, 081251136304', 'noor.hujjatusnaini@gmail.com', '2006127701', 'Penata Tingkat I (III/d)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197712132003122003', '827ccb0eea8a706c4c34a16891f84e7b', 'DESI ERAWATI', 'Dr.', 'M.Ag.', 'Palangkaraya', '1977-12-13', 'P', '6271015312770002', '14.819.836.9-711.000', 'Komp. Pondok Pesantren Hidayatul Insan Jl. Sulawesi No.52 Palangka Raya', '05363309850, 081352900327', 'desi_hana09@yahoo.com', '2013127702', 'Penata (III/c)', 'Dosen ', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197802042003122001', '827ccb0eea8a706c4c34a16891f84e7b', 'SANTIANI', NULL, 'M.Pd.', 'pangkalanbun', '1978-02-04', 'P', '6201024402780007', '15.831.544.0711000', '', '081349230530', 'santiani.stainpraya@gmail.com', '2004027801', 'Penata (III/c)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197804242005012005', '827ccb0eea8a706c4c34a16891f84e7b', 'ATIN SUPRIATIN', NULL, 'M.Pd.', 'Purwakarta', '1978-04-24', 'P', '6271036404780004', '15.099.898.7-711.000', 'Jl. G. Obos 23 No. 5 Palangka Raya, 73111', '085249041242', 'atinsupriatin78@yahoo.co.id', '2024047802', 'Penata Muda (III/a)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197806162006042001', '827ccb0eea8a706c4c34a16891f84e7b', 'FITRI DIANA WULANSARI', NULL, 'M.Sc.', 'Tegal', '1978-06-16', 'P', '6271015606780003', '14.482.933.0-711.000', '', '085228497976', 'fidi_wu@ymail.com', '2016067802', 'Penata (III/c)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197808082009012014', '827ccb0eea8a706c4c34a16891f84e7b', 'TUTI SUGIARTY', NULL, 'S.E.', NULL, '1978-08-08', 'P', NULL, NULL, NULL, '081528218816', '', NULL, 'Penata Muda (III/a)', NULL, NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('197808202009101001', '827ccb0eea8a706c4c34a16891f84e7b', 'ABDUL JAMIL', NULL, 'S.Pd.I.', '', '1978-08-20', 'L', NULL, '', NULL, '085390735920', '', '', 'Penata Muda (III/a)', '', NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('197811302003122002', '827ccb0eea8a706c4c34a16891f84e7b', 'SITI NARANI', NULL, 'M.Hum.', NULL, '1978-11-30', 'P', NULL, NULL, NULL, '081352753306, 085215668499', '', NULL, 'Penata Muda Tingkat I (III/b)', NULL, NULL, NULL, NULL, 3, 1, 'admin:2016-03-19 21:11:54'),
('197901182000121003', '827ccb0eea8a706c4c34a16891f84e7b', 'AKHMAD SUPRIYADI', NULL, 'M.Si.', 'Muara Teweh', '2011-08-11', 'L', '6271031801790002', NULL, '', '085249177678, 0852491776678', 'ahmad_supriadi@yahoo.com', '2018017901', 'Penata (III/c)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197902242006041002', '827ccb0eea8a706c4c34a16891f84e7b', 'HAKIM SYAH', NULL, 'M.A.', 'Kebumen (Jawa Tengah)', '1979-02-24', 'L', '6271032402790001', NULL, 'Jln. Raden Saleh III No. 3 Palangka Raya', '081352918773', 'syah.hakim@yahoo.com', '2024027901', 'Penata Muda Tingkat I (III/b)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197909012003122002', '827ccb0eea8a706c4c34a16891f84e7b', 'JUMRODAH', NULL, 'M.Pd.', 'Semboro', '1979-09-01', 'P', '76', '15.5.046.3-711.000', '', '085222976725', 'jum_rodah@yahoo.co.id', '2001097901', 'Penata (III/c)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('197909172006041003', '827ccb0eea8a706c4c34a16891f84e7b', 'EKA SURIANSYAH', NULL, 'M.S.I.', 'Palangka Raya', '1979-09-17', 'L', '6271031709790003', NULL, 'Jl. Merica No. 2 G. Obos IX', '081349295856, 085752734020', 'eksasmart@gmail.com', '2017097901', 'Penata (III/c)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('198003072006042004', '827ccb0eea8a706c4c34a16891f84e7b', 'NURUL WAHDAH', NULL, 'M.Pd.', 'Pelaihari', '1980-03-07', 'P', '6271034703800005', '14.744.611.6-711.001', 'Jl.G.Obos XV B no. 9 B', '087817915529, 085251945359', 'nurulwahdah@gmail.com', '2007038001', 'Penata Tingkat I (III/d)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('198003282009041004', '827ccb0eea8a706c4c34a16891f84e7b', 'MUHAMMAD IKHSAN', NULL, 'M.S.I.', 'Buntok', '1980-03-28', 'L', NULL, NULL, '', '', 'muhammad.ikhsan@gmail.com', NULL, 'Penata (III/c)', '', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('198007142009012008', '827ccb0eea8a706c4c34a16891f84e7b', 'RUSDAH', NULL, 'S.Sos.', NULL, '1980-07-14', 'P', NULL, NULL, NULL, '085249901777', '', NULL, 'Penata Muda Tingkat I (III/b)', NULL, NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('198008142002122002', '827ccb0eea8a706c4c34a16891f84e7b', 'TRI HIDAYATI', NULL, 'M.H.I.', 'kapuas murung', '1980-08-14', 'P', '6271035408800010', '68.809.815.1-711.000', 'Jalan G. Obos 9 No. 53 palangka raya', '085251018968', 'trihidayati55@gmail.com, tri.hidayati@iain-palangkaraya.ac.id', '2014088002', 'Penata (III/c)', NULL, NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('198008232011011005', '827ccb0eea8a706c4c34a16891f84e7b', 'LUQMAN BAEHAQI', NULL, 'S.S., M.Pd.', 'Tulungagung, Jawa Timur', '1980-08-23', 'L', '6271032308800003', '158316612711000', 'Jl. Cilik Riwut KM.4,5 No.89 Palangka Raya 73112', '081349084438', 'luqmanbae@gmail.com', '2023088001', 'Penata (III/c)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('198009082006042002', '827ccb0eea8a706c4c34a16891f84e7b', 'MUCHTI NURHIDAYA', NULL, 'S.Hum.', NULL, '1980-09-08', 'P', NULL, NULL, NULL, '082158600425', '', NULL, 'Penata Muda (III/a)', NULL, NULL, NULL, NULL, 3, 1, 'admin:2016-03-19 21:11:54'),
('198011052009011013', '827ccb0eea8a706c4c34a16891f84e7b', 'ABDI SOESANTO', NULL, 'S.E.', 'Palangka Raya', '1980-11-05', 'L', NULL, '', NULL, '087817586220, 085249819880', '', '', 'Penata Muda Tingkat I (III/b)', '', NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('198012052006042003', '827ccb0eea8a706c4c34a16891f84e7b', 'SANTI ERLIANA', NULL, 'M.Pd.', 'Palangka Raya', '1980-12-05', 'P', '107', '14.576.988.1-711.001', 'Jl. Gurame Ic no. 4 Palangka raya', '08125153297', 'santierliana@yahoo.com', '2005128002', 'Penata Tingkat I (III/d)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('198101182008012013', '827ccb0eea8a706c4c34a16891f84e7b', 'APNI RANTI', 'Hj.', 'M.Hum.', 'Palangka Raya', '1981-01-18', 'P', '6271015801810004', '14.576.903.0-711.000', '', '085234255509', 'apniranti@yahoo.com', '2018018101', 'Penata Tingkat I (III/d)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('198101272009012006', '827ccb0eea8a706c4c34a16891f84e7b', 'NAHDHIYAH', NULL, 'S.S., M.Pd.', 'Ujung Pandang', '2011-08-16', 'P', NULL, '', '', '081342420885', '', '2027018101', 'Penata (III/c)', '', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('198103082006041005', '827ccb0eea8a706c4c34a16891f84e7b', 'SUHARTONO', NULL, 'M.Pd.Si.', 'PALANGKARAYA', '1981-03-05', 'L', '62710305810001', '14.576.961.8-711.000', 'JAL. KRAKATAU NO.559 D', '081349182359', 'suhartono_plk@yahoo.com', '2005038101', 'Penata Muda Tingkat I (III/b)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('198103112011011007', '827ccb0eea8a706c4c34a16891f84e7b', 'ABDUL RAHMAN', NULL, 'S.E.', NULL, '1981-03-11', 'L', NULL, NULL, NULL, '081349116977', '', NULL, 'Penata Muda (III/a)', NULL, NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('198103232011012007', '827ccb0eea8a706c4c34a16891f84e7b', 'SRI ENDAH MARTININGSIH', NULL, 'S.E.I.', NULL, '1981-03-23', 'P', NULL, NULL, NULL, '081352931300', '', NULL, 'Penata Muda (III/a)', NULL, NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('198105032009011011', '827ccb0eea8a706c4c34a16891f84e7b', 'M. NURUDDIN UTOMO', NULL, 'S.Kom.', 'Bandung', '1981-05-03', 'L', NULL, NULL, 'Jl. Samudin Aman No.12', '05363397033, 082156611699', 'utomo@stainpalangkaraya.ac.id', NULL, 'Penata Muda Tingkat I (III/b)', '', NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('198106122005011002', '827ccb0eea8a706c4c34a16891f84e7b', 'AHMAD FAUZAN', NULL, 'M.Pd.', 'PANGKALAN BUN', '1981-06-12', 'L', NULL, '15.099.996.9-711.000', '', '', 'fauzanakhmad@yahoo.com', '0012068103', 'Penata Tingkat I (III/d)', '', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('198204032015032001', '827ccb0eea8a706c4c34a16891f84e7b', 'MUZALIFAH', NULL, 'S.Pd.I., M.S.I.', 'Buluh Enggadang', '1982-04-03', 'P', '6101044304820009', '71.508.402.6-702.000', 'Jln. G.Obos IX komplek Islamic Centre', '0812 5605 3574', 'kmuzalifah@ymail.com', '2103048201', 'Penata Muda Tingkat I (III/b)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('198206202009012014', '827ccb0eea8a706c4c34a16891f84e7b', 'YUNIARTI', NULL, 'S.E.', NULL, '1982-06-20', 'P', NULL, NULL, NULL, '085249191959', '', NULL, 'Penata Muda Tingkat I (III/b)', NULL, NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('198207072006041003', '827ccb0eea8a706c4c34a16891f84e7b', 'AHMAD DAKHOIR', 'Dr.', 'M.H.I.', 'Terusan Tengah', '1982-07-07', 'L', '6271101070782001', '14.744.897.1-711.000', 'Jl. Menteng X - A, Komplek Perumahan Bangun Graha No. 11, RT. 03, RW. VII, Kelurahan Menteng, Kecamatan Jekan Raya, Kota Palangka Raya, Provinsi Kalimantan Tengah. Kode Pos 73111.  ', '081230665255', 'ahmaddakhoirshi@yahoo.com', '2007078201', 'Penata (III/c)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('198210032005011001', '827ccb0eea8a706c4c34a16891f84e7b', 'ALFIAN MAHFUDZ', NULL, 'A.Md.', NULL, '1982-10-03', 'L', NULL, NULL, NULL, '085391855647', '', NULL, 'Penata Muda (III/a)', NULL, NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('198301242009122002', '827ccb0eea8a706c4c34a16891f84e7b', 'JELITA', NULL, 'S.H.I., M.S.I.', 'Banjarmasin', '1983-01-24', 'P', '6371026401830004', NULL, 'Jl. Yos Sudarso XIII Blok B No. 6 Palangka Raya', '081349715616', 'mutiaramuslimah@yahoo.com', '2024018301', 'Penata (III/c)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('198307062009121004', '827ccb0eea8a706c4c34a16891f84e7b', 'ARIF ROMADHONI H.', NULL, 'S.Si.', '', '2011-08-08', 'L', NULL, '', '', '081250878697', '', '', 'Penata Muda Tingkat I (III/b)', '', NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('198308142005011003', '827ccb0eea8a706c4c34a16891f84e7b', 'HAIRIL HAMBRANI', NULL, 'S.Pd.I.', 'Kandangan, HSS', '1983-08-14', 'L', NULL, NULL, 'Jl. Zamrud III No. 682 Kel. Menteng Kec. Jekan Raya Kota Palangka Raya, Kalimantan Tengah', '085245410123', 'hairilhb@gmail.com', NULL, 'Penata Muda (III/a)', NULL, NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('198308192015031001', '827ccb0eea8a706c4c34a16891f84e7b', 'ARIS SUGIANTO', NULL, 'M.Pd.', 'Tanjung Jariangau', '1983-08-19', 'L', '6271031908830008', '73.335.038.3-711.000', 'Jl. G. Obos XIV', '082154409206', 'aris.sugianto@iain-palangkaraya.ac.id', '2019088301', 'Penata Muda Tingkat I (III/b)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('198308232015031004', '827ccb0eea8a706c4c34a16891f84e7b', 'YATIN MULYONO', NULL, NULL, 'PEKALONGAN', '1983-08-23', 'L', '3326112308830021', '71.383.537.9-502.000', '', '', 'mulyono.yatin@iain-palangkaraya.ac.id', '2023088301', 'Penata Muda Tingkat I (III/b)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('198403212011011012', '827ccb0eea8a706c4c34a16891f84e7b', 'ENRIKO TEDJA SUKMANA', NULL, 'S.Th.I., M.S.I.', 'Palangka Raya', '1984-03-21', 'L', '6271032103840008', NULL, 'Jl. Cut Nyak Dien No.22 Palangka Raya', '087821014829', 'enriko.tedja@gmail.com', '2021038401', 'Penata (III/c)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('198405192015032003', '827ccb0eea8a706c4c34a16891f84e7b', 'ZAITUN QOMARIAH', NULL, NULL, 'Palangka Raya', '1984-05-19', 'P', '6271035905840001', '733351035711000', 'Jl. PAUS RAYA NO.R.20\r\nRT/RW 012/009\r\nKel/Desa Bukit Tunggal\r\nKecamatan Jekan Raya\r\n', '0823 5050 9111', 'zaitunqamariah@yahoo.com', '2019058404', 'Penata Muda Tingkat I (III/b)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('198406222015031003', '827ccb0eea8a706c4c34a16891f84e7b', 'AKHMAD ALI MIRZA', NULL, 'M.Pd.', 'Surabaya', '1984-06-22', 'L', '6271032206840001', '733619472711000', 'Jl. G. Obos No. 144 Palangka Raya', '085249118590', 'akhmad.ali.mirza@iain-palangkaraya.ac.id, shaider_chinix@yahoo.co.id', '2022068401', 'Penata Muda Tingkat I (III/b)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('198410292009012005', '827ccb0eea8a706c4c34a16891f84e7b', 'DWI PUTRI M.K.', NULL, 'S.I.P.', NULL, '1984-10-29', 'P', NULL, NULL, NULL, '0878177562, 087817756226', '', NULL, 'Penata Muda Tingkat I (III/b)', NULL, NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('198411112011012012', '827ccb0eea8a706c4c34a16891f84e7b', 'SRI FATMAWATI', NULL, 'M.Pd.', 'Tumbang Samba', '1984-11-11', 'P', NULL, '16.086.22712-711.000', 'Jl. Siam No. 13 Palangka Raya (g.Obos XII)', '085249002728, 08524900272', 'srifatmawati84@yahoo.co.id', '2011008401', 'Penata (III/c)', '', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('198501012015031004', '827ccb0eea8a706c4c34a16891f84e7b', 'MUHAMMAD NASIR', NULL, 'S.Pd., M.Pd.', 'Lombok Timur', '1985-01-01', 'L', '5203090101850009', '732800149915000', 'Keling', '081917392240', 'achink42@yahoo.com', '2001018501', 'Penata Muda Tingkat I (III/b)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('198505082011011007', '827ccb0eea8a706c4c34a16891f84e7b', 'JUNAIDI', NULL, 'M.H.I.', 'Palangka Raya', '1985-05-08', 'L', NULL, '16.119.226.5-711.000', '', '', 'junaidisyariahstain@gmail.com', '-', 'Penata Muda Tingkat I (III/b)', '', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('198506062011011016', '827ccb0eea8a706c4c34a16891f84e7b', 'MUKHLIS ROHMADI', 'H.', 'M.Pd.', 'Boyolali', '1985-06-06', 'L', '3309050606859004', NULL, 'Jl. Tmg. Jayakarti No. 43 Palangka Raya', '05363277446, 081393946200', 'mukhlis.rohmadi@stainpalangkaraya.ac.id', '2006068501', 'Penata (III/c)', 'Kepala Unit Teknologi Informasi dan Pangkalan Data', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('198509032011012014', '827ccb0eea8a706c4c34a16891f84e7b', 'NURUL SEPTIANA', NULL, 'M.Pd.', 'Bantul', '1985-09-03', 'P', '3309054309859007', NULL, 'Jl. T. Jayakarti No. 43', '05366010022, 081567891646', 'mbak.septi@gmail.com', '2003098501', 'Penata (III/c)', 'Dosen', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('198511152015032002', '827ccb0eea8a706c4c34a16891f84e7b', 'LUVIA RANGGI RASTITI', NULL, 'S.Si., M.Pd.', 'Palangkaraya', '1985-11-15', 'P', '6271035511850004', '73.364.520.4-711.000', 'Jl. W. Coendrad No A-117 Palangkaraya Kalimantan Tengah 73111', '085387685777', 'luviaranggi@gmail.com', '2015118502', NULL, NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('198605152016090522', '827ccb0eea8a706c4c34a16891f84e7b', 'MUZAKKI', NULL, 'M.Pd.', 'Lamongan', '1986-05-15', 'L', NULL, '', NULL, '085649957651', 'muzakki.iainpalangkaraya@gmail.com', '', NULL, '', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('198605212015032001', '827ccb0eea8a706c4c34a16891f84e7b', 'RIDHA NIRMALASARI', NULL, NULL, 'Jailolo', '1986-05-21', 'P', NULL, '733233282804000', 'Jl. Mannuruji Raya No. 48 Makassar, Sulawesi Selatan\r\nJl. G.Obos IX Palangka raya, Kalimantan Tengah', '081242878804', 'ridha.nirmalasari@gmail.com', '', '', '', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('198611032009012003', '827ccb0eea8a706c4c34a16891f84e7b', 'TIFFIANTI DIANNISSA', NULL, 'S.E.', NULL, '1986-11-03', 'P', NULL, NULL, NULL, '081952071418', '', NULL, 'Penata Muda Tingkat I (III/b)', NULL, NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('198702022015031002', '827ccb0eea8a706c4c34a16891f84e7b', 'ABDULLAH', NULL, 'S.Pd.I., M.Pd.I.', 'JEJANGKIT PASAR (Barito Kuala)', '1987-02-02', 'L', '6371020202870014', '546378845731000', 'Jalan G.Obos XII, masuk gang Jl. zambrud I Komplek Palangka Permai', '085348254590', 'abdullah@iain-palangkaraya.ac.id', '2002028702', 'Penata Muda Tingkat I (III/b)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('198705022015032005', '827ccb0eea8a706c4c34a16891f84e7b', 'NAJAMUDDIN', NULL, 'M.Pd.', 'Sragen', '1987-05-02', 'P', '6271034205870005', '733206650711000', 'Jl. Badak XVII Palangka Raya', '085229145498', 'ukhnik_syahidah@yahoo.com', '2002058701', NULL, NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('198705132006042001', '827ccb0eea8a706c4c34a16891f84e7b', 'RAHMAWATI', NULL, 'S.E.', NULL, '1987-05-13', 'P', NULL, NULL, NULL, '085252731187', '', NULL, 'Penata Muda (III/a)', NULL, NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54');
INSERT INTO `pegawai` (`nip`, `password`, `nama`, `gelar_depan`, `gelar_belakang`, `tempat_lahir`, `tanggal_lahir`, `gender`, `nik`, `npwp`, `alamat`, `telepon`, `email`, `nidn`, `pangkat`, `jabatan`, `unit_kerja`, `atasan`, `pimpinan`, `ketenagaan`, `aktivasi_akun`, `riwayat`) VALUES
('198706202016090622', '827ccb0eea8a706c4c34a16891f84e7b', 'YAYUK WHINDARI', NULL, NULL, 'Parenggean', '1987-06-20', 'P', NULL, '165231408712000', NULL, '082353187535', 'yayukwhindari4@gmail.com', '', NULL, '', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('198709282015032003', '827ccb0eea8a706c4c34a16891f84e7b', 'HESTY WIDIASTUTY', NULL, NULL, 'Palangka Raya', '1987-09-28', 'P', '6271016809870002', NULL, 'Jl. Karet No 15', '085249211234', 'hesty_widiastuty@yahoo.co.id', '2028098701', 'Penata Muda Tingkat I (III/b)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('198806172016092422', '827ccb0eea8a706c4c34a16891f84e7b', 'M. RIZA HAFIZI', NULL, 'M.Sc.', 'Banjarmasin', '1988-06-17', 'L', NULL, '', NULL, '085735111237', 'riza.hafizi@iain-palangkaraya.ac.id', '', NULL, '', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('198806232011012011', '827ccb0eea8a706c4c34a16891f84e7b', 'DWI SARI WIDYOWATY', NULL, 'S.Kom.', 'PALANGKA RAYA', '2011-08-20', 'P', NULL, '', 'Jl. Christopel Mihing Gg.Kedaung No.2', '081233005594', 'dwi_aisyalwa@yahoo.com', '', 'Penata Muda (III/a)', '-', NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('198808112011012013', '827ccb0eea8a706c4c34a16891f84e7b', 'SITI MARIAM', NULL, 'S.Sos.', NULL, '1988-08-11', 'P', NULL, NULL, NULL, '081250125255', '', NULL, 'Penata Muda (III/a)', 'JFU', NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('198810162011012010', '827ccb0eea8a706c4c34a16891f84e7b', 'MAULINA', NULL, 'S.T.', 'Palangka Raya', '1988-10-16', 'P', NULL, NULL, 'Jl. Manunggal II No. 89', '082148332101', '', NULL, 'Penata Muda (III/a)', 'Pengelola Administrasi Alumni', NULL, NULL, NULL, 2, 1, 'admin:2016-03-19 21:11:54'),
('198910102015032012', '827ccb0eea8a706c4c34a16891f84e7b', 'ITSLA YUNISVA AVIVA', NULL, 'M.E.Sy.', 'SRIPENDOWO', '1989-10-10', 'P', '6271035010890025', ' 733351324711000', 'G.Obos IX Jl. Yakut 1 No. 19 Kel. Menteng Kec. Jekan Raya, Palangkaraya, Kalimantan Tengah, 73112', '081957042050', 'itslayunisvaaviva@gmail.com', '2010108901', 'Penata Muda Tingkat I (III/b)', 'Dosen', NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('199001312015032006', '827ccb0eea8a706c4c34a16891f84e7b', 'AYATUSA`ADAH', NULL, NULL, 'ALABIO (HULU SUNGAI UTARA)', '1990-01-31', 'P', '6308037101900004', '66.863.063.5-735.00', 'Jl. Kauman No 36 RT 001 RW 001 Desa Pandulangan Alabio Kecamatan Sungai Pandan Kabupaten Hulu Sungai Utara Provinsi Kalimantan Selatan', '085249366169', 'ayatussaadah@iain-palangkaraya.ac.id', '2031019001', 'Penata Muda Tingkat I (III/b)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54'),
('199002172015032009', '827ccb0eea8a706c4c34a16891f84e7b', 'HADMA YULIANI', NULL, 'M.Pd.', 'Cempaka Mulia Barat', '1990-02-17', 'P', '6202025702900001', '73.364.653.3-711.000', 'Jl.Pinguin 9 No.401', '082323080909', 'Hadma.yuliani@iain-palangkaraya.ac.id', '2017029002', 'Penata Muda Tingkat I (III/b)', NULL, NULL, NULL, NULL, 1, 1, 'admin:2016-03-19 21:11:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `laporan_master`
--
ALTER TABLE `laporan_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laporan_realisasi`
--
ALTER TABLE `laporan_realisasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laporan_target`
--
ALTER TABLE `laporan_target`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`nip`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `laporan_master`
--
ALTER TABLE `laporan_master`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laporan_realisasi`
--
ALTER TABLE `laporan_realisasi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laporan_target`
--
ALTER TABLE `laporan_target`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
