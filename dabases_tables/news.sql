-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 12 Iul 2018 la 03:59
-- Versiune server: 5.7.20
-- PHP Version: 5.6.37-dev

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `authors2`
--

CREATE TABLE `authors2` (
  `author_id` int(25) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Salvarea datelor din tabel `authors2`
--

INSERT INTO `authors2` (`author_id`, `name`) VALUES
(1, 'Tinica Cristian'),
(2, 'Leonardo Dicaprio'),
(3, 'Morgan Freeman');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `list`
--

CREATE TABLE `list` (
  `id` int(255) NOT NULL,
  `titles` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_author` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Salvarea datelor din tabel `list`
--

INSERT INTO `list` (`id`, `titles`, `text`, `time`, `modified_time`, `id_author`) VALUES
(1, 'Acuzat', 'Morgan Freeman este un actor american, regizor de film și narator, câștigător al Premiului Oscar. A devenit cunoscut în anii 1990, după ce a avut roluri într-o serie de filme de succes produse la Hollywood. Wikipedia', '2018-07-10 23:27:04', '2018-07-11 16:08:28', 1),
(2, 'Jurnalistica', 'Știrea este un gen jurnalistic care prezintă realitatea actuală, pe care o pune într-o formă comunicabilă, transmisă apoi, prin intermediul unor tehnici moderne de difuzare în masă.\r\n\r\nIn domeniul ziaristicii, informația trebuie înțeleasă în dublu sens. Informația este un termen devenit celui de presă. Unii autori chiar definesc informația drept \"procesul comunicării sociale și instituțile care asigură acest proces\".1) Termenul de informație este folosit și în accepția de gen ziaristic, dar toate genurile ziaristice implică existența unei informații. Iată de ce pentru a delimita genul în sistemul mijloacelor de expresie ziaristică, termenul de știre este mai corespunzător, toată presa fiind purtătoare de informație tratată și selectată, semnificativă, nouă, interesantă, de actualitate.', '2018-07-10 23:27:04', '2018-07-10 23:27:04', 2),
(3, 'National Geografic', 'National Geographic este revista oficială a societății americane National Geographic Society, publicată lunar începând din octombrie 1888[5]. Revista a fost tipărită pentru prima oară în altă limbă decât în engleză în anul 1995 când a fost publicată și în limba japoneză. În octombrie 2007, revista era tipărită în 28 de limbi în afară de engleză: japoneză, spaniolă, italiană, greacă, ebraică și ebraică ortodoxă, franceză, germană, poloneză, coreeană, portugheză, daneză, suedeză, norvegiană, olandeză, chineză, finlandeză, turcă, thai, cehă, maghiară, română, rusă, croată, indoneziană, bulgară, slovenă și sârbă[6].', '2018-07-10 23:32:47', '2018-07-10 23:32:47', 1),
(4, 'Discovery', '	\r\nDiscovery Channel\r\nDe la Wikipedia, enciclopedia liberă\r\nJump to navigation\r\nJump to search\r\nDiscovery Channel\r\nDiscovery Channel International logo.svg\r\nData lansării	17 iunie 1985\r\nProprietar	Discovery Communications, Inc.\r\nFormat imagine	480i (SDTV)\r\n1080i (HDTV)\r\nSlogan	The world is just awesome.\r\nȚară	Întreaga lume\r\nLimbă	Engleză\r\nSedii	Silver Spring, Maryland\r\nPagină oficială	http://dsc.discovery.com\r\nTerestru\r\nSelective TV Inc.\r\n(Alexandria, Minnesota)	K47KZ (Canalul 47)\r\nSatelit\r\nDirecTV	Canalul 278\r\nCanalul 1278 (VOD)\r\nDish Network	Canalul 182 (SD/HD)\r\nCanalul 9487\r\nC-Band	AMC 10-Canalul 21\r\nStarchoice	Canalul 505\r\nSky Mexico	Canalul 251\r\nDish Network Mexico	Canalul 402\r\nSKY Italia	Canalul 401\r\nDSTV	Canalul 121\r\nCablu\r\nCableVision (Argentina)	Canalul 52\r\nVerificați listările dvs. local\r\nVerizon FIOS	Canalul 120 (SD)\r\nCanalul 620 (HD)\r\nStarHub TV Singapore	Canalul 422\r\nIPTV\r\nSky Angel	Canalul 313\r\nAT&T U-Verse	Canalul 120 (SD)\r\n1120 (HD)\r\nModifică text Consultați documentația formatului\r\n\r\nDiscovery Channel este un post de televiziune deținut de compania media Discovery Communications, înființat în anul 1985 și distribuit inițial în Statele Unite.[1] În prezent (iulie 2008), Discovery Channel este distribuit în 170 de țări și teritorii și are un total cumulativ de 1,5 miliarde abonați.[1] Discovery Channel este primul post de televiziune care emite programe documentare.[1]\r\n\r\nTeleviziunile din trustul Discovery Communications care sunt prezente și în România sunt:\r\n\r\n    Animal Planet\r\n    Animal Planet HD\r\n    Discovery HD Showcase\r\n    Discovery Science\r\n    TLC\r\n    DTX\r\n    IDX\r\n\r\nCuprins\r\n\r\n    1 Emisiuni\r\n    2 Dispute\r\n    3 Referințe\r\n    4 Legături externe\r\n\r\nEmisiuni\r\n\r\n    Arma umană perfectă\r\n    Automobile americane recondiționate\r\n    Clipe de teroare\r\n    Comori arhitecturale recuperate\r\n    Cum se fabrică?\r\n    Cum se fabrică diverse lucruri?\r\n    Cum funcționează?\r\n    Curiosity\r\n    Descoperă minciuna!\r\n    Dosarele FBI\r\n    Escrocherii adevărate\r\n    Fenomene stranii\r\n    Foraj extrem\r\n    Goana după aur\r\n    În luptă cu dăunătorii\r\n    La închisoare\r\n    La un pas de moarte\r\n    Lumea cărbunelui\r\n    Maeștrii berari\r\n    Magia lui Keith Barry\r\n    Mașini pe alese\r\n    Meserii murdare\r\n    Monștrii apelor\r\n    Motociclete americane\r\n    Nimic personal\r\n    O pradă mortală\r\n    Operațiuni complexe\r\n    Paradisul pierdut\r\n    Pasionați de vechituri\r\n    Probele lui Freddie Flintoff\r\n    Povești polițiste adevărate\r\n    Școala Discovery\r\n    Secretele cutiei negre\r\n    Secundele dinaintea dezastrului\r\n    Situații incredibile\r\n    Tehnici esențiale de supraviețuire\r\n    Tehnici esențiale de supraviețuire urbană\r\n    Tehnologie extremă\r\n    Țapinarii din mlaștini\r\n    Top Gear\r\n    Un bărbat și o femeie în sălbăticie\r\n    Un tăntălău în jurul lumii\r\n    Vânătorii de mituri\r\n\r\nDispute\r\n\r\nÎn luna noiembrie 2012, RCS&RDS a întrerupt emisia canalelor Discovery Communications, incluzând Discovery Channel. Directorul General al Discovery Communications, Mark Hollinger a trimis o scrisoare publică în încercarea de a anula acțiunea RCS &RDS, atrăgând atenția asupra negării dreptului telespectatorilor de a face o alegere în ceea ce privește canalele vizionate [2]. În replică, RCS&RDS a emis un comunicat de presă în care acuza discursul lui Hollinger preocupat de binele telespectatorilor de ipocrizie și atrăgea atenția asupra faptului că „principala preocupare a reprezentanților Discovery era menținerea unor tarife și a unor venituri garantate cât mai mari”[3].\r\nReferințe\r\n\r\n    ^ a b c Discovery Holding Company - Shareholders, accesat la 2 iulie 2008\r\n    ^ Scrisoare deschisa din partea CEO Discovery Networks catre telespectatorii afectati de decizia RCS&RDS: Suntem indignati de ceea ce se intampla, am demarat discutiile cu autor...\r\n    ^ Comunicate de presa\r\n\r\nLegături externe\r\n\r\n    Sit web în limba română Discovery Channel\r\n    Părintele Discovery despre proiectul său de 60 de milioane de dolari, 21 septembrie 2011, Gabriela Lupu, România liberă\r\n\r\n\r\n[arată]\r\nv • d • m\r\nCanale de televiziune în limba română\r\nCategorii:\r\n\r\n    TeleviziuniTeleviziuni din România\r\n\r\nMeniu de navigare\r\n\r\n    Nu sunteți autentificat\r\n    Discuții\r\n    Contribuții\r\n    Creare cont\r\n    Autentificare\r\n\r\n    Articol\r\n    Discuție\r\n\r\n    Lectură\r\n    Modificare\r\n    Modificare sursă\r\n    Istoric\r\n\r\nCăutare\r\n\r\n    Pagina principală\r\n    Schimbări recente\r\n    Cafenea\r\n    Articol aleatoriu\r\n    Facebook\r\n\r\nParticipare\r\n\r\n    Cum încep pe Wikipedia\r\n    Ajutor\r\n    Portaluri tematice\r\n    Articole cerute\r\n    Donații\r\n\r\nTipărire/exportare\r\n\r\n    Creare carte\r\n    Descarcă PDF\r\n    Versiune de tipărit\r\n\r\nÎn alte proiecte\r\n\r\n    Wikimedia Commons\r\n\r\nTrusa de unelte\r\n\r\n    Ce trimite aici\r\n    Modificări corelate\r\n    Trimite fișier\r\n    Pagini speciale\r\n    Navigare în istoric\r\n    Informații despre pagină\r\n    Element Wikidata\r\n    Citează acest articol\r\n\r\nÎn alte limbi\r\n\r\n    العربية\r\n    Български\r\n    English\r\n    Español\r\n    Bahasa Indonesia\r\n    Bahasa Melayu\r\n    Русский\r\n    Українська\r\n    中文\r\n\r\nModifică legăturile\r\n\r\n    Ultima editare a paginii a fost efectuată la 4 aprilie 2018, ora 17:26.\r\n    Acest text este disponibil sub licența Creative Commons cu atribuire și distribuire în condiții identice; pot exista și clauze suplimentare. Vedeți detalii la Termenii de utilizare.\r\n\r\n    Politica de confidențialitate\r\n    Despre Wikipedia\r\n    Termeni\r\n    Dezvoltatori\r\n    Cookie statement\r\n    Versiune mobilă\r\n\r\n    Wikimedia Foundation	\r\n    Powered by MediaWiki	\r\n\r\n', '2018-07-10 23:32:47', '2018-07-10 23:32:47', 2),
(5, 'Japonia', 'Japan (Japanese: 日本; Nippon [ɲippoɴ] or Nihon [ɲihoɴ]; formally 日本国 About this sound Nippon-koku or Nihon-koku, lit. \"State of Japan\") is a sovereign island country in East Asia. Located in the Pacific Ocean, it lies off the eastern coast of the Asian mainland and stretches from the Sea of Okhotsk in the north to the East China Sea and China in the southwest.\r\n\r\nThe kanji that make up Japan\'s name mean \"sun origin\", and it is often called the \"Land of the Rising Sun\". Japan is a stratovolcanic archipelago consisting of about 6,852 islands. The four largest are Honshu, Hokkaido, Kyushu, and Shikoku, which make up about ninety-seven percent of Japan\'s land area and often are referred to as home islands. The country is divided into 47 prefectures in eight regions, with Hokkaido being the northernmost prefecture and Okinawa being the southernmost one. The population of 127 million is the world\'s tenth largest. Japanese people make up 98.5% of Japan\'s total population. About 9.1 million people live in Tokyo,[15] the capital of Japan.', '2018-07-10 23:34:20', '2018-07-12 00:28:09', 1),
(6, 'Moldova', 'Republica Moldova[8][9] (abreviată RM sau R.M.) este un stat localizat în sud-estul Europei, care se învecinează cu România la vest și cu Ucraina la nord, est și sud. Republica Moldova este un stat fără ieșire directă la mare, însă are ieșire la Dunăre pe o fâșie de 430 de metri[10] la extremitatea sa sudică,[11] prin intermediul căreia are potențial acces la Marea Neagră. În procesul dezmembrării Uniunii Sovietice, Republica Moldova și-a declarat independența pe 27 august 1991. Pe 29 iulie 1994 a fost adoptată prima constituție a Moldovei. Începând cu anul 1990, teritoriul Moldovei situat pe malul estic al fluviului Nistru este sub control de facto a regimului separatist din Transnistria.[12][13]\r\n\r\nRepublica Moldova este o republică parlamentară cu un președinte în calitate de șef al statului și un prim-ministru în calitate de șef al guvernului. Moldova este stat membru a Organizației Națiunilor Unite, Consiliul Europei, Parteneriatului pentru Pace, OMC, OSCE, GUAM, CSI, OCEMN și a altor organizații internaționale. Republica Moldova aspiră pentru aderarea la Uniunea Europeană,[14] și a implementat deja primul Plan de Acțiune de 3 ani în cadrul Politicii Europene de Vecinătate.[15] ', '2018-07-10 23:34:20', '2018-07-10 23:34:20', 3),
(7, 'How to make paginating in YII2', 'LinkPager displays a list of hyperlinks that lead to different pages of target.\r\n\r\nLinkPager works with a yii\\data\\Pagination object which specifies the total number of pages and the current page number.\r\n\r\nNote that LinkPager only generates the necessary HTML markups. In order for it to look like a real pager, you should provide some CSS styles for it. With the default configuration, LinkPager should look good using Twitter Bootstrap CSS framework.\r\n\r\nFor more details and usage information on LinkPager, see the guide article on pagination.', '2018-07-11 15:25:31', '2018-07-12 00:27:48', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors2`
--
ALTER TABLE `authors2`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors2`
--
ALTER TABLE `authors2`
  MODIFY `author_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `list`
--
ALTER TABLE `list`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
