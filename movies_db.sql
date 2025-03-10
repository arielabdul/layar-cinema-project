-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Mar 2025 pada 07.36
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
-- Database: `movies_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `username`, `email`, `password`) VALUES
(1, 'admin', 'admin@admin.com', '123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `movies`
--

CREATE TABLE `movies` (
  `id` int(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `url_poster` varchar(255) NOT NULL,
  `url_video` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `movies`
--

INSERT INTO `movies` (`id`, `slug`, `title`, `author`, `description`, `kategori`, `url_poster`, `url_video`) VALUES
(14, 'sonic-the-hedgehog-3-2024', 'SONIC THE HEDGEHOG 3 (2024)', 'Jeff Fowler', 'Sonic, Tails, dan Knuckles bersatu kembali untuk menghadapi musuh misterius bernama Shadow, yang memiliki kekuatan luar biasa dan motif balas dendam. Shadow, seekor landak alien, dibebaskan dari fasilitas penelitian G.U.N. dan berusaha menghancurkan markas besar G.U.N. di London sebagai pembalasan atas kematian temannya, Maria. Tim Sonic harus bekerja sama untuk menghentikan rencana destruktif ini dan menyelamatkan dunia dari kehancuran.', 'movies', 'https://i.pinimg.com/474x/2a/5b/1c/2a5b1c4efb0ce31f2410dcece15455f0.jpg', 'https://www.youtube.com/embed/qSu6i2iFMO0?si=nOByDAo0RYKNXUGC'),
(15, 'kraven-the-hunter-2024', ' KRAVEN THE HUNTER (2024)', 'Richard Wenk', 'Dalam perjalanannya, Sergei menghadapi berbagai konflik internal dan eksternal, termasuk perseteruan dengan saudaranya, Dmitri (alias Chameleon), dan rivalitas dengan Aleksei Sytsevich (alias Rhino). Film ini mengeksplorasi transformasi Sergei dari seorang anak yang tertekan menjadi pemburu yang menargetkan penjahat, dengan tujuan membuktikan dirinya sebagai pemburu terhebat di dunia.', 'movies', 'https://i.pinimg.com/474x/15/73/d3/1573d3a129bf7d87383b28841be10852.jpg', 'https://www.youtube.com/embed/I8gFw4-2RBM?si=gmATvklfMhUsvv29'),
(16, 'mufasa-the-lion-king-2024', 'MUFASA: THE LION KING (2024)', 'Barry Jenkins', 'Mufasa, yang terlahir sebagai seekor anak singa biasa tanpa status kerajaan, mengalami berbagai rintangan dalam hidupnya. Ia bukan bagian dari keluarga bangsawan, tetapi melalui keberanian, kebijaksanaan, dan tekadnya, ia berhasil membuktikan bahwa kepemimpinan sejati bukan hanya berasal dari garis keturunan, melainkan dari hati dan tindakan seseorang.', 'movies', 'https://i.pinimg.com/474x/9e/d8/e5/9ed8e583143eb3eb73666dde7fd74a13.jpg', 'https://www.youtube.com/embed/o17MF9vnabg?si=FOnam3CzhyqqvBu9'),
(17, 'wicked-2024', 'WICKED (2024)', 'Jon M. Chu', 'Berlatar di dunia sihir Oz, kisah ini mengikuti Elphaba, seorang gadis berbakat yang lahir dengan kulit hijau karena sebuah kutukan. Meskipun cerdas dan penuh kasih sayang, ia sering dikucilkan oleh masyarakat. Ketika ia masuk ke Shiz University, ia bertemu dengan Glinda, seorang gadis populer dan penuh pesona. Meskipun awalnya bertolak belakang, keduanya menjalin persahabatan yang erat.', 'movies', 'https://i.pinimg.com/474x/c3/4a/8a/c34a8ae1adc2ceceb4cca80164334b38.jpg', 'https://www.youtube.com/embed/6COmYeLsz4c?si=50R7QJslRmOMgAa4'),
(18, 'gladiator-II-2024', 'GLADIATOR II (2024)', 'Ridley Scott', 'Lucius, yang telah lama hidup jauh dari politik Romawi, dipaksa kembali ke medan pertempuran sebagai seorang gladiator. Dengan kekuatan baru yang mengancam stabilitas Roma, ia harus bertarung bukan hanya demi kelangsungan hidupnya sendiri tetapi juga demi nasib rakyatnya.', 'movies', 'https://i.pinimg.com/474x/bf/b1/66/bfb16632e3fa58d077a7dcc5ccf92ce5.jpg', 'https://www.youtube.com/embed/Ts0N8swyWFI?si=4-cfwbpmvIcinGkL'),
(19, 'werewolves-2024', 'WEREWOLVES (2024)', 'Steven C. Miller', 'Setahun setelah peristiwa supermoon yang menyebabkan hampir satu miliar orang berubah menjadi manusia serigala, dunia kini menghadapi ancaman serupa dengan kembalinya fenomena tersebut. Wesley Marshall, seorang mantan tentara dan ilmuwan, berusaha melindungi keluarganya dari ancaman transformasi dengan mencari cara untuk mencegah perubahan tersebut. Sementara itu, ketegangan meningkat dengan tetangganya, Cody Walker, yang memiliki pendekatan berbeda dalam menghadapi krisis ini.', 'movies', 'https://i.pinimg.com/474x/d3/82/43/d3824323e85ec24d43b14bde40e07906.jpg', 'https://www.youtube.com/embed/iAAUDfGSdqs?si=TIENCTZS5duOL4Dz'),
(20, 'nosferatu-2024', 'NOSFERATU (2024)', 'Robert Eggers', 'Berlatar di Jerman pada abad ke-19, Nosferatu mengisahkan seorang wanita muda bernama Ellen Hutter (Lily-Rose Depp), yang menjadi sasaran obsesif seorang vampir kuno dan mengerikan, Count Orlok (Bill Skarsgård). Sang vampir membawa kengerian ke kota kecil mereka, menyebabkan wabah penyakit dan membangkitkan ketakutan yang mendalam di antara penduduk.', 'movies', 'https://i.pinimg.com/474x/4d/32/cd/4d32cd50b168db8abab8cb3015954aed.jpg', 'https://www.youtube.com/embed/nulvWqYUM8k?si=NjRRqd96GioIlMYf'),
(21, 'red-one-2024', 'RED ONE (2024)', 'Jake Kasdan', 'Pada Malam Natal, Santa Claus diculik oleh penyihir musim dingin bernama Grýla. Callum Drift, yang berencana pensiun setelah satu tugas terakhir, bekerja sama dengan Jack O\'Malley untuk menyelamatkan Santa dan mencegah rencana jahat Grýla yang ingin memenjarakan semua orang yang pernah masuk dalam Daftar Nakal Santa. Dalam petualangan ini, mereka menghadapi berbagai rintangan, termasuk pasukan manusia salju dan makhluk mitologis lainnya, sambil berusaha memulihkan semangat Natal dan menyelamatkan dunia dari ancaman Grýla.', 'movies', 'https://i.pinimg.com/474x/93/40/c7/9340c7da6337db3199c3ce1c254753d0.jpg', 'https://www.youtube.com/embed/U8XH3W0cMss?si=rKTT5gQ0YV6HIcv2'),
(22, 'venom-the-last-dance-2024', 'VENOM: THE LAST DANCE (2024)', 'Kelly Marcel', 'Setelah peristiwa di film sebelumnya, Eddie Brock dan symbiote Venom menghadapi ancaman baru dari dewa symbiote bernama Knull. Knull mengirim makhluk asing yang dikenal sebagai Xenophage untuk memburu dan menghancurkan Venom. Sementara itu, pemerintah dan militer juga memburu Eddie dan Venom, memaksa mereka untuk terus bergerak dan mencari cara untuk menghentikan ancaman yang semakin mendekat.', 'movies', 'https://i.pinimg.com/474x/6f/d8/64/6fd864ffee03fa335127ce3f1d7ae310.jpg', 'https://www.youtube.com/embed/HyIyd9joTTc?si=lo1YopKnMME61FQ2'),
(23, 'despicable-me4-2024', 'DESPICABLE ME 4 (2024)', 'Chris Renaud', 'Gru menghadiri reuni di sekolah lamanya, Lycée Pas Bon, dan bertemu kembali dengan rival lamanya, Maxime Le Mal. Maxime, yang telah mengubah dirinya menjadi hibrida kecoa, berencana untuk menguasai dunia dan membalas dendam pada Gru. Setelah Maxime melarikan diri dari penjara Anti-Villain League (AVL), Gru dan keluarganya ditempatkan dalam program perlindungan saksi di kota Mayflower. Di sana, mereka menjalani kehidupan dengan identitas baru sambil menghadapi berbagai tantangan, termasuk ancaman dari Maxime yang ingin mengubah putra Gru, Gru Jr., menjadi hibrida kecoa. Dengan bantuan tetangga mereka, Poppy, dan Minion yang setia, Gru berusaha menyelamatkan keluarganya dan menghentikan rencana jahat Maxime.', 'movies', 'https://i.pinimg.com/474x/b7/2e/87/b72e87cf45c1ee343ec21616537bac89.jpg', 'https://www.youtube.com/embed/qQlr9-rF32A?si=gT6P3rxgAh5pXYEC'),
(24, 'joker-folie-a-deux-2024', 'JOKER: FOLIE A DEUX (2024)', 'Todd Phillips', 'Hubungan Arthur Fleck dengan Harleen Quinzel (Harley Quinn), yang diperankan oleh Lady Gaga. Kisahnya berfokus pada kehidupan Joker setelah kejadian di film pertama, di mana ia ditahan di Arkham Asylum. Di dalam fasilitas tersebut, ia bertemu dengan seorang psikiater bernama Harleen Quinzel yang kemudian jatuh cinta padanya. Hubungan mereka berkembang menjadi kisah cinta yang penuh kegilaan, membawa mereka pada serangkaian tindakan anarkis di Gotham City.\r\n\r\n', 'movies', 'https://i.pinimg.com/474x/20/ca/bb/20cabbef7e27fd76e70d1e4876ad4c72.jpg', 'https://www.youtube.com/embed/_OKAwz2MsJs?si=qCOHbg_T1JXPVXUN'),
(25, 'my-fault-london-2025', 'MY FAULT: LONDON (2025)', 'Dani Girdwood dan Charlotte Fassler', 'Selama musim panas, Noah berusaha menyesuaikan diri dengan kehidupan barunya, menjalin pertemanan dengan lingkaran sosial Nick, dan menghadapi hubungan rumit yang berkembang di antara mereka. Sementara itu, tanpa sepengetahuan Noah, ayah kandungnya yang baru saja dibebaskan dari penjara mulai mengawasi setiap gerak-geriknya, memaksa Noah untuk menghadapi masa lalunya yang kelam sambil merasakan cinta untuk pertama kalinya.', 'movies', 'https://image.tmdb.org/t/p/w185/ttN5D6GKOwKWHmCzDGctAvaNMAi.jpg', 'https://www.youtube.com/embed/y-7npX0kE58?si=5KnCcFGgA0L77aui'),
(26, 'deadpool-wolverine-2024', 'DEADPOOL & WOLVERINE (2024)', 'Shawn Levy', 'Deadpool yang kembali beraksi setelah dirinya masuk ke dalam dunia utama Marvel Cinematic Universe (MCU). Setelah mengalami kejadian aneh yang melibatkan TVA (Time Variance Authority), Deadpool bertemu dengan Wolverine, yang tampaknya berasal dari garis waktu yang berbeda. Awalnya, Wolverine enggan terlibat dalam kekacauan Deadpool. Namun, ancaman besar yang dapat mengacaukan multiverse memaksa mereka bekerja sama. Duo ini terjebak dalam berbagai pertarungan brutal, penuh aksi berdarah, serta humor khas Deadpool yang kocak dan nyeleneh.', 'movies', 'https://i.pinimg.com/474x/ae/3d/dd/ae3dddf605a6113b4dc7dc7b3826e931.jpg', 'https://www.youtube.com/embed/73_1biulkYk?si=PB4QLQ74a1jErljX'),
(27, 'evil-dead-rise-2023', 'EVIL DEAD RISE (2023)', 'Lee Cronin', 'dua saudara perempuan, Beth dan Ellie, yang terpisah selama bertahun-tahun. Beth, seorang wanita mandiri, mengunjungi kakaknya Ellie yang tinggal di sebuah apartemen tua bersama ketiga anaknya, Danny, Bridget, dan Kassie.\r\nKetika Danny menemukan sebuah Necronomicon (Kitab Orang Mati) tersembunyi di gedung apartemen mereka, ia tanpa sengaja membangkitkan kekuatan jahat yang mengubah Ellie menjadi Deadite yang haus darah. Beth harus berjuang untuk melindungi keponakan-keponakannya dari serangan makhluk iblis yang semakin brutal dan penuh darah.', 'movies', 'https://i.pinimg.com/474x/6f/0a/c5/6f0ac5b524afdab44c2f0bd339339d8e.jpg', 'https://www.youtube.com/embed/BqQNO7BzN08?si=4MaUdUV73ZIths1M'),
(28, 'fast-x-2023', 'FAST X (2023)', 'Louis Leterrier', 'Dante Reyes (Jason Momoa), anak dari Hernan Reyes—seorang penguasa kartel yang dibunuh oleh Dom dan timnya dalam Fast Five (2011)—datang untuk membalas dendam. Dengan rencana licik yang telah disusunnya selama bertahun-tahun, Dante mengincar keluarga Dom, menghancurkan segala yang mereka cintai, dan memaksa mereka berpencar ke berbagai penjuru dunia. Dom harus menghadapi musuh yang tidak hanya kuat secara fisik tetapi juga licik dalam strategi. Dengan keluarganya yang tersebar di berbagai lokasi berbahaya, Dom dan timnya harus berpacu dengan waktu untuk menyelamatkan satu sama lain sambil melawan Dante, yang sepertinya selalu selangkah lebih maju.', 'movies', 'https://i.pinimg.com/474x/6f/97/41/6f9741d12b79288a0f632a358d21fc41.jpg', 'https://www.youtube.com/embed/32RAq6JzY-w?si=onhp6UYoOYI9rEdB'),
(29, 'aquaman-and-the-lost-kingdom-2023', 'AQUAMAN AND THE LOST KINGDOM (2023)', 'James Wan', 'Setelah menjadi Raja Atlantis, Aquaman (Arthur Curry) harus menghadapi ancaman baru yang lebih besar dari sebelumnya. Black Manta, yang masih berusaha membalas dendam atas kematian ayahnya, menemukan artefak kuno yang memberinya kekuatan luar biasa. Dengan senjata baru yang berasal dari Lost Kingdom, Black Manta berencana untuk menghancurkan Atlantis dan seluruh dunia.Untuk menghentikan ancaman ini, Aquaman terpaksa bekerja sama dengan Orm (Ocean Master), saudara tirinya yang sebelumnya menjadi musuhnya. Bersama-sama, mereka harus melawan kekuatan gelap yang berasal dari Necrus, kerajaan bawah laut yang telah lama hilang dan kini kembali dengan niat jahat.', 'movies', 'https://i.pinimg.com/474x/b8/1f/b1/b81fb171542b10350a6ef14b3fca3450.jpg', 'https://www.youtube.com/embed/UGc5Tzz19UY?si=H2ktf6nyyQESpso1'),
(30, 'oppenheimer-2023', 'OPPENHEIMER (2023)', 'Christopher Nolan', 'Sebagai seorang ilmuwan visioner, Oppenheimer direkrut oleh Jenderal Leslie Groves (Matt Damon) untuk memimpin penelitian di Los Alamos, New Mexico. Bersama tim ilmuwan terbaik, ia berhasil menciptakan senjata nuklir pertama dalam sejarah. Puncaknya adalah uji coba Trinity pada 16 Juli 1945, yang menandai awal dari era nuklir.Namun, kesuksesan ilmiahnya membawa konsekuensi berat. Setelah bom atom dijatuhkan di Hiroshima dan Nagasaki, Oppenheimer dihantui oleh rasa bersalah atas kehancuran yang ditimbulkan. Ia mulai menentang perlombaan senjata nuklir, tetapi pandangannya membuatnya bertentangan dengan pemerintah, terutama Lewis Strauss (Robert Downey Jr.), yang kemudian berperan dalam menghancurkan reputasi dan kariernya.', 'movies', 'https://i.pinimg.com/474x/77/9d/a3/779da30964fb69b47c4f03138d482f9d.jpg', 'https://www.youtube.com/embed/uYPbbksJxIg?si=jdZuUhYMsyex_m9I'),
(31, 'kung-fu-panda-4-2024', 'KUNG FU PANDA 4 (2024)', 'Mike Mitchell', 'Di tengah transisi ini, muncul ancaman dari The Chameleon, seorang penyihir jahat yang memiliki kemampuan mengubah bentuk dan mencuri kekuatan para pendekar kung fu. Ia berniat menguasai dunia dengan menyerap kekuatan para petarung hebat, termasuk Po.Untuk menghadapi ancaman baru ini, Po harus bekerja sama dengan Zhen, seekor rubah bandit yang cerdik dan berbakat dalam bertarung. Awalnya, hubungan mereka penuh dengan ketidakcocokan, tetapi seiring waktu, mereka belajar untuk saling percaya.', 'movies', 'https://i.pinimg.com/474x/8b/e1/b6/8be1b64a292cfd7c1864389c2ac8bb3d.jpg', 'https://www.youtube.com/embed/_inKs4eeHiI?si=ghujMaWjEInuZQVh'),
(32, 'godzilla-kong-the-new-empire-2024', 'GODZILLA x KONG: THE NEW EMPIRE (2024)', 'Adam Wingard', 'Di tengah misteri yang menghubungkan masa lalu para Titan, Kong menemukan spesies baru yang sama kuatnya dengannya, sementara Godzilla menghadapi kekuatan yang mengancam dominasinya sebagai Raja Monster. Dengan dunia yang berada di ambang kehancuran, manusia dan para Titan harus bersatu untuk menghadapi ancaman yang lebih besar dari sebelumnya.', 'movies', 'https://i.pinimg.com/474x/49/89/30/4989301524a62d37238ff2da462b7b40.jpg', 'https://www.youtube.com/embed/lV1OOlGwExM?si=Opctd3lT7HeEub-f'),
(33, 'elemental-2023', 'ELEMENTAL (2023)', 'Peter Sohn', 'Di kota unik bernama Element City, empat elemen—Api, Air, Tanah, dan Udara—hidup berdampingan. Ember Lumen, seorang perempuan elemen api yang bersemangat dan penuh tekad, bekerja keras di toko milik keluarganya. Suatu hari, ia bertemu dengan Wade Ripple, pria elemen air yang santai dan emosional.\r\n\r\nMeskipun sifat mereka berlawanan, Ember dan Wade mulai menjalin persahabatan yang tak terduga. Bersama, mereka menantang norma masyarakat dan menemukan bahwa persamaan bisa ditemukan dalam perbedaan. Ember juga mulai memahami dirinya sendiri lebih dalam, terutama tentang impiannya di luar harapan keluarganya.', 'movies', 'https://i.pinimg.com/474x/ae/d8/8f/aed88f1d2f811cc367156192d9ea904a.jpg', 'https://www.youtube.com/embed/hXzcyx9V0xw?si=iRFVZx8PVOS771WL'),
(34, 'the-nun-II (2023)', 'THE NUN II (2023)', 'Michael Chaves', 'Setelah peristiwa yang terjadi di film pertama, Valak, roh jahat yang muncul sebagai biarawati (nun), kembali muncul dengan ancaman yang lebih besar.\r\n\r\nKali ini, kejahatan tersebut menyebar ke sebuah sekolah di Prancis, di mana kekuatan gelap Valak mulai mengganggu dan meresahkan para penghuni sekolah. Sister Irene, bersama dengan seorang teman baru, Debra (Storm Reid), berusaha menggali lebih dalam untuk menghentikan teror tersebut. Mereka harus berhadapan langsung dengan entitas iblis Valak, yang lebih kuat dan kejam dari sebelumnya.', 'movies', 'https://i.pinimg.com/474x/5a/ad/90/5aad90047088d2a48187087b3d3be143.jpg', 'https://www.youtube.com/embed/QF-oyCwaArU?si=5OhDH87sQ4ys74z7'),
(35, 'study-group-2025', 'STUDY GROUP (2025)', 'Lee Jang-hoon', 'Seorang siswa yang bercita-cita masuk universitas bergengsi, tetapi ia bersekolah di sekolah dengan reputasi buruk yang dipenuhi siswa nakal. Meskipun ia ingin belajar dengan tekun, lingkungannya memaksanya untuk sering berkelahi demi bertahan hidup. Ia membentuk kelompok belajar (Study Group) untuk membantu teman-temannya belajar, tetapi malah terus-menerus harus menghadapi berbagai ancaman dan pertarungan.\r\n\r\n', 'series', 'https://i.pinimg.com/474x/8f/ed/33/8fed33dc759f12160c21769b2a8f9331.jpg', 'https://www.youtube.com/embed/Bx0piV_Uf4E?si=s4O4N1oTDg-R-UxC'),
(36, 'melo-movie-2025', 'MELO MOVIE (2025)', 'Oh Chung-hwan', 'Kisah mereka diwarnai oleh berbagai konflik emosional, termasuk kesalahpahaman, tekanan sosial, dan keputusan sulit yang harus mereka ambil. Dengan alur yang lambat namun penuh makna, Melo menggambarkan perjuangan cinta yang realistis dan menyayat hati, dengan akhir yang menguras emosi penonton.', 'series', 'https://image.tmdb.org/t/p/w185/iEVOYk8eoMdCLFrNXtRSyqVM20c.jpg', 'https://www.youtube.com/embed/bgxKjOoU8r4?si=3smpsdEcTMNIxAKn'),
(37, 'squid-game-season2-2024', 'SQUID GAME: SEASON 2 (2024)', 'Hwang Dong-hyuk', 'Dalam musim kedua ini, Gi-hun memutuskan untuk tidak pergi ke Amerika Serikat dan memilih kembali ke permainan dengan tekad menghancurkannya dari dalam. Sementara itu, detektif Hwang Jun-ho bekerja sama dengan tentara bayaran untuk menemukan Gi-hun dan mengungkap dalang di balik permainan tersebut. Musim ini mengeksplorasi tema-tema seperti keserakahan manusia, keputusasaan, dan moralitas, serta memperdalam dinamika antar karakter dan dilema moral yang dihadapi para peserta.', 'series', 'https://i.pinimg.com/474x/38/11/ea/3811ea700879e3b7a8ada265e71a49cf.jpg', 'https://www.youtube.com/embed/Ed1sGgHUo88?si=z6KeswRadzU6umNU'),
(38, 'the-last-of-us-2023', 'THE LAST OF US (2023)', 'Craig Mazin & Neil Druckmann ', 'berlatar di Amerika Serikat yang hancur akibat pandemi global yang disebabkan oleh jamur Cordyceps. Kisahnya mengikuti Joel (diperankan oleh Pedro Pascal), seorang penyintas yang keras, yang ditugaskan untuk mengawal Ellie (diperankan oleh Bella Ramsey), seorang gadis berusia 14 tahun yang mungkin menjadi harapan terakhir umat manusia karena kekebalannya terhadap infeksi. Perjalanan mereka melintasi Amerika Serikat yang porak-poranda penuh dengan tantangan, baik dari makhluk terinfeksi maupun manusia yang putus asa.', 'series', 'https://i.pinimg.com/474x/82/9d/86/829d865e040cf1ec0b39623fd4def07c.jpg', 'https://www.youtube.com/embed/BOsAJ7oe2QE?si=dUZtnN4V-Hj8mhCE'),
(39, 'gangnam-b-side-2024', 'GANGNAM B-SIDE (2024)', 'Park Noo-ri', 'seorang pekerja di bar terkenal di Gangnam yang mengetahui rahasia di balik serangkaian penghilangan misterius. Detektif Kang Dong-woo (Jo Woo-jin), yang sebelumnya diturunkan pangkatnya, kembali bertugas untuk menyelidiki kasus ini. Bersama dengan Yoon Gil-ho (Ji Chang-wook), seorang broker misterius yang menguasai dunia bawah Gangnam, dan jaksa Min Seo-jin (Ha Yoon-kyung), mereka bekerja sama untuk mengungkap kebenaran di balik penghilangan tersebut.', 'series', 'https://i.pinimg.com/474x/e6/13/07/e61307f96af3a8de8dc8fd02320294d1.jpg', 'https://www.youtube.com/embed/BpLJphaOu3I?si=GO_iqX6SzIVFCA2n'),
(40, 'agatha-all-along-2024', 'AGATHA ALL ALONG (2024)', 'Jac Schaeffer', 'Tiga tahun setelah peristiwa di Westview, New Jersey, di mana Agatha Harkness terperangkap dalam mantra oleh Wanda Maximoff, Agatha berhasil melarikan diri dengan bantuan seorang remaja misterius. Remaja ini memohon Agatha untuk menemaninya melalui Witches\' Road, sebuah jalur legendaris penuh ujian magis yang konon dapat mengembalikan kekuatan yang hilang. Tanpa kekuatan sihirnya, Agatha bersama remaja tersebut membentuk sebuah coven baru dan menghadapi berbagai tantangan, sambil berhadapan dengan musuh-musuh lama Agatha.', 'series', 'https://i.pinimg.com/474x/be/c2/63/bec2633a7c6b61162210dc002de37f5c.jpg', 'https://www.youtube.com/embed/R9pXbNz6Vbw?si=_nubl3q0aW9O3yS1'),
(41, 'the-hooligan-2025', 'THE HOOLIGAN (2025)', 'Dougie Brimson.', 'Serial ini mengikuti kisah Kuba Wójcik, seorang remaja berusia 17 tahun yang terjerat dalam dunia kekerasan suporter sepak bola di Polandia. Setelah ayahnya, Michał Kocur Wójcik, dibebaskan dari penjara, Kuba merasa sulit untuk tidak mengikuti jejak ayahnya sebagai seorang hooligan. Kisah ini menggali dinamika keluarga, loyalitas, dan tantangan yang dihadapi oleh generasi muda dalam lingkungan yang penuh kekerasan dan tekanan sosial. ', 'series', 'https://image.tmdb.org/t/p/w185/vPva6bEwnrmgpNyHe8WDNkvxaav.jpg', 'https://www.youtube.com/embed/X8pEcSn1bWc?si=OfK76IohyNEujsX_'),
(42, 'the-trauma-code-heroes -on-call-2025', 'THE TRAUMA CODE: HEROES ON CALL (2025)', 'Choi Tae-kang', 'Dr. Baek Kang-hyuk, dengan keterampilan bedah yang luar biasa dan pengalaman di medan perang, menghadapi tantangan dalam menyesuaikan diri dengan lingkungan rumah sakit sipil. Metode unorthodox dan kepercayaan dirinya yang tinggi sering kali menimbulkan ketegangan dengan rekan-rekannya. Namun, seiring berjalannya waktu, ia berhasil membimbing timnya untuk menjadi unit trauma yang efektif dan efisien.', 'series', 'https://image.tmdb.org/t/p/w185/y8h2RwUZM5chv9tuaKVwSPoo3KE.jpg', 'https://www.youtube.com/embed/jcKNMR7uPYg?si=Rs9n2YHEHEv4LYWa'),
(43, 'your-friendly-neighborhood-spider-man-2025', 'YOUR FRIENDLY NEIGHBORHOOD SPIDER-MAN (2025)', 'Jeff Trammell', 'Serial ini mengikuti Peter Parker, seorang remaja yang baru mendapatkan kekuatan super, saat ia belajar menjadi pahlawan di bawah bimbingan Norman Osborn. Kisah ini mengeksplorasi tantangan yang dihadapi Peter dalam menyeimbangkan kehidupan pribadi dan tanggung jawabnya sebagai Spider-Man, sambil menghadapi berbagai musuh dan ancaman baru.', 'series', 'https://image.tmdb.org/t/p/w185/kjcsNeqF52YUQ2rUBGLMHwLkxvR.jpg', 'https://www.youtube.com/embed/N3J2JRQg040?si=nJK3oJDALB3ZXrns'),
(44, 'solo-leveling-2024', 'SOLOLEVELING (2024)', 'Chugong', 'Serial ini mengikuti Sung Jinwoo, seorang pemburu terlemah yang secara misterius memperoleh kemampuan untuk meningkatkan level kekuatannya setelah menjalani misi berbahaya. Dengan kemampuan unik ini, ia berusaha melindungi dunia dari ancaman monster dan kekuatan jahat lainnya.', 'series', 'https://image.tmdb.org/t/p/w185/geCRueV3ElhRTr0xtJuEWJt6dJ1.jpg', 'https://www.youtube.com/embed/sqtIagL463A?si=J4ilnMTdu4Lp-8Gh'),
(45, 'motel-california-2025', 'MOTEL CALIFORNIA (2025)', 'Shim Yoon Seo', 'Choi Hee-jin, seorang wanita yang dibesarkan di sebuah motel di pedesaan, kembali ke kampung halamannya setelah 12 tahun untuk menghadapi masa lalunya dan bertemu kembali dengan cinta pertamanya, Lee Yeon-soo. Serial ini mengeksplorasi dinamika hubungan mereka dan tantangan yang mereka hadapi dalam menghadapi kenangan dan perasaan yang belum terselesaikan.', 'series', 'https://image.tmdb.org/t/p/w185/aFEIz6IuRc1aJTms22YKxx6548w.jpg', 'https://www.youtube.com/embed/vSsV0ESWFis?si=kmhz9SxFVBEeCE5D'),
(46, 'when-the-stars-gossip-2025', 'WHEN THE STARS GOSSIP(2025)', 'Lee Young Mi', 'Cerita mengikuti Gong Ryong, seorang dokter spesialis kandungan yang mengikuti tur ke Stasiun Luar Angkasa Internasional (ISS). Selama di sana, dia bertemu dengan Eve Kim, seorang astronot Korea-Amerika yang juga merupakan komandan misi. Pertemuan tak terduga ini menumbuhkan kisah cinta mereka di tengah tantangan dan kesepian luar angkasa.', 'series', 'https://image.tmdb.org/t/p/w185/pdOiUbJ0vEJfh5OGFG8y1e4InQ7.jpg', 'https://www.youtube.com/embed/OkYT-T500AE?si=fDNI6nhDIt_DYx_3'),
(47, 'american-primeval-2025', 'AMERICAN PRIMEVAL (2025)', 'Mark L. Smith', 'Berlatar tahun 1857 selama Perang Utah, serial ini menggambarkan perjuangan untuk menguasai Barat Amerika dan bentrokan kekerasan antara Gereja Yesus Kristus dari Orang-Orang Suci Zaman Akhir (Gereja LDS) dan budaya di Wilayah Utah, berfokus pada peristiwa yang mengarah pada Pembantaian Mountain Meadows.', 'series', 'https://image.tmdb.org/t/p/w185/ff0s9OHGNSZL6cVteIb7LNvTnJD.jpg', 'https://www.youtube.com/embed/U8WMvCrywYg?si=0OxW9SjAYM0O9qzs'),
(48, 'sas-rogue-heroes-2022', 'SAS ROUGUE HEROES (2022)', 'Steven Knight', 'Cerita dimulai pada tahun 1941 di rumah sakit Kairo, di mana perwira Angkatan Darat Inggris, David Stirling, setelah latihan yang gagal, memiliki ide untuk membentuk unit komando khusus yang dapat beroperasi jauh di belakang garis musuh.', 'series', 'https://image.tmdb.org/t/p/w185/qEaxiDrPaTY34eIg6naXMfM2IKC.jpg', 'https://www.youtube.com/embed/gTWqFccBsgg?si=pnEGgSn3290p2DK1'),
(49, 'mr-plankton-2024', 'MR. PLANKTON (2024)', 'Jo Yong', 'Cerita berfokus pada Hae-jo, seorang pria yang lahir akibat inseminasi buatan yang salah, yang mengetahui bahwa ia menderita penyakit terminal. Ia memaksa mantan pacarnya, Jo Jae-mi, untuk menemaninya dalam perjalanan terakhirnya untuk mencari ayah kandungnya yang tidak pernah ia kenal.', 'series', 'https://image.tmdb.org/t/p/w185/c31cvdNNiAMvb4XVjAwYLNn3LNO.jpg', 'https://www.youtube.com/embed/mt4wezFpLvA?si=lCbxi8-RexEn5y6O'),
(50, 'sakamoto-days-2025', 'SAKAMOTO DAYS (2025)', ' Yuto Suzuki', 'Taro Sakamoto, dulunya adalah pembunuh bayaran paling ditakuti, kini menjalani kehidupan tenang sebagai pemilik toko serba ada. Namun, masa lalunya yang kelam kembali menghantuinya, memaksanya untuk melindungi keluarganya dan menghadapi musuh-musuh lama. ', 'series', 'https://image.tmdb.org/t/p/w185/lBOHMPWetQprntjjtGquHwIHSvx.jpg', 'https://www.youtube.com/embed/DSV4RUkzs14?si=8ZOKkA8op8OdfeXZ'),
(51, 'Alice in Borderland (2020)', 'Alice in Borderland (2020)', 'Yoshiki Watabe Yasuko Kuramitsu Shinsuke Sato', 'Ryōhei Arisu, seorang pria muda yang terobsesi dengan video game, mendapati dirinya terjebak di Tokyo yang kosong dan suram. Bersama dengan teman-temannya, ia dipaksa untuk berpartisipasi dalam serangkaian permainan berbahaya yang menguji kecerdasan dan kelangsungan hidup mereka. Setiap permainan memiliki tingkat kesulitan yang ditandai dengan kartu remi, dan kegagalan dalam permainan berarti hukuman mati.', 'series', 'https://i.pinimg.com/736x/c6/d0/50/c6d050ae61d8119027d993eda7fb4963.jpg', 'https://www.youtube.com/embed/49_44FFKZ1M?si=GT9N0DzyoW-HOuaF'),
(52, 'la-palma-2024', 'LA PALMA(2024)', 'Lars Gudmestad', 'Cerita berfokus pada keluarga Norwegia yang berlibur di La Palma, Kepulauan Canary. Liburan mereka berubah menjadi mimpi buruk ketika seorang peneliti muda menemukan tanda-tanda peringatan dari letusan gunung berapi yang akan datang, yang dapat memicu tsunami besar.', 'series', 'https://image.tmdb.org/t/p/w185/lnFqXgpG0vpstspzsC4bW70YgYw.jpg', 'https://www.youtube.com/embed/2zFVoLQyWjc?si=1avNft-aMkT9gs6P'),
(53, 'go-ahead-brother-2024', 'GO AHEAD, BROTHER (2024)', 'Piotr Witkowski & Konrad Eleryk', 'Oskar Gwiazda, seorang mantan anggota unit kontra-terorisme SPAP, dipecat setelah mengalami serangan panik yang membahayakan timnya. Menghadapi kesulitan finansial dan tekanan dari utang ayahnya, Oskar berusaha beradaptasi dengan pekerjaan barunya sebagai petugas keamanan di sebuah kompleks perbelanjaan. Namun, ia segera menemukan peluang untuk menyelesaikan masalah keuangannya melalui cara-cara yang tidak konvensional.', 'series', 'https://image.tmdb.org/t/p/w185/x6ei6X4uOc5OXBAIbB7uvCXSgxS.jpg', 'https://www.youtube.com/embed/cYcQQf1YGvo?si=4YT1RTTKbzpxvfN1'),
(54, 'valiant-one-2025', 'VALIANT ONE (2025)', 'Daniel Myrick', 'Misi rutin berubah menjadi bencana ketika helikopter Angkatan Darat AS jatuh di wilayah Korea Utara. Kapten Edward Brockman memimpin tim spesialis teknis non-tempur untuk menavigasi medan berbahaya dan menghadapi pasukan Korea Utara, sambil berusaha mengawal spesialis teknis sipil melintasi Zona Demiliterisasi yang berbahaya.', 'movies', 'https://i.pinimg.com/474x/77/6e/83/776e831165eadcb7bfcee93005e9d43b.jpg', 'https://www.youtube.com/embed/YqOdTsbftl4?si=oKqUej8j_xpHLiXS'),
(55, 'the-gorge-2025', 'THE GORGE (2025)', 'Zach Dean', 'Levi Kane (Miles Teller) dan Elena Morales (Anya Taylor-Joy) adalah penembak jitu elit yang menerima misi identik: menjaga sisi Barat dan Timur dari sebuah ngarai dalam selama satu tahun tanpa kontak dengan dunia luar atau rekan di sisi berlawanan. Ketika ancaman besar terhadap umat manusia terungkap, mereka harus bekerja sama untuk bertahan hidup dan mencegah bahaya yang ada di dalam ngarai tersebut.', 'movies', 'https://i.pinimg.com/474x/5d/1a/15/5d1a15b98d62ac15e177e77c5b83d5ac.jpg', 'https://www.youtube.com/embed/rUSdnuOLebE?si=HwAdykBDakRuZ1x6'),
(56, 'spider-man-no-way-home-2021', 'SPIDER-MAN: NO WAY HOME (2021)', 'Chris McKenna & Erik Sommers', 'Setelah identitasnya sebagai Spider-Man terungkap oleh Mysterio di akhir Spider-Man: Far From Home (2019), hidup Peter Parker berubah drastis. Ia harus menghadapi dampak besar yang mengganggu kehidupan pribadinya, keluarganya, serta orang-orang terdekatnya, termasuk MJ, Ned, dan Bibi May.', 'movies', 'https://i.pinimg.com/736x/fa/a8/c2/faa8c2a6a5d681077d1ab02092a67766.jpg', 'https://www.youtube.com/embed/JfVOs4VSpmA?si=81nuRUV2tooYNjT6'),
(57, 'newtopia-2025', 'NEWTOPIA (2025)', 'Han Ji-won', 'Serial ini mengisahkan pasangan yang baru saja putus, Lee Jae-yoon dan Kang Young-ju, yang berusaha untuk bersatu kembali setelah wabah zombie melanda Korea Selatan. Lee Jae-yoon, seorang tentara yang bergabung dengan militer lebih lambat dari rekan-rekannya, merasa cemas tentang masa depannya.', 'series', 'https://image.tmdb.org/t/p/w185/hP9bsI2B7HONwDrzoNw5Q3QJMqU.jpg', 'https://www.youtube.com/embed/HtaaO9D9ZcU?si=DFRnKADmLTGgCBuR'),
(58, 'all-of-us-are-dead-2022', 'ALL OF US ARE DEAD (2022)', 'Chun Sung Il', 'Serial All of Us Are Dead berlatar di sebuah SMA di Korea Selatan yang tiba-tiba menjadi pusat wabah virus zombie mematikan. Virus ini pertama kali menyebar dari laboratorium sains sekolah dan dengan cepat mengubah siswa menjadi zombie ganas. Sekelompok siswa yang masih bertahan harus berjuang untuk bertahan hidup tanpa adanya bantuan dari luar. Mereka terjebak di dalam sekolah yang penuh dengan bahaya dan harus bekerja sama untuk melarikan diri sambil menghadapi teman-teman mereka yang telah berubah menjadi zombie.', 'series', 'https://i.pinimg.com/474x/f5/ac/04/f5ac04df8f9a5d3386a4e1138ca5f314.jpg', 'https://www.youtube.com/embed/IN5TD4VRcSM?si=v045IL8mD_iS7YUP'),
(59, 'moving-2023', 'MOVING (2023)', 'Kang Full', 'Serial Moving berkisah tentang sekelompok siswa sekolah menengah dan orang tua mereka yang menyimpan rahasia besar: mereka memiliki kemampuan super yang diwarisi dari generasi sebelumnya. Mereka berusaha menjalani kehidupan normal dan menyembunyikan kekuatan mereka agar tidak menarik perhatian pihak berbahaya yang ingin mengeksploitasi mereka.', 'series', 'https://i.pinimg.com/736x/e2/e7/6b/e2e76b58e38f45bbfd72fed7385107b9.jpg', 'https://www.youtube.com/embed/d_SFsZEZAy4?si=iRbIYY-fq8cgyp-3'),
(60, 'the-uncanny-counter-2020', 'THE UNCANNY COUNTER (2020)', 'Yeo Ji-na', 'The Uncanny Counter mengisahkan sekelompok individu yang dikenal sebagai Counter, yang memiliki tugas khusus untuk memburu dan mengalahkan roh jahat yang merasuki tubuh manusia di dunia. Para Counter ini mendapatkan kekuatan super dari roh penjaga yang berasal dari dunia setelah kematian. So Mun, seorang siswa SMA dengan cacat fisik akibat kecelakaan, tiba-tiba direkrut menjadi Counter setelah salah satu anggota mereka meninggal. Awalnya tidak mengerti tentang kekuatan barunya, So Mun kemudian belajar bagaimana menggunakan kemampuannya untuk melawan roh jahat yang kuat dan membantu menyelamatkan jiwa yang terperangkap.', 'series', 'https://i.pinimg.com/474x/dd/d8/5e/ddd85ee26ce5cf09a08411756b1e6f85.jpg', 'https://www.youtube.com/embed/rI55SRM6uhs?si=AeQMn-zW1xD7Ebzz'),
(61, 'vigilante-2023', 'VIGILANTE(2023)', 'Moon Yoo Seok', 'Drama Vigilante mengisahkan Kim Ji-yong, seorang mahasiswa akademi kepolisian yang memiliki kehidupan ganda. Di siang hari, ia adalah siswa teladan yang bercita-cita menjadi polisi, tetapi di malam hari, ia berubah menjadi Vigilante, seorang eksekutor keadilan yang menghukum para penjahat yang lolos dari sistem hukum.', 'series', 'https://i.pinimg.com/736x/a0/3a/b7/a03ab7df5876174f3ee5d82a84c3dd4e.jpg', 'https://www.youtube.com/embed/A9zqABCEQDU?si=D7ZLkNn9wQkFM1HJ'),
(62, 'one-piece-2023', 'ONE PIECE (2023)', 'Gorō Taniguchi', 'seorang pemuda yang bercita-cita menjadi Raja Bajak Laut dengan menemukan harta legendaris One Piece. Setelah memakan Buah Iblis Gomu Gomu no Mi, tubuhnya menjadi elastis seperti karet. Dengan kekuatan dan tekadnya, ia memulai perjalanan ke laut lepas untuk mengumpulkan kru dan mencapai impiannya.Sepanjang perjalanan, mereka menghadapi berbagai musuh, termasuk Marinir, bajak laut berbahaya seperti Bajak Laut Buggy, Kapten Kuro, dan Arlong. Dengan persahabatan, keberanian, dan impian besar mereka, Bajak Laut Topi Jerami menantang lautan luas menuju Grand Line untuk menemukan One Piece.', 'series', 'https://i.pinimg.com/474x/c2/a7/57/c2a75722c895f668cb1c6ae53d293236.jpg', 'https://www.youtube.com/embed/lNMSqxQtO0w?si=aeXymjL42Z-3DS69'),
(63, 'shang-chi-2021', 'SHANG-CHI AND THE LEGEND OF THE TEN RINGS (2021)', 'Destin Daniel Cretton', 'Shang-Chi (diperankan oleh Simu Liu) menjalani kehidupan sederhana di San Francisco sebagai valet parkir bersama sahabatnya Katy (Awkwafina). Namun, ketika sekelompok pembunuh menyerangnya dan mencuri liontin pemberian ibunya, Shang-Chi dipaksa kembali ke dunia yang ia tinggalkan. Ia kembali bertemu dengan saudara perempuannya, Xialing (Meng’er Zhang), dan menghadapi ayahnya, Xu Wenwu (Tony Leung), pemimpin organisasi Ten Rings yang kuat dan memiliki sepuluh cincin mistis. Wenwu percaya bahwa istrinya masih hidup dan berusaha membebaskannya dari dunia tersembunyi Ta Lo, meskipun tindakannya bisa membawa bencana.', 'movies', 'https://i.pinimg.com/474x/91/b3/1e/91b31e070a20658fd193b93cfe7d8a7f.jpg', 'https://www.youtube.com/embed/8YjFbMbfXaQ?si=yCgBtMZyWTFFvgyr'),
(64, 'black-panther-wakanda-forever-2022', 'BLACK PANTHER: WAKANDA FOREVER (2022)', 'Ryan Coogler', 'Setelah kematian Raja T’Challa, Wakanda berada dalam keadaan berduka dan rapuh. Ratu Ramonda (Angela Bassett), Shuri (Letitia Wright), M’Baku (Winston Duke), dan Okoye (Danai Gurira) berjuang untuk melindungi negaranya dari ancaman eksternal, terutama dari bangsa bawah laut yang dipimpin oleh Namor (Tenoch Huerta).\r\n\r\nNamor, penguasa kerajaan bawah laut Talokan, melihat Wakanda sebagai ancaman dan menginginkan aliansi melawan dunia luar. Namun, ketika Wakanda menolak, konflik pecah antara kedua peradaban ini. Shuri harus menemukan kekuatan dalam dirinya untuk melindungi negaranya dan memutuskan siapa yang akan meneruskan warisan Black Panther.', 'movies', 'https://i.pinimg.com/474x/cc/e3/a8/cce3a89057e39541408276c70f1f3c5c.jpg', 'https://www.youtube.com/embed/_Z3QKkl1WyM?si=BZF22S7fmng2V-Vh'),
(65, 'senna-2024', 'SENNA (2024)', 'Vicente Amorim dan Júlia Rezende', 'perjalanan hidup Ayrton Senna dari awal kariernya di Formula Ford hingga menjadi juara dunia Formula 1 sebanyak tiga kali. Senna dikenal tidak hanya karena keterampilannya yang luar biasa di lintasan, tetapi juga karena tekad, semangat juang, dan rivalitasnya yang sengit dengan Alain Prost.', 'series', 'https://image.tmdb.org/t/p/w185/yxkrrtyOzx36uHowqYB3Ec8b9wg.jpg', 'https://www.youtube.com/embed/_jMIULxyT4w?si=MpuHQjqJRLNZ0n4W'),
(66, 'the-boys-2019', 'THE BOYS (2019)', 'Eric Kripke', 'Di dunia di mana para superhero dikenal sebagai ', 'series', 'https://image.tmdb.org/t/p/w185/2zmTngn1tYC1AvfnrFLhxeD82hz.jpg', 'https://www.youtube.com/embed/M1bhOaLV4FU?si=BB4wYAk-E6VP7R25'),
(67, 'dream-productions-2024', 'DREAM PRODUCTIONS (2024)', 'Paula Persimmon', 'Berlatar antara peristiwa Inside Out dan Inside Out 2, serial ini mengeksplorasi dunia di balik layar pembuatan mimpi-mimpi Riley, seorang gadis yang kini berusia 12 tahun. Kisahnya berfokus pada Paula Persimmon, seorang sutradara mimpi ternama, dan timnya di Dream Productions saat mereka berusaha menciptakan mimpi-mimpi yang sesuai dengan perubahan emosi dan pengalaman Riley yang semakin kompleks memasuki masa remaja.', 'series', 'https://image.tmdb.org/t/p/w185/j9jz5wZlQoq65YuYPNauB72uvFJ.jpg', 'https://www.youtube.com/embed/y7FvxlnRbPM?si=ugmPG1h59fkWO0WX'),
(68, 'morbius-2022', 'MORBIUS (2022)', 'Daniel Espinosa', 'Dr. Michael Morbius (Jared Leto) adalah seorang ilmuwan jenius yang menderita penyakit darah langka. Dalam usahanya mencari obat, ia melakukan eksperimen dengan DNA kelelawar vampir dan terapi elektroshok. Namun, eksperimen ini memiliki efek samping mengerikan: Morbius berubah menjadi makhluk haus darah dengan kekuatan super, kecepatan luar biasa, kemampuan ekolokasi, dan kemampuan penyembuhan yang cepat.', 'movies', 'https://i.pinimg.com/474x/2d/77/c1/2d77c1a281f34f6807056f697d539980.jpg', 'https://www.youtube.com/embed/oZ6iiRrz1SY?si=HRa3TleH555WWuiQ'),
(69, 'the-wild-robot-2024', 'THE WILD ROBOT (2024)', 'Chris Sanders', 'sebuah robot layanan yang terdampar di sebuah pulau tak berpenghuni setelah kapal yang membawanya mengalami kecelakaan. Untuk bertahan hidup, Roz harus beradaptasi dengan lingkungan barunya, membangun hubungan dengan satwa liar setempat, dan menjadi ibu angkat bagi seekor anak angsa yatim piatu. Perjalanan Roz mengeksplorasi tema adaptasi, persahabatan, dan apa artinya menjadi \"hidup\".', 'movies', 'https://i.pinimg.com/474x/e9/27/54/e927548b2883c9c84ea582ad078927b0.jpg', 'https://www.youtube.com/embed/67vbA5ZJdKQ?si=ro-5rffj4BXErnF6');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ratings`
--

CREATE TABLE `ratings` (
  `id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `movies_id` int(255) NOT NULL,
  `rating` int(255) NOT NULL,
  `review` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `username`, `movies_id`, `rating`, `review`) VALUES
(7, 1, 'admin', 14, 4, 'Seru'),
(8, 1, 'aril', 14, 4, 'Good film'),
(9, 1, 'admin', 14, 4, 'kece'),
(10, 1, 'aril', 32, 5, 'wawww'),
(11, 2, 'depa', 14, 5, 'keren banget'),
(12, 1, 'aril', 15, 4, 'apa'),
(13, 1, 'aril', 36, 5, 'keren banget omaygat'),
(14, 1, 'admin', 15, 3, 'bagus'),
(15, 2, 'depa', 16, 5, 'ihh keren');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'aril', 'aril@gmail.com', '123'),
(2, 'depa', 'depa@gmail.com', '123'),
(3, 'Erwin Neolaka', 'erwin@gmail.com', 'erwin123');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movies_id` (`movies_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT untuk tabel `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`id`),
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
