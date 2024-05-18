-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Agu 2023 pada 14.19
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk_disporapar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif`
--

CREATE TABLE `alternatif` (
  `id_alternatif` int(10) NOT NULL,
  `nm_alternatif` varchar(35) NOT NULL,
  `keterangan` text NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `alternatif`
--

INSERT INTO `alternatif` (`id_alternatif`, `nm_alternatif`, `keterangan`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'Buper Palutungan', 'Nama Palutungan ini diambil dari lutung, sejenis kera yang dahulu banyak ditemukan di sekitar Gunung Ciremai. Luas lahan ini sekitar 50 hektar dengan dilengkapi sebuah air terjun bernama Ciputri. Dari Palutungan melewati jalan setapak sekitar 300 itulah letak Curug Ciputri. Air terjun beserta bumi perkemahan ini sangat populer di kalangan pendaki sehingga banyak juga pengunjung yang betah berlama-lama di kawasan wisata ini.\r\n\r\nObjek wisata Palutungan ini termasuk kategori wisata alam. Daya tarik wisata ini adalah sensasi alami bumi perkemahaannya serta panorama hutannya yang masih sangat asri. Wisata alam ini juga cukup sejuk karena suhunya berkisar antara 20 – 24 celcius.\r\n\r\nAda sejarah unik dibalik wisata bumi perkemahan ini.  Konon dahulu kala ketika zaman kolonial Belanda, para tuan-tuan Belanda dalam usahanya untuk mendapatkan putri yang cantik maka putrinya harus dimandikan di air terjun atau curug. Air terjun inilah yang sering dipakai mandi putri-putri Belanda sehingga namanya menjadi Curug Putri.\r\n\r\nKetinggian Curug Putri mencapai sekitar 20 meter. Sumber airnya berasal dari mata air Gunung Ciremai.  Selain mengunjungi Curug Putri untuk berekreasi, banyak pengunjung yang datang mencari keberkahan, mendapatkan jodoh, pekerjaan dan lain sebagainya. Biasanya Curug Putri ini ramai saat bulan suci Ramadhan akan tiba karena banyak pengunjung yang mensucikan diri disini.\r\nBumi perkemahan ini berlokasi di Desa Palutungan, Kecamatan Cigugur, Kabupaten Kuningan. Untuk menuju Palutungan bisa ditempuh dengan kendaraan roda empat maupun roda dua bahkan untuk yang datang berombongan menggunakan jas bus pun bisa masuk. Jarak Palutungan dari pusat kota Kuningan sekitar 11 kilometer. Kondisi jalannya sudah beraspal sehingga nyaman untuk dilalui.', 'alternatif1693457314.jpg', '2023-08-29 15:03:11', '2023-08-31 11:48:34'),
(2, 'Talaga Surian Camp Park', 'Talaga Surian Camp Park merupakan ODTW(Obyek Daya Tarik Wisata) yang berlokasi di Desa Puncak, Kecamatan Cigugur, Kabupaten Kuningan, Jawa barat. Jarak dari Kota Kuningan sejauh 5 km bisa di tempuh dengan kendaraan roda dua atau roda empat , lokasi tersebut berada di ketinggian 1000 mdpl dengan suhu rata rata 25 derajat cc.\r\nAkses jalan cukup bagus bisa di tempuh melalui jalur palutungan ataupun jalur sukamulya, cileuleuy dan langsung menuju lokasi Desa puncak, bisa ditempuh dengan perjalanan kurang lebih 1 jam dari pusat kota Kuningan.\r\n', 'alternatif1693322151.jpg', '2023-08-29 15:15:51', NULL),
(3, 'Curug Landung', 'Curug Landung menjadi obyek wisata alam di Kuningan yang rekomended untuk anda kunjungi ketika liburan akhir pekan bersama keluarga. Kuningan menjadi tempat wisata rekomended di Jawa Barat selain Bandung dan juga Sukabumi. \r\n\r\nBanyak sekali destinasi wisata menarik di Kuningan yang akan membawa liburan anda semakin berkesan dan tak terlupakan. Salah satunya yaitu Curug Landung. Air terjun satu ini bisa anda kunjungi untuk memuaskan waktu liburan anda beserta orang tercinta di Kuningan.\r\n\r\n\r\nNikmati pesona Air Terjun Landung Kuningan dengan air yang jernih dengan panorama alam hijau yang menenangkan. Manjakan jiwa anda dengan keindahan dan pesona dari Curug Landung Kuningan Jawa Barat. Ketika anda berencana mengunjungi obyek wisata Curug Landung, jangan buru-buru. Berikut informasi wisata Curug Landung yang bisa anda jadikan referensi kunjungan berlibur agar semakin menyenangkan.', 'alternatif1693322286.jpg', '2023-08-29 15:18:06', NULL),
(4, 'Tenjo Laut', 'Tenjo Laut adalah tempat wisata Kuningan, Jawa Barat, dengan daya tarik pesona alam pegunungan dan fasilitas glamping. Terletak di kawasan Taman Nasional Gunung Ciremai Kuningan, tempat ini berhawa sejuk dan berudara dingin.\r\n\r\nTempatnya sangat asik untuk menjadi lokasi wisata bersama orang tercinta. Bisa dengan keluarga, sahabat, pasangan, atau komunitas. Fasilitasnya juga terhitung lengkap, baik fasilitas umum maupun fasilitas penunjang wisata.\r\n\r\nHal paling menarik dari tempat wisata ini adalah daya tariknya yang beragam dan juga tiket masuk wisata yang murah. Hal menarik lainnya yaitu terkait dengan sejarah Tenjo Laut Kuningan ini.\r\n\r\nDahulu, tempat ini menjadi lokasi para pejuang untuk memata-matai kapal-kapal Belanda yang singgah di dermaga. Cerita ini lantas dikaitkan dengan asal usul nama dari tempat ini.\r\nTenjo Laut adalah sebuah kawasan wisata yang tak kalah menarik dengan pemandangan ala puncak yang menyejukkan mata, terletak di sekitar Taman Nasional Gunung Ciremai dan persisnya di sebelah barat lembaga rehabilitasi BNN, Jalan Palutungan, Dusun Palutungan, Desa Cisantana, Kecamatan Cigugur, Kabupaten Kuningan, Jawa Barat, dengan jarak sekitar 14 km dari pusat Kota Kuningan dan jarak tempuh sekitar 35 menit. Anda dapat pergi ke tempat wisata tersebut menggunakan kendaraan pribadi, dengan jalan yang mulus dan juga akan melewati jalan menanjak yang akan menjurus ke Desa Cisantana.', 'alternatif1693322558.jpg', '2023-08-29 15:22:38', NULL),
(5, 'Sukageri View', 'Sukageuri View menjadi tempat menarik di Kuningan yang rekomended untuk anda kunjungi ketika berlibur. Pemandangan sunrise yang mempesona menjadi daya tarik utama yang disajikan oleh Sukageuri View Kuningan.\r\n\r\nKabupaten Kuningan memang menjadi salah satu kota di Jawa Barat yang menyajikan destinasi-destinasi wisata rekomended. Sajian wisata alam dengan pesona keindahannya akan memanjakan aktivitas liburan anda dan keluarga di Kuningan Jawa Barat. Salah satunya yaitu Sukageuri View.\r\n\r\nNikmati keindahan pesona wisata Sukageuri View dengan sunrise yang dilengkapi dengan spot foto instagenic anti mainstream. Selain pemandangan sunrise, sajian panorama perbukitan hijau akan mendamaikan jiwa anda ketika berkunjung. Rasa penat akan suasana perkotaan tidak akan anda rasakan, manjakan jiwa anda dengan pesona keindahan dari bukit Sukageuri View.\r\nSukageuri View sendiri bisa anda kunjungi dengan mudah, karena akses lokasi yang baik dan bisa anda kunjungi menggunakan kendaraan. Alamat lengkap dari Sukageuri View sendiri berada di Jl. Palutungan, Cisantana, Kec. Cigugur, Kabupaten Kuningan, Jawa Barat. \r\n\r\nObyek wisata Sukageuri View berjarak kurang lebih 8 km dari pusat kota Kuningan. Anda bisa mengunjungi obyek wisata Sukageuri View menggunakan kendaraan dengan waktu tempuhnya sekitar 20 menit perjalanan. \r\n', 'alternatif1693322776.jpg', '2023-08-29 15:26:16', NULL),
(6, 'Pondok Cai Pinus', 'Pondok Cai Pinus tidak kalah menarik untuk dijadikan tujuan berwisata, apalagi untuk anda yang gemar mengambil beberapa foto atau video yang keren.\r\n\r\nTempat wisata yang satu ini sebenarnya merupakan sebuah cafe atau restoran yang dilengkapi dengan berbagai spot foto keren, serta fasilitas penunjang lainnya. Selalu ramai dikunjungi apalagi jika akhir pekan dan juga hari libur.\r\n\r\nMenjadi tempat wisata di Kuningan yang menyuguhkan panorama alam yang indah berpadu dengan penataan yang sangat kekinian dan Instagramable.\r\nLokasi pemberangkatan menuju Pondok Cai Pinus ini, anda bisa memulai dari pusat kota yaitu Alun-Alun Kabupaten Kuningan. Dari sana anda ambil arah timur laut di Jalan Aria Andaning.\r\n\r\nKemudian belok ke sebelah kiri menuju Jalan Veteran lalu belok kanan ke Jalan Nanggeleng – Cirahayu/ Jalan Syeh Maulana Akbar.\r\n\r\n\r\nSetelah 86 m belok kiri untuk mengemudi di Jalan Raya Cigugur setelah itu terus lurus melewati Jalan Cigugur – Palutungan, Jalan Raya Cisantana, Jalan Malaraman, Jalan Pejabon-Sagara Hiang.\r\n\r\nDengan jarak tempuh sekitar 8,4 km dan estimasi waktunya kira-kira 18 menit saja. Jalan menuju Pondok Pinus Kuningan dapat dilalui oleh mobil maupun motor.', 'alternatif1693323576.jpg', '2023-08-29 15:39:36', NULL),
(7, 'Bumi Perkemahan Ipukan', 'Bumi Perkemahan Ipukan menjadi tempat yang rekomended untuk piknik bersama keluarga maupun teman-teman ketika hari libur. Destinasi wisata satu ini menyajikan spot camping menarik yang akan memanjakan liburan anda dan keluarga.\r\n\r\nPecinta alam wajib banget menikmati sensasi camping di Star Camp Ipukan Kuningan Jawa Barat. Keindahan panorama alam, suasana yang menenangkan dengan spot instagenicnya siap memanjakan dan mewujudkan impian liburan yang anda inginkan di Kuningan.\r\n\r\n\r\nNikmati sensasi liburan yang semakin menyenangakan dengan mengunjungi obyek wisata Bumi Perkemahan Ipukan. Karena selain caping area yang rekomended, terdapat juga spot wisata lainnya. Seperti air terjun, spot foto, outbond dan playground seru di Bumi Perkemahan Ipukan.\r\n\r\nKetika anda berencana mengunjungi Bumi Perkemahan Ipukan ketika berlibur di Kuningan Jawa Barat. Berikut informasi wisata Bumi Perkemahan Ipukan yang bisa anda jadikan referensi liburan sebelum berkunjung.\r\nObyek wisata BuPer Ipukan bisa anda kunjungi dengan mudah, karena jalan yang sudah baik dan bisa anda tempuh menggunakan kendaraan. Untuk alamat lengkap dari Bumi Perkemahan Ipukan berada di Jl. Palutungan, Cisantana, Kec. Cigugur, Kabupaten Kuningan, Jawa Barat.\r\n\r\nJika anda berangkat dari pusat kota Kuningan, Destinasi wisata Bumi Perkemahan Ipukan berjarak kurang lebih 10 km dari pusat kota. Anda bisa berkunjung menggunakan kendaraan dengan waktu tempuh sekitar 20 menit perjalanan.\r\n\r\nKetika anda berencana mengunjungi obyek wisata Bumi Perkemahan Ipukan namun bingung rute perjalanan terbaik. Berikut peta lokasi dari Bumi Perkemahan Ipukan yang bisa anda akses untuk mempermudah perjalanan liburan anda.', 'alternatif1693323723.jpg', '2023-08-29 15:42:03', NULL),
(8, 'Taman Cisantana', 'Taman Cisantana menjadi obyek wisata keluarga di Kuningan Jawa Barat yang rekomended untuk anda kunjungi ketika berlibur. Sajian taman dengan landscape alam yang indah akan memenjakan jiwa anda yang sedang jenuh dan penat akan aktivitas sehari-hari.\r\n\r\nKuningan memang istimewa dengan destinasi wisata alam yang mempesona, salah satunya yaitu Taman Cisantana Kuningan. Taman Cisantana sendiri berlokasi di area pegunungan, sehingga udara yang segar dan pemandangan alam yang indah akan merefresh kejenuhan.\r\n\r\n\r\nTempat ini sangat rekomended dengan keindahannya. Taman Cisantana menjadi salah satu tempat rekomended di Cigugur Jawa Barat. Selain kawasan Palutungan, Ipukan, Tenjo Laut, Ipukan, tempat ini akan memanjakan liburan anda dan keluarga dengan pesona wisatanya.\r\nTaman Cisantana Cigugur bisa anda kunjungi dengan mudah, karena lokasinya bisa anda akses menggunakan kendaraan dengan jalan yang sudah baik. Alamat lengkap dari Taman Cisantana berlokasi di Cisantana, Cigugur, Kuningan Regency, Jawa Barat.\r\n\r\nAnda bisa mengunjungi obyek wisata Taman Cisantana Kuningan menggunakan kendaraan dengan waktu tempuh kurang lebih 15 perjalanan. Karena lokasi Taman Cisantana berjarak sekitar 7 km dari pusat kota Kuningan.', 'alternatif1693323840.jpg', '2023-08-29 15:44:00', NULL),
(9, 'Hutan Kota Bungkirit', 'Hutan Kota Bungkirit adalah salah satu wisata alam sebagai tempat rekreasi yang mempesona. Berada kurang lebih 2 km dari alun-alun Kuningan, saat ini Hutan Kota Bungkirit menjadi tempat warga Kuningan untuk berkumpul dan berolah raga pada saat pagi hari. Dan akan sangat penuh dengan pengunjung saat hari libur atau akhir pekan. Untuk lokasinya berada di Kuningan, Kec. Kuningan, Kabupaten Kuningan, Jawa Barat \r\n\r\nUntuk masuk Hutan Kota Bungkirit tidak dipungut biaya alias gratis hanya jika anda membawa kendaraan maka akan ditagih uang parkir sesuai dengan kendaraan yang anda bawa. Kendaraan yang anda bawa bisa kita bawa ke Puncak Bukit Bungkirit atau tengah-tengah Hutan. Hutan Kota Bungkirit  sendiri adalah sebuah bukit yang telah ditata sedemikian rupa sehingga menjadi sangat rapi dengan taman-tamannya yang dilengkapi dengan mainan anak-anak seperti ayunan dan perosotan.\r\n\r\nSepanjang jalan di Hutan Kota Bungkirit tidak dalam kondisi masih tanah, melainkan telah dipasang batuan dan terdapat tangga-tangga dilengkapi pula besi untuk tangan berpegangan. anda bisa jalan-jalan mengelilingi Hutan Kota Bungkirit, anda akan melihat Pabrik Tahu Lamping di sebelah bawah Bukit karena bukit ini tepat di atas Pabrik-pabrik Tahu khas Kuningan. Kita juga bisa melihat sawah-sawah yang terbentang karena jalan ini ujungnya akan tembus ke makam pahlawan yang ada di bukit yang lain.\r\n\r\nAntara Makam Pahlawan dengan Hutan kota Bungkirit terdapat jembatan panjang yang sangat seru jika anda melewatinya. Setelah lelah jalan-jalan jangan khawatir jika anda tidak membawa makanan atau minuman, karena terdapat pula warung yang selalu buka jika kita membutuhkan makanan dan minuman. Di Hutan Kota Bungkirit ini juga terdapat Gajebo-gajebo yang bisa anda sewa dan pakai jika kita ingin berkumpul dengan keluarga dan makan bersama. Selain dekat dengan pusat kota, Hutan Kota Bungkirit juga memiliki tempat yang sangat sejuk untuk kita kunjungi.', 'alternatif1693324083.jpg', '2023-08-29 15:48:03', NULL),
(10, 'Hutan Kota Mayasih ', 'Hutan Kota Mayasih merupakan satu area hutan yang terletak di Desa Cigugur. Sesuai namanya Mayasih area hutan ini terletak di blok Mayasih.\r\n\r\nLuas area lahan Hutan Kota Mayasih ini mencapai 3Ha dengan ketinggian 620 meter di atas permukaan laut. Tujuan dibangunnya area hutan ini salah satunya untuk serapan air.\r\n\r\nHutan Kota Mayasih mulai diresmikan dan dibuka untuk umum pada tahun 2014. Meski difungsikan sebagai area serapan air namun karena area Hutan Kota Mayasih ini memiliki panorama yang indah sehingga area ini dibuka bagi umum untuk beragam keperluan salah satunya untuk wisata.\r\n\r\nSejak mulai dibuka untuk umum jumlah pengunjung yang mengunjungi Hutan Kota Mayasih ini semakin ramai terlebih ketika libur panjang atau weekend tiba. Salah satu alasannya adalah selain karena suguhan view panoramanya yang indah, untuk masuk ke area ini para pengunjung tidak dikenakan biaya, cukup membayar biaya parkir saja.\r\n\r\nSebelum menjadi area hijau yang diperuntukan untuk umum, area hutan ini merupakan kawasan penambangan batu.\r\n\r\nSisa-sisa bebatuannnya sendiri masih terlihat, bahkan menjadi salah satu daya tarik utama bagi para pengunjung. Untuk ukuran batu-batunya sendiri beragam. Selain itu daya tarik lain dari kawasan Hutan Kota Mayasih adalah terdapatnya beberapa gazebo, serta taman yang cukup nyaman untuk berteduh.', 'alternatif1693326121.jpeg', '2023-08-29 16:22:01', NULL),
(11, 'Waduk Darma', 'Waduk Darma Kuningan menjadi destinasi wisata kebanggaan masyarakat Kabupaten Kuningan, Jawa Barat. Hal tersebut dikarenakan panorama alam yang disuguhkan, seolah memiliki magic tersendiri.\r\n\r\nWaduk yang memiliki luas sekitar 425 hektar itu seolah menjadi primadona yang memanjakan mata, menenangkan pikiran, serta menikmati suasana yang sempurna.\r\n\r\nLokasi yang sangat strategis ini sering dikunjungi oleh para pengunjung untuk berwisata, berolahraga, berekreasi, maupun memancing.\r\n\r\n\r\nDengan dikelilingi pegunungan hijau yang berdiri kokoh, seolah sedang memeluk Waduk Darma Kuningan yang ada ditengah-tangahnya. Keindahan yang ditawarkan sangat sayang apabila dilewatkan begitu saja.\r\n\r\n\r\nWaduk Darma Kuningan memiliki fungsi untuk mengairi areal pesawahan, dan adapun sumber airnya yaitu bersumber dari Sungai Cinangka dan Sungai Cisalak.\r\n\r\nKondisi Waduk Darma Kuningan saat ini sangat terawat dan terjaga. Jadi kamu dijamin nyaman untuk berlama-lama berada di Waduk Darma Kuningan.\r\n\r\nWisata Waduk Darma Kuningan memiliki banyak sekali fasilitas yang bisa kamu manfaatkan untuk mengisi waktu hulang healing bersama teman-teman, ataupun bersama pasangan.\r\n\r\nNah, selain menawarkan keindahan alamnya yang memukau, Waduk Darma Kuningan juga dihiasi misteri yang konon katanya waduk ini dihuni oleh Siluman Belut Putih berukuran besar.\r\n\r\n\r\nWaduk Darma Kuningan ini ibarat hamparan pantai bagi masyarakat Kuningan, karena seperti yang kita tahu bahwa Kabupaten Kuningan tidak memiliki pantai.\r\n\r\nMenikmati malam di Waduk Darma Kuningan Kuningan dengan ditemani cita rasa kuliner Khas Kuningan membuat liburan kamu semakin sempurna.\r\nAdapun rute menuju Waduk Darma Kuningan, kamu bisa mengikuti rute perjalanan berikut ini dengan lokasi pemberangkatan dari Alun-Alun Kabupaten Kuningan.\r\n\r\nAmbil arat timur laut di Jalan Aria Kamuning, kemudian belok kiri ke Jalan Veteran dan terus berkendara sejauh 1,6 km. Teruskan perjalanan kamu untuk menyusuri Jalan Naggeleng – Cirahayu – Jalan Raya Cigadung kemudian belok kiri ke Jalan Desa Darma.\r\n\r\n\r\nSetelah 400 m belok kanan menuju ke Jalan Alun-alun selatan. Terus ikuti untuk kemudian masuk ke Jalan Paleben. Setelah 110 m kamu akan segera tiba di Waduk Darma Kuningan.', 'alternatif1693326391.jpg', '2023-08-29 16:26:31', NULL),
(12, 'Curug Bangkong', 'Curug Bangkong menjadi salah satu destinasi wisata alam yang rekomended untuk menghabiskan waktu libur akhir pekan di Kuningan Jawa Barat. Kabupaten Kuningan memang menjadi salah satu kunjungan wisata populer di Jawa Barat dengan pesona dan keindahan destinasi alamnya.\r\n\r\nSalah satunya yaitu Curug Bangkong, sajian air terjun mempesona dengan air jernih, alam hijau dan suasana yang menenangkan. Tempat yang cocok untuk merefresh pikiran dan kepenatan jiwa. Rasa jenuh dengan suasana perkotaan, bosan lama dirumah saja, maupun penat akan beban pekerjaan. Akan hilang seketika ketika anda berkunjung ke Curug Bangkong Kuningan.\r\n\r\n\r\nNikmati liburan yang menyenangkan di Kuningan Jawa Barat dengan sajian pesona air terjun dengan ketinggian sekitar 20 meter satu ini.\r\nUntuk berkunjung ke Curug Bangkong, anda tidak akan merasa kesulitan. Karena lokasinya bisa anda akses menggunakan mobil dengan rute jalan yang sudah baik. Alamat lengkap dari Curug Bangkong sendiri berada di Kertawirama, Nusaherang, Kabupaten Kuningan, Jawa Barat.\r\n\r\nDestinasi wisata alam Curug Bangkong sendiri berjarak kurang lebih 9 km dari pusat kota Kuningan. Anda bisa berkunjung menggunakan kendaraan dengan waktu tempuh sekitar 20 menit perjalanan.', 'alternatif1693326530.jpg', '2023-08-29 16:28:50', NULL),
(13, 'Situ Wulukut', 'Situ Wulukut yang terletak di Kuningan ini menawarkan pesona keindahan danau jernih dengan nuansa asri dan sejuk. Danau ini berada di tengah hutan dan dikelilingi oleh pohon hijau rindang yang membuat pemandangan semakin indah bak lukisan.\r\n\r\nSuasana damai, sejuk, dan tenang yang disajikan oleh wisata ini sangat cocok untuk menyegarkan pikiranmu. Selain itu, tak hanya pemandangan alamnya saja yang sangat indah, wisata ini juga banyak menyediakan spot foto instagramable.\r\n\r\n\r\nJadi, bagi wisatawan yang ingin mendapatkan pemandangan alam cantik sekaligus mendapatkan spot foto menarik, tempat ini sangatlah tepat. Berbagai wahana seperti perahu juga akan kamu jumpai untuk bisa berkeliling danau sembari mendayung.\r\nObyek wisata wulukut beralamat di Desa Kertayuga, Kecamatan Nusaherang, Kabupaten Kuningan, Jawa Barat. Jalan ke Situ Wulukut cukup mudah karena sudah diaspal halus dan dapat dilalui oleh berbagai macam jenis kendaraan bermotor.\r\n\r\nRute yang bisa kamu tempuh untuk sampai ke wisata Wulukut, bisa dimulai dari pusat kota Kuningan. Estimasi waktu tempuh yang dibutuhkan dari pusat kota Kuningan sampai ke Situ Wulukut sekitar 20-30 menit perjalanan.\r\n\r\nKamu bisa memulai keberangkatan dari alun-alun menuju Jalan Aria Kamuning, kemudian belok kiri menuju Jl. Veteran. Setelah itu, lanjut ke Jalan Raya Cigadung dan belok ke arah kiri di dekat Gapura lalu menuju arah Desa Nusaherang.\r\n\r\nTerus telusuri jalan hingga sampai di Windusari lalu Desa Kertayuga. Setelahnya belok ke arah kiri di dekat Kantor Desa Kertayuga, dan telusuri jalan hingga bertemu obyek wisata Situ Wulukut.', 'alternatif1693326647.jpg', '2023-08-29 16:30:47', NULL),
(14, 'Situ Cicerem', 'Situ Cicerem menjadi obyek wisata alam yang rekomended untuk liburan akhir pekan bersama keluarga maupun teman tercinta. Keunikan dari Situ Cicerem sendiri yaitu air telaga yang jernih kebiruan dengan sajian ikan-ikan hias yang mempesona.\r\n\r\nDestinasi wisata Situ Cicerem menjadi salah satu tujuan wisata populer di Kuningan. Obyek wisata wajib untuk dikunjungi ketika berlibur di Kuningan. Selain panorama pemandangan Situ Cicerem yang mempesona, terdapat spot foto anti mainstream yang akan memanjakan perjalanan liburan anda.\r\nRasa jenuh dan penat akan hirMenjadi salah satu destinasi kunjungan wisata populer di Kuningan Jawa Barat, Situ Cicerem bisa anda kunjungi dengan mudah. Karena akses jalan yang baik dengan plang penunjuk arah yang akan memudahkan kunjungan anda di Telaga Biru Situ Cicerem.\r\n\r\nUntuk alamat lengkap dari Situ Cicerem berada di Jl. Kaduela, Kaduela, Pasawahan, Kabupaten Kuningan, Jawa Barat. Lokasinya berjarak kurang lebih 30 km jika anda berangkat dari pusat kota Kuningan.\r\n\r\nAnda bisa mengunjungi obyek wisata Telaga Situ Cicerem menggunakan kendaraan dengan menempuh perjalanan sekitar 1 jam.uk pikuk perkotaan tidak akan anda rasakan ketika mengunjungi obyek wisata Situ Cicerem Kuningan. Situ Cicerem rekomended untuk anda kunjungi ketika berlibur, banyak spot foto dan keunikan lainnya yang di sajian tempat ini\r\n', 'alternatif1693326922.jpg', '2023-08-29 16:35:22', NULL),
(15, 'Telaga Remis', 'Telaga Remis menjadi tempat wisata yang paling sering dikunjungi oleh para wisatawan, tepatnya di tahun 1980 hingga 1990-an.\r\n\r\nBahkan karena ramainya pengunjung yang datang, tempat wisata ini sampai dibuatkan lagu oleh Nano S. dengan judul lagu Telaga Reumis dan dinyanyikan oleh Nining Meida.\r\n\r\nTelaga Remis tentu menjadi lokasi yang romantis, apalagi kalau anda berkunjung dengan kekasih hati. Seperti halnya lagu romantis berbahasa Sunda tersebut\r\n\r\nMembahas soal tempat wisata Telaga Remis ini rasanya menjadi tempat yang paling lengkap ya. Mulai dari suasana yang nyaman, suhu di Telaga Remis juga terkenal dengan kesejukannya, dan tidak hanya itu Telaga Remis juga terkenal dengan keromantisannya\r\nTelaga Remis menjadi bagian dari Wisata Cirebon yang paling banyak didatangi oleh para wisatawan dari berbagai daerah di Indonesia.\r\n\r\nMungkin anda akan sedikit kebingungan mengenai dimana lokasi Telaga Remis, karena secara administratif berada di Kabupaten Kuningan namun secara geografis lebih dekat ke Kota Cirebon. Oleh karenanya banyak juga pengunjung yang menyebut Telaga Remis Cirebon, atau Telaga Remis Kuningan.\r\n\r\n\r\nSecara adminitratif tempat wisata Telaga Remis ini berada di Desa Kaduela, Kecamatan Pasawahan, Kabupaten Kuningan, Jawa Barat.\r\n\r\nApabila anda berangkat dari Terminal Harjamukti Cirebon tinggal mengarahkan kendaraanmu ke selatan untuk menuju Jalan Pantura.\r\n\r\nAmbil Jalan Kalitanjung hingga tiba di Jalan Sunan Malik Ibrahim, terus saja melaju hingga tiba di Jalan Cisaat – Kramat. Selanjutnya tinggal mencari lokasi dari tempat wisata Telaga Remis. Rute yang dituju dapat pula mengikuti arahan ke Desa Wisata Cikalahang, karena searah.', 'alternatif1693327174.jpg', '2023-08-29 16:39:34', NULL),
(16, 'Telaga Nilem', 'Telaga Nilem menjadi tempat rekomended di Kuningan yang bisa anda kunjungi untuk menghabiskan waktu libur bersama orang tercinta. Kabupaten Kuningan Jawa Barat menjadi salah satu surga tersembunyi dengan pesona wisatanya.\r\n\r\nSalah satu destinasi wisata alam Kuningan yaitu Telaga Nilem. Pesona telaga dengan air jernih dan suasana alam yang tenang akan mendamaikan jiwa anda. Rasa penat, jenuh dan bosan akan hilang seketika ketika anda menikmati panorama alam yang mempesona dari obyek wisata satu ini.\r\n\r\n\r\nAktivitas berlibur dengan nuansa alam yang menenangkan pastinya menjadi hal yang dirindukan oleh banyak orang. Apalagi dengan sibuknya aktivitas pekerjaan, kuliah dan lainnya, pastinya butuh merefresh pikiran maupun badan. Manfaatkan waktu libur anda dengan mengunjungi obyek wisata Telaga Nilem  ketika berlibur di Kuningan Jawa Barat.\r\nKetika ingin mengunjungi obyek wisata Telaga Nilem Jawa Barat, anda tidak akan merasa kesulitan. Karena lokasinya mudah untuk anda kunjungi dengan akses jalan yang baik dan plang penunjuk arah.\r\n\r\nAlamat lengkap dari Telaga Nilem sendiri berada di Kaduela, Pasawahan, Kabupaten Kuningan, Jawa Barat. Obyek wisata Telaga Nilam sendiri berjarak kurang lebih 32 km dari pusat kota Kuningan. Anda bisa mengunjungi obyek wisata ini menggunakan kendaraan dengan waktu tempuh sekitar 1 jam perjalanan.', 'alternatif1693327316.png', '2023-08-29 16:41:56', NULL),
(17, 'Buper Paniis', 'Wisata Cipaniis berada di Kecamatan Pasawahan, Kuningan, yang akan memberikan sensasi berenang di aliran sungai yang jernih dengan hiasan bebatuan.\r\n\r\nWisata Cipaniis ini namanya diambil dari kata ‘Ci’ dan ‘Paniis’ dimana Ci artinya air dan paniis artinya tempat yang menenangkan.\r\n\r\nSelaras dengan namanya, destinasi Wisata Cipaniis Kuningan ini benar-benar menjadi tempat berkunjung yang menenangkan sekaligus menyenangkan.\r\nBanyak sekali daya tarik yang dimiliki Wisata Cipaniis, sekaligus mengundang kamu dan keluarga untuk datang ke salah satu tujuan wisata di Kuningan.\r\nRute menuju Wisata Cipaniis jika berangkat dari Alun-Alun Kabupaten Kuningan, yakni dengan menuju Jalan Aria Kamuning untuk selanjutnya ke Jalan Veteran.\r\n\r\nLalu mengemudilah di Jalan Nanggeleng – Cirahayu menuju Jalan Siliwangi di Joho. Setelah 2,5 km ambil Jalan Raya Jalaksana dan Jalan Madirancan ke Jalan Cirea – Pasawahan di Cirea sejauh 21,2 km.\r\n\r\n\r\nTetap kemudikan kendaraan kamu di Jalan Cirea – Pasawahan dan kamu akan sampai di lokasi Wisata Cipaniis, Kuningan. Waktu yang kamu butuhkan yaitu sekitar 53 menit, dengan jarak tempuh 26,4 km.\r\n\r\n', 'alternatif1693327519.jpg', '2023-08-29 16:45:19', NULL),
(18, 'Curug Sidomba', 'Di Kabupaten Jalaksana, Kuningan, terdapat sebuah tempat wisata yang sangat populer dan banyak dikunjungi oleh wisatawan yang datang dari berbagai daerah.\r\n\r\nNamanya ialah Curug Sidomba, dimana dilokasi ini kamu bisa melakukan banyak sekali ragam wisata\r\nCurug Sidomba berada di kawasan Objek Wisata Bumi Perkemahan Sidomba, ketika sudah tiba di gerbang pintu masuk kamu akan melihat betapa luasnya area tersebut.\r\n\r\n\r\nKetika memasuki area wisata tersebut kamu akan mendapati sebuah bangunan masjid yang sangat megah, dihiasi menara yang menjulang tinggi yang diberi nama ASMA’UL HUSNA, karena untuk menuju puncak menara kamu harus melalui tangga sebanyak 99 anak tangga.\r\n\r\nSaat kamu berada di atas menara, kamu akan melihat keindahan alam kaki Gunung Ciremai yang sebagian wilayahnya masih alami ditandai dengan rindangnya pepohonan.\r\n\r\nTak jauh dari mesjid megah tersebut pintu masuk menuju Curug Sidomba berada. Memasuki area Curug Sidomba kamu akan menemukan tempat untuk duduk-duduk santai.\r\n\r\nKemudian kamu akan disambut perpaduan antara pemadangan alam yang masih alami dengan pengelolaan tangan manusia. Kolaborasi yang menjadi nilai tambah dari Curug Sidomba ini.\r\n\r\nUntuk menuju Curug Sidomba kamu harus menuruni beberapa anak tangga yang dibuat berkelok-kelok, dengan tujuan selain untuk mempercantik keadaan juga untuk mengurangi curamnya trekking.\r\n\r\nSetelah menuruni anak tangga kamu harus melanjutkan perjalanan dengan menapaki jalan setapak yang telah tersusun rapih disampingnya terdapat aliran sungai yang mengalir.\r\nAliran sungai tersebut berisi ikan kancra emas atau kancra bodas, ikan tersebut tidak boleh dipancing ataupun diberi makan. Hamparan keindahan alam yang masih asri akan kamu dapatkan ketika menapaki jalan setapak.\r\n\r\nSekitar 300 meter jauhnya kamu berjalan akhirnya sampailah kamu di akhir jalan yang akan membawamu melihat Curug Sidomba lebih dekat.\r\n\r\n\r\nCurug Sidomba memiliki ketinggian sekitar 3 meter, air yang dialirkannya sangat jernih dan bersih. Kita dapat mendekati curahan airnya dari arah samping, Cuman untuk masuk kekolamnya sepertinya tidak bisa karena kasihan ikan yang ada dikolam tersebut.\r\nAirnya mengalir melalui sebuah batu besar, aliran airnya berasal dari mata air Gunung Ciremai sehingga sangat jernih dan menyegarkan. Di sekeliling Curug Sidomba ditumbuhi pepohonan tinggi dan yang sangat rindang.', 'alternatif1693327875.jpg', '2023-08-29 16:51:15', NULL),
(19, 'Desa Wisata Cibuntu', 'Desa Wisata (Tourism Village), merupakan suatu produk wisata yang melibatkan anggota masyarakat Desa dengan segala potensi yang dimilikinya. Pengembangan Desa Wisata tidak hanya berpengaruh pada ekonominya, tetapi juga sekaligus dapat melestarikan lingkungan alam dan sosial budaya masyarakat, terutama berkaitan dengan nilai-nilai kegotongroyongan dalam mengembangkan berbagai potensi serta aktivitas masyarakat, yang akan menjadi daya tarik tersendiri bagi wisatawan.\r\n\r\nPada tahun 2010 diadakan Nota Kesepahaman Kerjasama antara Pemerintah Kabupaten Kuningan dengan Sekolah Tinggi Pariwisata Trisakti Jakarta, tentang pengembangan Agroecotourism berbasis Organik untuk meningkatkan daya saing Kabupaten Kuningan. Kedua pihak memutuskan untuk mengambil tema Desa Wisata yang berlokasi di Desa Cibuntu Kecamatan Pasawahan.\r\n\r\nHal tersebut didasari pada kesiapan seluruh masyarakat lokal sebagai modal dasar pengembangan Desa Cibuntu sebagi Desa Wisata berbasis pemberdayaan masyarakat, serta potensi  sebaran cagar budaya dan potensi alam lainnya yang terdapat di Desa Cibuntu, maka berbagai upaya dilakukan melalui pembinaan, sosialisasi dan pelatihan yang mengarah pada pengembangan SDM kepariwisataan di Desa Cibuntu.\r\n\r\nPada tanggal 17 Februari Tahun 2012 dilaksanakan soft lounching Desa Wisata Cibuntu sekaligus pengukuhan Kelompok Sadar Wisata dan pembentukan sanggar seni. Pada tanggal 15 Desember 2012 dilaksanakan Lounching Desa Wisata Cibuntu yang dideklarasikan oleh Bapak Bupati Kuningan dan Ketua STP Trisakti Jakarta.\r\n\r\nTahun 2013, pembinaan dan pendampingan, serta pelatihan-pelatihan terus dilakukan oleh pihak akademisi maupun Dinas Pariwisata Kabupaten Kuningan, seperti pelatihan masak, pengembangan kuliner, pengembangan homestay, pemandu wisata, penyusunan paket wisata, pelatihan pengembangan kesenian, workshop kerajinan dan pelatihan dasar-dasar ilmu kepariwisataan,\r\n\r\nTahun 2014, dilakukan penataan sarana fisik oleh Dinas Pariwisata berupa Gazebo, toilet, Pusat Informasi Pariwisata dan sarana penunjang lainnya, melalui APBD Kabupaten hingga APBD Provinsi, sementara pihak Desa terus melakukan konservasi dan reklamasi lahan non produktif seoptimal mungkin.\r\n\r\nTahun 2015 hingga 2016, tingkat kunjungan wisatawan semakin meningkat, maka dari itu dilakukan pendampingan dan pelatihan managerial pengelolaan Desa Wisata pada Kelompok Sadar Wisata Cibuntu, dengan tujuan meningkatkan prefesionalisme pengelolaan yang akan berdampak pada image Kuningan sebagai Daerah Tujuan Wisata.\r\n\r\nTahun  2016 hingga 2021, mendapatkan beberapa prestasi diantaranya CBT peringkat ke 2 Nasional, Homestay peringkat ke 5 Asean,  Aword ISTA  katagori green(tata kelola pariwisata), predikat sebagai Inisiator Desa Wisata dari Bupati Kuningan pada Sidang Paripurna DPRD Kabupaten Kuningan, 8 besar desa Brilian dari BRI.\r\n ', 'alternatif1693328026.jpg', '2023-08-29 16:53:46', NULL),
(20, 'Lembah Cilengkrang', 'Lembah Cilengkrang menjadi salah satu destinasi wisata alam di Kuningan yang rekomended untuk berlibur. Sajian alam Lembah Cilengkrang akan merefresh kejenuhan, rasa penat dan bosan lama dirumah saja maupun hiruk pikuk suasana perkotaan.\r\n\r\nKuningan Jawa Barat memang menjadi salah satu daerah dengan kunjungan destinasi wisata populer. Sehingga Kabupaten satu ini menyajikan destinasi wisata yang rekomended dengan berbagai macam pesonanya. Salah satu obyek wisata rekomended di Kuningan yang wajib untuk anda kunjungi ketika berlibur yaitu Lembah Cilengkrang.\r\n\r\n\r\nSajian alam yang mempesona di Lembah Cilengkrang akan mendamaikan jiwa siapa saja yang mengunjunginya. Nikmati liburan yang tak terlupakan di Kuningan bersama keluarga tercinta dengan mengunjungi obyek wisata Lembah Cilengkrang Kuningan Jawa Barat.\r\nUntuk mengunjungi obyek wisata Lembah Cilengkrang, anda tidak akan merasa kesulitan karena lokasinya sudah bisa anda kunjungi menggunakan kendaraan. Alamat lengkap Lembah Cilengkrang sendiri berada di Pajambon, Kec. Kramatmulya, Kabupaten Kuningan, Jawa Barat.\r\n\r\nLembah Cilengkrang berjarak kurang lebih 18 km dari pusat kota Kuningan, bisa anda tempuh dalam waktu sekitar 20 menit perjalanan.', 'alternatif1693328237.jpg', '2023-08-29 16:57:17', NULL),
(21, 'Kebun Raya Kuningan', 'Kebun Raya Kuningan menjadi obyek wisata alam yang rekomended untuk menghabiskan waktu libur bersama keluarga tercinta. Rasa jenuh akan beban pekerjaan dan suasana hiruk pikuk perkotaan bisa anda refresh dengan mengunjungi kebun raya kuningan. \r\n\r\nTaman bunga mempesona dengan koleksi tanaman langka bisa anda lihat ketika berkunjung ke tempat ini. Destinasi wisata Kebun Raya Kuningan sendiri berada dikaki gunung Ciremai. Sehingga pemandangan alam yang mempesona akan tersaji untuk anda ketika berkunjung.\r\n\r\n\r\nLuas dari Kebun Raya Kuningan sendiri mencapai 156 hektar dengan koleksi mencapai 23.000 jenis tanaman. Sehingga anda bisa puas mengexplore Kebun Raya Kuningan bersama orang tercinta ketika berlibur.\r\nBerkunjung ke Kebun Raya Kuningan kini tidak perlu khawatir karena lokasinya bisa anda kunjungi dengan menggunakan kendaraan. Akses jalan yang sudah baik dan plang penunjuk arah yang tersedia akan memudahkan kunjungan liburan anda.\r\n\r\nUntuk alamat lengkap Kebun Raya Kuningan sendiri berada di Kantor UPTD Kebun Raya, Kuningan, Padabeunghar, Pasawahan, Kabupaten Kuningan, Jawa Barat. Kebun Raya Kuningan sendiri dikenal dengan nama Taman Tematik Bunga Kuning.\r\n\r\nObyek wisata Kebun Raya Kuningan berjarak kurang lebih 35 km dari pusat kota Kuningan Jawa Barat. Destinasi wisata Kebun Raya Kuningan bisa anda kunjungi menggunakan kendaraan dengan waktu tempuh sekitar 60 menit perjalanan.', 'alternatif1693328676.jpg', '2023-08-29 17:04:36', NULL),
(22, 'Taman Batu Hanjuang', 'Taman Batu Hanjuang adalah wisata alam kebanggaan kabupaten Kuningan.\r\n\r\nDi Taman Batu Hanjuang  ini, pengunjung bisa menikmati taman yang indah yang berpagar bukit batu alami serta hutan kota yang asri. Selain itu, lokasi wisata yang berada di atas ketinggian membuat udara di sini sejuk dan bersih.\r\n\r\n\r\nDi sini pengunjung bisa melihat pemandangan bebatuan yang eksotis.\r\n\r\nBatu-batu gunung yang tersusun rapi dengan berbagai ukuran serta sudah dijadikan sebagai spot foto yang instagramable. Jika berfoto di sini hasilnya pasti eksotis.\r\n\r\nDi tengah lokasi terdapat kolam renang yang luas. Pengunjung bisa berenang dan bermain air di sana sembari menikmati keindahan pemandangan sekitar kolam.\r\n\r\nTaman Batu Hanjuang benar-benar memberikan pengalaman wisata yang wah.\r\nTaman Batu Hanjuang ini beralamat di Desa Setianegara Kecamatan Cilimus Kuningan.\r\n\r\nSebuah lokasi yang sangat mudah diakses terutama dari Kota Kuningan yang hanya berjarak 17 km saja dan bisa diakses selama 15 menit perjalanan.\r\n\r\nJika ikut jalur dari Kota Kuningan silakan berangkat melalui Jalan Siliwangi.\r\n\r\nLajukan kendaraan lurus saja hingga tiba di jalan raya Laksana setelah itu belok ke jalan Bojung Linggar Jati.\r\n\r\nJika sudah sampai di Taman Linggar Jati tinggal mengikuti papan nama menuju Taman Batu Hanjuang.', 'alternatif1693328864.jpg', '2023-08-29 17:07:44', NULL),
(23, 'Woodland', 'Woodland Kuningan mulai dibuka untuk umum pada akhir tahun 2019, meski terbilang masih baru tempat wisata di Kuningan yang satu ini tak pernah sepi dari kunjungan wisatawan yang ingin berakhir pekan.\r\n\r\nWoodland Kuningan menempati lahan yang cukup luas, dengan hiasan pepohonan rindang hampir di setiap sisinya. Sehingga udara yang dirasa segar dan juga adem banget meski datang di siang hari.\r\n\r\nTempat wisata baru ini dapat menjadi referensi wisata kamu ketika berada di Kuningan, Jawa Barat. Setelah sebelumya kami sudah mengulas tempat wisata di Kuningan yang nggak kalah menarik dan pastinya seru banget.\r\nJalan menuju Woodland Kuningan jika berangkat dari pusat kota Kuningan, ialah dengan menuju Jl. Veteran, lalu Jl. Nanggeleng – Cirahayu untuk menuju Cijoho.\r\n\r\nSelanjutnya arahkan kendaraanmu menuju Bandorasa Wetan hingga tiba di Jl. Bojong Linggajati. Selanjutnya tinggal menuju Setianegara lokasi dimana Woodland berada.', 'alternatif1693329009.jpg', '2023-08-29 17:10:09', NULL),
(24, 'Lima Kisah Kopi', 'Mengunjungi Lima Kisah Kopi merupakan pilihan tepat bagi yang ingin menikmati kopi dengan suasana berbeda.\r\n\r\nBukan hanya kedai kopi biasa, Lima Kisah Kopi sekaligus menawarkan wisata alam yang menyegarkan bagi para pengunjung.\r\n\r\nBerada di kaki Gunung Ciremai, Lima Kisah Kopi memiliki suguhan pesona alam yang menggoda.\r\n\r\nLima Kisah Kopi berlokasi di ketinggian Desa Linggasana, Kecamatan Cilimus, Kabupaten Kuningan.\r\n\r\nKedai kopi ini mengusung konsep suasana perdesaan yang kental yang membuat pengunjung makin betah berlama-lama.', 'alternatif1693330205.jpg', '2023-08-29 17:13:40', '2023-08-30 00:31:49'),
(25, 'Bukit Panembongan', 'Bukit Panembongan menjadi wisata rekomended di Kuningan yang bisa anda kunjungi ketika ingin menikmati pemandangan alam yang mempesona. Tidak hanya penorama keindahan saja yang di tawarkan oleh obyek wisata satu ini. Namun banyak spot foto instagramable yang rekomended untuk liburan akhir pekan.\r\n\r\nKuningan memang menjadi satu dari beberapa kota di Jawa Barat yang menyajikan destinasi wisata lengkap dan rekomended. Jawa Barat tidak hanya ada wisata Bandung saja. Namun daerah lain juga menawarkan pesona wisata rekomended yang layak untuk anda kunjungi untuk menghabiskan waktu libur.\r\n\r\n\r\nSalah satu destinasi wisata Kuningan yang bisa anda kunjungi ketika berlibur yaitu Bukit Panembongan. Wisata murah meriah di Kuningan yang rekomended dengan spot foto instagenic untuk memanjakan perjalanan liburan anda dan keluarga.\r\n\r\nNikmati keindahan wisata Bukit Panembongan bersama orang tercinta untuk sensasi perjalanan liburan yang tak terlupakan. Rasa jenuh, penat dan bosan akan hilang seketika. Dengan menikmati pesona keindahan alam yang ditawarkan oleh Bukit Panembongan Kuningan Jawa Barat.\r\nBerencana untuk mengunjungi obyek wisata Bukit Panembongan Kuningan? Lokasi Bukit Panembongan sendiri beralamat di Tembong, Garawangi, Kabupaten Kuningan, Jawa Barat.\r\n\r\nBukit Panembongan berjarak kurang lebih 7 km dari pusat kota Kuningan. Anda bisa mengunjungi obyek wisata satu ini menggunakan kendaraan dengan waktu tempuh sekitar 20 menit perjalanan. ', 'alternatif1693329337.jpg', '2023-08-29 17:15:37', NULL),
(26, 'Cadas Gantung', 'Cadas Gantung Kuningan memiliki keindahan tersembunyi di hutan Kuningan yang asri, dengan hamparan bukit-bukit hijau serta rimbunnya pepohonan yang menyejukkan.\r\n\r\nLokasinya yang tersembunyi serta akses jalur menuju Cadas Gantung yang masih terbatas, pas banget untuk kamu yang senang eksplor keindahan alam yang masih perawan.\r\n\r\nDi Kabupaten Majalengka pun ada tempat wisata yang memiliki nama yang hampir mirip, yakni Taman Wisata Alam Cadas Gantung yang berada di Kecamatan Leuwimunding.\r\n\r\nSecara aministratif Majalengka dan Kuningan berdampingan, maka jangan heran jika ada beberapa tempat wisata yang berada di perbatasan Majalengka atau Kuningan.\r\nute menuju Cadas Gantung Kuningan jalurnya menanjak dan berkelok-kelok, jalannya pun tak begitu lebar. Sehingga lebih baik menggunakan motor, meski dapat dilalui oleh mobil.\r\n\r\nJika kamu berangkat dari arah Alun-Alun Kuningan dengan menuju Nanggeleng – Cirahayu, hingga tiba di Jalan Sumberjaya – Ciwaru. Jarak yang akan ditempuh berkisar antara 39 km dengan estimasi waktu sekitar 1,5 jam.\r\n', 'alternatif1693329506.jpg', '2023-08-29 17:18:26', NULL),
(27, 'Objek Wisata Cibulan', 'Cibulan adalah nama sebuah obyek wisata tertua yang ada di Kuningan, Jawa Barat Indonesia, saat ini menjadi salah satu tempat liburan favorit yang diresmikan pada 27 Agustus 1939 oleh Bupati Kuningan saat itu, yaitu R.A.A. Mohamand Achmad. Di dalam objek wisata ini terdapat dua kolam besar yang berbentuk persegi panjang. Kolam pertama berukuran 35x15 meter persegi dengan kedalaman sekitar 2 meter. Sedangkan, kolam kedua berukuran 45x15 meter persegi yang dibagi menjadi dua bagian. Bagian pertama berkedalaman 60 sentimeter dan bagian kedua berkedalaman 120 sentimeter.\r\n\r\nMenurut cerita yang berkembang di kalangan Masyarakat Desa Maniskidul dan masyarakat Kuningan pada umumnya, ikan dewa yang ada di kolam Cibulan ini konon dahulunya adalah prajurit-prajurit yang membangkang atau tidak setia pada masa pemerintahan Prabu Siliwangi. Singkat cerita, prajurit-prajurit pembangkang tersebut kemudian dikutuk oleh Prabu Siliwangi sehingga menjadi ikan.\r\n\r\nKonon ikan-ikan dewa ini dari dulu hingga sekarang jumlahnya tidak berkurang maupun bertambah.  Terlepas dari benar atau tidaknya legenda itu sampai saat ini tidak ada yang berani mengambil ikan ini karena ada kepercayaan bahwa barang siapa yang berani mengganggu ikan-ikan tersebut akan mendapatkan kemalangan.\r\n \r\nSelain kolam dengan ikan dewanya yang jinak, di sudut barat pemandian ini juga terdapat tujuh sumber mata air yang dikeramatkan yang bernama Tujuh Sumur. Tujuh mata air ini berbentuk kolam-kolam kecil yang masing-masing mempunyai nama tersendiri, yaitu: Sumur Kejayaan, Sumur Kemulyaan, Sumur Pengabulan, Sumur Cirancana, Sumur Cisadane, Sumur Kemudahan, dan Sumur Keselamatan. Di antara ketujuh sumur itu, konon ada salah satu sumur yang berisikan Kepiting Emas, yaitu Sumur Cirancana.', 'alternatif1693329650.jpg', '2023-08-29 17:20:50', NULL),
(28, 'Buper Huludayeuh Trijaya', 'Hari libur banyak dimanfaatkan sebagian besar orang untuk mengunjungi objek wisata tertentu. Sebut saja Buper Huludayeuh Trijaya yang menjadi salah satu objek wisata alam favorit warga Kuningan. Sajian pemandangan alam di lokasi ini menjadi salah satu alasannya, begitu juga harganya yang murah meriah.\r\n\r\nObjek wisata ini berada di kaki Gunung Ciremai, pastinya memiliki udara sejuk dan suasana asri. Di sini, pengunjung akan dimanjakan dengan pemandangan khas hutan berupa pohon pinus. Deretan pohon rindang minim daun ini tampak rapi dan seolah mengikuti ke mana saja arah mata memandang.\r\n\r\nBukan hanya dikunjungi wisatawan dari kalangan pemuda, Buper atau singkatan dari Bumi Perkemahan ini pun sering dijadikan objek wisata keluarga. Keindahannya bahkan sering dijadikan untuk foto pre wedding. Meski demikian, tidak disarankan membawa serta anak-anak dibawah umur karena lokasinya sulit dijangkau.\r\n', 'alternatif1693329843.jpg', '2023-08-29 17:24:03', NULL),
(29, 'Taman Kupu Kupu', 'Sebuah destinasi baru di Kuningan ini masih tergolong sebagai tempat wisata baru, soalnya pengelolaan objek wisata bernama Taman Kukupu Panenjoan ini belum genap setahun. Tapi sudah sering jadi tempat foto prewedding dan jadi tempat bikin konten video untuk diupload di media sosial.\r\n\r\nObjek wisata ini, lokasinya, persis di Desa Kawahmamuk, Kecamatan Darma, atau sekitar 15 menit jarak tempuh dari wisata perairan Waduk Darma.\r\nAsep sekaligus Direktur Utama BUMDes Sejahtera yang kebetulan sebagai pengelola Wisata Alam Teman Kukupu Panenjoan, mengatakan, Taman Kukupu Panenjoan ini merupakan aset pribadi warga setempat, yang dipercayakan pengelolaannya terhadap BUMDes (Bahan Usaha Milik Desa) dan sebelumnya dilakukan pengelolaan oleh Karang Taruna desa setempat.\r\nDiketahui sebelumnya, bahwa ini pernah diserahkan pengelolaannya ke Karang Taruna dan sekarang diserahkan lagi ke BUMDes Sejahtera,\" kata Asep dalam perbincangan tadi.\r\n\r\nTerlepas dengan urusan kerjasama, Asep mengapreasiasi terhadap tokoh pengusaha di desa, yang telah memberikan kepercayaan dalam pengelolaan wisata alam.\r\n\r\n\"Ya, sedikit cerita boleh? Pertama kami berterima kasih kepada owner Taman Kukupu Panenjoan yang telah memberikan kepercayaan dalam pengelolaan usaha wisata ini.\r\n\r\nTentu dalam perjalan kurang dari setahun, manfaat kebaikan itu banyak dirasakan warga yang terlibat dalam pengelolaan atau yang kerja di sini,\" katanya.\r\n\r\n\r\n', 'alternatif1693330690.jpg', '2023-08-29 17:38:10', NULL),
(30, 'Sawah Love', 'Sawah Lope Desa Cikaso | Kawasan wisata yang satu ini merupakan sebuah kawasan wisata alam dengan sajian pemandangan dan suasana alam yang sangat indah. Sebagaimana namanya, tempat ini menawarkan sajian pemandangan areal persawahan yang sangat indah, yang menjadi salah satu lokasi pertanian (disingkat: Lope) untuk berwisata.\r\nObjek wisata ini berada di wilayah Desa Cikaso, wilayah Kecamatan Kramatmulya, di Kabupaten Kuningan, Provinsi Jawa Barat. Bagi anda yang tinggal di wilayah Jawa Barat, tempat wisata yang satu ini mungkin sudah tidak asing lagi bagi anda.\r\nTempat wisata ini tidak melakukan pemungutan bayaran berupa tiket masuk, para pengunjung hanya dikenakan harga sewa saungnya yang dihitung per jam, yaitu Rp.5.000 per jamnya. Jika anda ingin menghabiskan waktu sehari penuh di tempat ini, maka anda cukup membayar Rp.30.000 untuk sewa saungnya.\r\n\r\nHarga tersebut tergolong sangat murah jika dibandingkan dengan keindahan yang akan anda nikmati selama sehari penuh, yang akan membuat anda kembali fresh dan siap untuk menghadapi kesibukan pada minggu berikutnya di hari kerja. ', 'alternatif1693330876.jpg', '2023-08-29 17:41:16', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(10) NOT NULL,
  `nama_kriteria` varchar(45) NOT NULL,
  `poin_kriteria` tinyint(1) NOT NULL,
  `bobot` double NOT NULL,
  `sifat` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `nama_kriteria`, `poin_kriteria`, `bobot`, `sifat`) VALUES
(1, 'jumlah pengunjung', 0, 4, 'benefit'),
(2, 'harga tiket masuk', 0, 3, 'benefit'),
(3, 'jarak tempuh', 0, 3, 'benefit'),
(4, 'fasilitas', 0, 4, 'benefit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_matrik`
--

CREATE TABLE `nilai_matrik` (
  `id_matrik` int(10) NOT NULL,
  `id_alternatif` int(10) NOT NULL,
  `id_kriteria` int(10) NOT NULL,
  `nilai` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `nilai_matrik`
--

INSERT INTO `nilai_matrik` (`id_matrik`, `id_alternatif`, `id_kriteria`, `nilai`) VALUES
(56, 1, 1, 61342),
(57, 1, 2, 15000),
(58, 1, 3, 8.9),
(59, 1, 4, 5),
(60, 2, 1, 76544),
(61, 2, 2, 15000),
(62, 2, 3, 8.5),
(63, 2, 4, 5),
(64, 3, 1, 14772),
(65, 3, 2, 15000),
(66, 3, 3, 8.6),
(67, 3, 4, 5),
(68, 4, 1, 16295),
(69, 4, 2, 20000),
(70, 4, 3, 9.6),
(71, 4, 4, 5),
(72, 5, 1, 73707),
(73, 5, 2, 15000),
(74, 5, 3, 7.7),
(75, 5, 4, 5),
(76, 6, 1, 19484),
(77, 6, 2, 25000),
(78, 6, 3, 8.4),
(79, 6, 4, 5),
(80, 7, 1, 34516),
(81, 7, 2, 15000),
(82, 7, 3, 8.9),
(83, 7, 4, 5),
(84, 8, 1, 5643),
(85, 8, 2, 15000),
(86, 8, 3, 6.8),
(87, 8, 4, 5),
(88, 9, 1, 3519),
(89, 9, 2, 3000),
(90, 9, 3, 1.9),
(91, 9, 4, 5),
(92, 10, 1, 2227),
(93, 10, 2, 5000),
(94, 10, 3, 3.6),
(95, 10, 4, 5),
(96, 11, 1, 81712),
(97, 11, 2, 15000),
(98, 11, 3, 11),
(99, 11, 4, 5),
(100, 12, 1, 25144),
(101, 12, 2, 5000),
(102, 12, 3, 8.9),
(103, 12, 4, 5),
(104, 13, 1, 5201),
(105, 13, 2, 5000),
(106, 13, 3, 11),
(107, 13, 4, 5),
(108, 14, 1, 221546),
(109, 14, 2, 15000),
(110, 14, 3, 31),
(111, 14, 4, 5),
(112, 15, 1, 10148),
(113, 15, 2, 20000),
(114, 15, 3, 32),
(115, 15, 4, 5),
(116, 16, 1, 31963),
(117, 16, 2, 20000),
(118, 16, 3, 33),
(119, 16, 4, 5),
(120, 17, 1, 53851),
(121, 17, 2, 15000),
(122, 17, 3, 26),
(123, 17, 4, 5),
(124, 18, 1, 15188),
(125, 18, 2, 15000),
(126, 18, 3, 14),
(127, 18, 4, 5),
(128, 19, 1, 12328),
(129, 19, 2, 17000),
(130, 19, 3, 29),
(131, 19, 4, 5),
(132, 20, 1, 8133),
(133, 20, 2, 17500),
(134, 20, 3, 11),
(135, 20, 4, 5),
(136, 21, 1, 16467),
(137, 21, 2, 6000),
(138, 21, 3, 34),
(139, 21, 4, 5),
(140, 22, 1, 16873),
(141, 22, 2, 15000),
(142, 22, 3, 17),
(143, 22, 4, 5),
(144, 23, 1, 59783),
(145, 23, 2, 15000),
(146, 23, 3, 17),
(147, 23, 4, 5),
(148, 24, 1, 8732),
(149, 24, 2, 5000),
(150, 24, 3, 16),
(151, 24, 4, 5),
(152, 25, 1, 6708),
(153, 25, 2, 7500),
(154, 25, 3, 7.8),
(155, 25, 4, 5),
(156, 26, 1, 7909),
(157, 26, 2, 10000),
(158, 26, 3, 39),
(159, 26, 4, 5),
(160, 27, 1, 44348),
(161, 27, 2, 20000),
(162, 27, 3, 9.6),
(163, 27, 4, 5),
(164, 28, 1, 22078),
(165, 28, 2, 10000),
(166, 28, 3, 22),
(167, 28, 4, 5),
(168, 29, 1, 11688),
(169, 29, 2, 20000),
(170, 29, 3, 15),
(171, 29, 4, 5),
(172, 30, 1, 15452),
(173, 30, 2, 5000),
(174, 30, 3, 7.6),
(175, 30, 4, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_preferensi`
--

CREATE TABLE `nilai_preferensi` (
  `nm_alternatif` varchar(35) NOT NULL,
  `nilai` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id_pengaturan` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `logo` varchar(50) NOT NULL,
  `favicon` varchar(50) NOT NULL,
  `tentang_kuningan` text NOT NULL,
  `foto_kuningan` varchar(50) NOT NULL,
  `google_maps` text NOT NULL,
  `foto_tentang_kuningan` varchar(50) NOT NULL,
  `kata_pembuka` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengaturan`
--

INSERT INTO `pengaturan` (`id_pengaturan`, `nama`, `email`, `telepon`, `alamat`, `logo`, `favicon`, `tentang_kuningan`, `foto_kuningan`, `google_maps`, `foto_tentang_kuningan`, `kata_pembuka`, `created_at`, `updated_at`) VALUES
(1, 'DISPORAPAR', 'ayowisata18@gmail.com', '097675665', 'Jl. Raya Cilowa No. 40 A, Kramatmulya, Cilowa, Kec. Kuningan, Kabupaten Kuningan, Jawa Barat 45553', 'logo1693318327.jpg', 'favicon1693318275.jpg', '<p class=\"vc_custom_heading\" style=\"text-align: left; font-family: Ubuntu; font-weight: 400; font-style: normal;\">VISI</p>\r\n<p class=\"vc_custom_heading\" style=\"text-align: left; font-family: Ubuntu; font-weight: 400; font-style: normal;\">Kuningan MAJU (Makmur, Agamis, Pinunjul) Berbasis Desa Tahun 2023</p>\r\n<p class=\"vc_custom_heading\" style=\"text-align: left; font-family: Ubuntu; font-weight: 400; font-style: normal;\">MISI</p>\r\n<p class=\"vc_custom_heading\" style=\"text-align: left; font-family: Andika; font-weight: 400; font-style: normal;\">1. Membangun Tata Kelola Pemerintahan Daerah Yang Profesional, Efektif, Demokratis, Dan Terpercaya Dengan Jiwa Kepemimpinan Nu SAJATI<br>2. Mewujudkan Masyarakat Kuningan Nu SAJATI Dalam Kehidupan Beragama Dan Bernegara Dalam Bingkai Kebangsaan Dan Kebhinekaan.<br>3. Mewujudkan Manajemen Layanan Pendidikan Dan Kesehatan Yang Merata, Adil, Berkualitas Dan Berkelanjutan Dalam Menciptakan Sumber Daya Manusia Nu SAJATI.<br>4. Mewujudkan Pembangunan Kawasan Perdesaan Berbasis Pertanian, Wisata, Budaya Dan Potensi Lokal Untuk Mempercepat Pertumbuhan Serta Pemerataan Ekonomi Rakyat.<br>5. Mewujudkan Pemerataan Infrastruktur Untuk Mendorong Investasi Dan Penciptaan Lapangan Kerja Dalam Lingkungan Yang Lestari.</p>', 'foto_kuningan1693318507.png', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3960.530270739942!2d108.48551577499666!3d-6.946600493053576!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6f16efc1f960e5%3A0x168304b7aff90b2d!2sKantor%20Dinas%20Pemuda%2C%20Olahraga%20Dan%20Pariwisata!5e0!3m2!1sid!2sid!4v1692680226171!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\">', 'foto_tentang_kuningan1693318344.jpg', '<p>Kabupaten Kuningan&nbsp; adalah sebuah wilayah kabupaten yang terletak di Provinsi Jawa Barat, Indonesia. Ibu kotanya adalah Kecamatan Kuningan. Berjarak 150 km dari Kota Bandung dan 43 km dari Kota Cirebon, kabupaten ini berbatasan dengan Kabupaten Cirebon di utara, Kabupaten Brebes (Jawa Tengah) di timur, Kabupaten Ciamis dan Kabupaten Cilacap (Jawa Tengah) di Selatan, dan Kabupaten Majalengka di barat. Kabupaten ini dikenal karena merupakan merupakan tempat dilaksanakannya Perundingan Linggajati. Di kecamatan Cigugur, beberapa warga merupakan penganut penghayat kepercayaan Sunda Wiwitan.</p>\r\n<p>Kuningan juga merupakan salah satu pintu gerbang masuk Jawa Barat dari sebelah timur, bersama dengan Kabupaten Ciamis, Cirebon, Kota Banjar dan Pangandaran.</p>\r\n<p>Kabupaten Kuningan dikenal dengan julukan sebagai \"Kota Kuda\". Kuda merupakan ikon dari kabupaten ini dan dianggap merupakan hewan perwujudan dari Si Windu. Kuda gesit tersebut milik keluarga Arya Kamuning, seorang pemimpin wilayah ini pada zaman Kesultanan Cirebon dan Pajang.</p>', '2022-05-19 09:17:19', '2023-08-29 21:50:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` enum('Super Admin','Admin') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `id_alternatif` int(10) NOT NULL,
  `id_kriteria` int(10) NOT NULL,
  `id_pengaturan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `username`, `password`, `level`, `created_at`, `updated_at`, `id_alternatif`, `id_kriteria`, `id_pengaturan`) VALUES
(9, 'Ade Nuryana', 'admin 1', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', '2022-05-27 08:20:11', NULL, 0, 0, 0),
(10, 'Ade Nuryana', 'super admin 1', 'e10adc3949ba59abbe56e057f20f883e', 'Super Admin', '2022-05-27 08:21:41', '2022-06-15 11:41:22', 0, 0, 0),
(16, 'Ade', 'nuryana', '86b19a0013a70a10e5c46bfd2b0b8504', 'Super Admin', '2023-08-22 05:17:16', '2023-08-22 12:17:42', 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_alternatif`),
  ADD KEY `nm_alternatif` (`nm_alternatif`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `nilai_matrik`
--
ALTER TABLE `nilai_matrik`
  ADD PRIMARY KEY (`id_matrik`),
  ADD KEY `id_alternatif` (`id_alternatif`),
  ADD KEY `id_kriteria` (`id_kriteria`);

--
-- Indeks untuk tabel `nilai_preferensi`
--
ALTER TABLE `nilai_preferensi`
  ADD PRIMARY KEY (`nm_alternatif`);

--
-- Indeks untuk tabel `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id_pengaturan`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `nilai_matrik`
--
ALTER TABLE `nilai_matrik`
  MODIFY `id_matrik` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT untuk tabel `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `id_pengaturan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `nilai_matrik`
--
ALTER TABLE `nilai_matrik`
  ADD CONSTRAINT `nilai_matrik_ibfk_1` FOREIGN KEY (`id_alternatif`) REFERENCES `alternatif` (`id_alternatif`),
  ADD CONSTRAINT `nilai_matrik_ibfk_2` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`);

--
-- Ketidakleluasaan untuk tabel `nilai_preferensi`
--
ALTER TABLE `nilai_preferensi`
  ADD CONSTRAINT `nilai_preferensi_ibfk_2` FOREIGN KEY (`nm_alternatif`) REFERENCES `alternatif` (`nm_alternatif`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
