-- MySQL dump 10.13  Distrib 5.6.25, for osx10.6 (x86_64)
--
-- Host: localhost    Database: tunnid2
-- ------------------------------------------------------
-- Server version	5.6.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `persons`
--

DROP TABLE IF EXISTS `persons`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persons` (
  `person_name`  VARCHAR(191)        NOT NULL,
  `person_sv_id` VARCHAR(191)        NOT NULL,
  `school_id`    TINYINT(3) UNSIGNED NOT NULL,
  PRIMARY KEY (`person_sv_id`, `school_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persons`
--

LOCK TABLES `persons` WRITE;
/*!40000 ALTER TABLE `persons`
  DISABLE KEYS */;
INSERT INTO `persons`
VALUES ('ÕE juhatus', '%C3%95E+juhatus', 1), ('Õie Kiis', '%C3%95ie+Kiis', 2), ('Ülle Antson', '%C3%9Clle+Antson', 1),
  ('Ülle Kaasik', '%C3%9Clle+Kaasik', 1), ('Ülle Kruuda', '%C3%9Clle+Kruuda', 1),
  ('õpilasesindus', '%C3%B5pilasesindus', 2), ('Katrin Vaher', '103', 1), ('Kersti Pool', '105', 1),
  ('Kersti Poska', '106', 1), ('Maicel Pütt', '10901', 1), ('Sille Allik    ', '11', 2), ('Külliki Vaske', '111', 1),
  ('Külli Toots', '113', 1), ('Liivi Albre', '121', 1), ('Anni Leosk', '12136', 1), ('Liivi Raudsepp', '122', 1),
  ('Maksim Tjukin', '12230', 1), ('Lili Kängsepp', '123', 1), ('Ljudmila Klotško', '125', 1),
  ('Silver Sõukand', '12629', 1), ('Rando Koks', '12785', 1), ('Iraida Krivoguzova', '128', 1),
  ('Katrin Krünvald', '130', 1), ('Maiki Noormägi', '13084', 1), ('Maire Merits', '131', 1),
  ('Elina Roosaar', '13241', 1), ('Maiu Praakli', '134', 1), ('Olver Kaljuvee    ', '1341', 2),
  ('Kaja Vainula    ', '1372', 2), ('Marek Tepper', '138', 1), ('Marlene Altmäe', '13965', 1),
  ('Mariana Rand', '140', 1), ('Timo Puistaja', '14484', 1), ('Raivo Kiisk', '14507', 1), ('Karin Traks', '14511', 1),
  ('Reet Saarep', '14512', 1), ('Marju Bergmann', '146', 1), ('Marju Hõbejärv-Särg', '147', 1),
  ('Merle Truupõld', '156', 1), ('Mirjam-Merike Sõmer', '158', 1), ('Renate Hirschon    ', '16', 2),
  ('Nikolai Jukin', '160', 1), ('Kairi Nagelmaa', '16024', 1), ('Ahko Ahtijäinen    ', '1643', 2),
  ('Krista Bunder', '16443', 1), ('Margus Ojaots    ', '1687', 2), ('Aime Aruoja', '17', 1),
  ('Raissa Orlova', '170', 1), ('Ragnar Kekkonen', '17440', 1), ('Raido Saar', '17594', 1), ('Riina Mändla', '176', 1),
  ('Mikheil Mtchedlishvili    ', '1760', 2), ('Alina Orlova', '17879', 1), ('Aime Jaagus', '18', 1),
  ('Signe Vedler', '180', 1), ('Rene Lukk', '18296', 1), ('Sirje Jäär', '183', 1), ('Janno Roon    ', '1834', 2),
  ('Vidrik Ugur    ', '1847', 2), ('Gerly Sepping', '18762', 1), ('Taissa Sulajeva', '189', 1),
  ('Kersti Sirel    ', '1939', 2), ('Thea Kuus', '197', 1), ('Tiina Ilus', '199', 1), ('Aina Rüütel', '20', 1),
  ('Tiit Kaber', '202', 1), ('Nadežda Možarova    ', '2028', 2), ('Tiit Tammaru', '203', 1),
  ('Tiiu Kruusmaa', '204', 1), ('Tiiu Vellevoog', '205', 1), ('Janika Ploom    ', '2059', 2),
  ('Üllar Kadai    ', '2091', 2), ('Reio Laar', '21156', 1), ('Maarika Kilusk    ', '2116', 2),
  ('Terje Treu    ', '2147', 2), ('Vaike Vetka', '215', 1), ('Vilve Pohla', '218', 1), ('Ülle Ivask', '219', 1),
  ('Ülle Kruuda', '220', 1), ('Aivo Kuld    ', '2210', 2), ('Ülo Ramp', '222', 1), ('Jevgeni Kuznetsov', '22425', 1),
  ('Kristel Unt    ', '2268', 2), ('Aivar Krull', '23', 1), ('Kristina Sabre', '235', 1), ('Aivar Lippmaa', '24', 1),
  ('Eva Tšepurko    ', '2403', 2), ('Kaido Toobal', '243', 1), ('Kaie Rahulan', '25360', 1),
  ('Merike Lill', '25367', 1), ('Kärt Kuvvas-Mekk    ', '2568', 2), ('Toomas Pai    ', '2571', 2),
  ('Elme Sälik', '258', 1), ('Ulrika Hurt    ', '2589', 2), ('Marge Tammesalu    ', '2644', 2),
  ('Villu Repän', '26486', 1), ('Sulev Kiivit', '26513', 1), ('Vello Kalamees', '26521', 1),
  ('Kalmer Kollom', '26525', 1), ('Hele Moor', '26533', 1), ('Berit Tafenau', '266', 1), ('Eve Prost', '269', 1),
  ('Allan Patska', '27', 1), ('Hedi Männi', '27846', 1), ('Margus Käärma', '27859', 1), ('Maire Kask', '27865', 1),
  ('Malle Kalmus', '279', 1), ('Ege Seiler', '28039', 1), ('Tiina Aidnik', '28131', 1), ('Henno Täht', '28243', 1),
  ('Ene Paks', '28245', 1), ('Maris Rõõm', '28259', 1), ('Maarja Adamson    ', '2827', 2), ('Anneli Ummik', '28272', 1),
  ('Siiri Kütt', '28274', 1), ('Inger Priimäe', '28598', 1), ('Anne Uibo', '286', 1), ('Erko Ruukel    ', '2874', 2),
  ('Keio Kaarlõp', '29194', 1), ('Reelika Liivak    ', '2948', 2), ('Anne Mootse', '30', 1),
  ('Ülle Soeson', '30144', 1), ('Lilija Suburg', '30145', 1), ('Eha Soodla', '30469', 1), ('Juta Mõts', '30474', 1),
  ('Ismail Mirzojev', '30659', 1), ('Hellika Ivanov-Simson', '308', 1), ('Ingrid Sööt', '30812', 1),
  ('Valdur Leppik', '30840', 1), ('Mairi Kruuts', '30855', 1), ('Kaire Mets', '30861', 1), ('Marika Paulus', '309', 1),
  ('Triinu Koger', '31021', 1), ('Sille Lillestik', '311', 1), ('Ain Sikk    ', '3112', 2),
  ('Eve Ilisson    ', '3122', 2), ('Jana Trolla', '313', 1), ('Kätlin Kask', '31350', 1), ('Ly Otsa', '31351', 1),
  ('Reido Orov', '31353', 1), ('Juta Mõts    ', '3138', 2), ('Tarmo Rand', '314', 1), ('Marek Mekk    ', '3159', 2),
  ('Maarja Vaht', '31867', 1), ('Anna Karutina', '319', 1), ('Johannes Soobik', '31955', 1),
  ('Jelena Kutšmuk', '32', 1), ('Rainer Kuutma    ', '32', 2), ('Helina Esnar', '32086', 1), ('Tiina Kärner', '321', 1),
  ('Lilia Leiman', '323', 1), ('Merle Liba    ', '3230', 2), ('Kristi-Katrin Vaino', '32530', 1),
  ('Rait Koort', '32565', 1), ('Iivi Palu', '32572', 1), ('Maia Uibo', '32577', 1), ('Tauri Moones', '32588', 1),
  ('Sirje Koido', '326', 1), ('Katrin Jurs', '327', 1), ('Indrek Einasto', '32803', 1), ('Sirje Kikas', '329', 1),
  ('Mati Malm', '32967', 1), ('Alex Gogolin', '32974', 1), ('Annereet Paatsi', '33', 1),
  ('Viktoria Anušhova', '33036', 1), ('Katrin Uffert    ', '3305', 2), ('Kristiina Teearu    ', '3309', 2),
  ('Oskar Hint', '33099', 1), ('Eve Hõrak', '33157', 1), ('Andrus Kolonistov', '332', 1), ('Kaidi Loos    ', '3454', 2),
  ('Kerli Lill    ', '3455', 2), ('Mihhail Karutin', '346', 1), ('Katrin Kont', '34790', 1), ('Inga Ilves', '34811', 1),
  ('Lauri Maran', '34812', 1), ('Tõnu Mustjõgi', '35026', 1), ('Sirje Luther    ', '3506', 2),
  ('Marge Kuslap', '35560', 1), ('Tiina Friedrichson', '35657', 1), ('Andreas Sester', '35727', 1),
  ('Eve Siimus', '361', 1), ('Marika Tirmaste    ', '3611', 2), ('Harri Puusepp', '366', 1), ('Jaan Peetso', '367', 1),
  ('Aive Mikk', '37291', 1), ('Maie Kuhi', '373', 1), ('Olev Lauk', '379', 1), ('Piret Evert', '37936', 1),
  ('Arno Ratas', '38', 1), ('Tõnu Tammist', '38008', 1), ('Silver Püvi', '38172', 1), ('Rainer Lodde', '38605', 1),
  ('Toomas Sommer', '38609', 1), ('Meida Veskus', '387', 1), ('Ain Veskiväli', '38998', 1),
  ('Sirje Laanmäe    ', '39', 2), ('Aivo Vaiksoo    ', '3903', 2), ('Andrei Rudenko    ', '3907', 2),
  ('Liis Tammaru', '392', 1), ('Airi Poola    ', '3967', 2), ('Heigo Lipp', '39869', 1), ('Harri Laustam', '39880', 1),
  ('Sulev Rinken    ', '4003', 2), ('Elmar Todesk    ', '4017', 2), ('Henno Täht    ', '4018', 2),
  ('Anne Krull', '402', 1), ('Triin Muulmann', '40244', 1), ('Mariana Maasik', '40550', 1),
  ('Ulla-Maia Timmo', '40599', 1), ('Janari Zirk', '40646', 1), ('Kettli Arand', '40768', 1), ('Elen Urm', '40780', 1),
  ('Taavi Lukas', '41219', 1), ('Andres Piirsalu', '41222', 1), ('Marko Sirila', '41246', 1), ('Merike Räni', '417', 1),
  ('Ivi Annuk', '41797', 1), ('Olga Lugina', '418', 1), ('Maigi Lepik    ', '4182', 2), ('Edda Sõõru', '42', 1),
  ('Reno Ragun    ', '4203', 2), ('Anu Tintera', '421', 1), ('Aili Mängel    ', '4216', 2), ('Kaisa Keisk', '42281', 1),
  ('Tiiu Laid', '42285', 1), ('Siret Zirk', '42287', 1), ('Kamilla Lüdikainen', '423', 1), ('Timo Soiunen', '42301', 1),
  ('Ingeborg Virveste', '42321', 1), ('Maria Sikk    ', '4239', 2), ('Tiina Kraav', '425', 1),
  ('Maret Võrno', '42559', 1), ('Pille Kessel', '426', 1), ('Siret Pärtel', '42797', 1), ('Ants Valter', '428', 1),
  ('Karin Andressoo', '42844', 1), ('Sille Eero', '42967', 1), ('Eliseta Talviste', '42970', 1),
  ('Katrin Põhako', '431', 1), ('Julia Kovalenko', '432', 1), ('Tatjana Pjatkina    ', '4321', 2),
  ('Olesja Zeel    ', '4332', 2), ('Sigrid Ester Tani', '434', 1), ('Magnus Maiste', '447', 1),
  ('Kaire Välb', '456', 1), ('Ellen Aunin', '461', 1), ('Liisa Hummal', '464', 1), ('Ülle Antson', '468', 1),
  ('Kalle Viira', '472', 1), ('Karin Roosipuu', '476', 1), ('Elika Raal-Kikas', '48', 1), ('Arnold Looga    ', '48', 2),
  ('Eve Mäeorg', '482', 1), ('Larissa Sidoruk', '489', 1), ('Bianka Makoid', '490', 1), ('Linda Klettenberg', '499', 1),
  ('Ene Jõeveer', '51', 1), ('Tanel Plovits', '554', 1), ('Tauris Vijar', '558', 1), ('Anti Nukk    ', '56', 2),
  ('Kaido Voitra', '561', 1), ('Roland Olesk', '591', 1), ('Piret Tamm', '595', 1), ('Maire Linsi', '598', 1),
  ('Kätlin Lühiste', '599', 1), ('Marek Täkker', '604', 1), ('Riina Piir', '613', 1), ('Aita Kahha', '615', 1),
  ('Erna Urm', '62', 1), ('Andrei Atškasov', '633', 1), ('Evely Vutt', '65', 1), ('Irina Võsar', '652', 1),
  ('Anu Keskpalu-Käspri', '663', 1), ('Helen Kask', '67', 1), ('Helmo Hainsoo', '678', 1), ('Liia Sinivee', '679', 1),
  ('Silja Mall', '681', 1), ('Maret Männik', '688', 1), ('Helve Kooser', '69', 1), ('Helvi Teigar', '70', 1),
  ('Indrek Brifk', '706', 1), ('Hille Alberg', '71', 1), ('Ilmar Rammi', '73', 1), ('Ilona Vanaveski', '74', 1),
  ('Peeter Pedaja', '745', 1), ('Kaido Tammepõld', '746', 1), ('Edvard Lõhmus', '748', 1), ('Kairi Timusk', '754', 1),
  ('Lembit Arus', '756', 1), ('Piret Neihaus', '763', 1), ('Kadri Meesak', '773', 1), ('Hiie Taniloo    ', '78', 2),
  ('Made Tammepõld', '782', 1), ('Arne Pikk', '803', 1), ('Peeter Tikk    ', '81', 2), ('Mariann Karja', '824', 1),
  ('Diana Eller', '827', 1), ('Maris Tigas', '828', 1), ('Gerda Ode', '831', 1), ('Margus Ainsalu', '832', 1),
  ('Liivi Lõhmussaar', '833', 1), ('Õnnela Muuga', '834', 1), ('Helin Liiv', '839', 1), ('Pärt Blank', '841', 1),
  ('Evelin Truuve', '842', 1), ('Veronika Kupri', '847', 1), ('Triin Hansaar', '848', 1), ('Jane Talvik    ', '859', 2),
  ('Lehte Teern', '864', 1), ('Klaire Vaher    ', '87', 2), ('Elo Õun', '874', 1), ('Monika Lattik', '875', 1),
  ('Iolanda Pärtmaa', '88', 1), ('Martin Hanson', '881', 1), ('Ülo Pihl', '883', 1), ('Liine Maasikas', '885', 1),
  ('Peep Leppik    ', '886', 2), ('Tarmo Teekivi', '8961', 1), ('Kaie Holter', '93', 1), ('Kaire Jõgi', '95', 1),
  ('Eesti Leiutajate Liit Aarne Toomsalu    ', 'Aarne+Toomsalu%2C+Eesti+Leiutajate+Liit', 2),
  ('Aino Vooro', 'Aino+Vooro', 1), ('Aivar Mänd', 'Aivar+M%C3%A4nd', 1),
  ('Aleksander Ljubajev', 'Aleksander+Ljubajev', 1), ('Alina Orlova', 'Alina+Orlova', 1),
  ('Andres Aabla', 'Andres+Aabla', 1), ('Andri Võsokovski', 'Andri+V%C3%B5sokovski', 1),
  ('Andri Võsokovski õpilasprojekt', 'Andri+V%C3%B5sokovski+%C3%B5pilasprojekt', 1),
  ('Andrus Schults', 'Andrus+Schults', 1), ('Anneli Manglus', 'Anneli+Manglus', 2), ('Anneli Ummik', 'Anneli+Ummik', 1),
  ('Annely Maksan', 'Annely+Maksan', 2), ('Annely Soots', 'Annely+Soots', 1), ('Anu Kuusmann', 'Anu+Kuusmann', 1),
  ('Arne Pikk', 'Arne+Pikk', 1), ('Astrid Org', 'Astrid+Org', 1), ('Brit Mesipuu', 'Brit+Mesipuu', 1),
  ('Change Partners OÜ', 'Change+Partners+O%C3%9C', 1), ('Eda Veeroja', 'Eda+Veeroja', 1),
  ('Eda Veeroja, Ester Bardone', 'Eda+Veeroja%2C+Ester+Bardone', 1), ('Egon Ilisson', 'Egon+Ilisson', 2),
  ('Elika Raal-Kikas', 'Elika+Raal-Kikas', 1), ('Elle Aav', 'Elle+Aav', 1), ('Ene Baussova', 'Ene+Baussova', 2),
  ('Ene Raid', 'Ene+Raid', 1), ('Enn Valgma', 'Enn+Valgma', 1), ('Ester Bardone', 'Ester+Bardone', 1),
  ('Ettevõtja Eve Veski', 'Ettev%C3%B5tja+Eve+Veski', 1), ('Eve Mäeorg', 'Eve+M%C3%A4eorg', 1),
  ('Garis Liiv', 'Garis+Liiv', 1), ('Gerda Ode', 'Gerda+Ode', 1),
  ('Hedvig Pungar, Anneli Jüris', 'Hedvig+Pungar%2C+Anneli+J%C3%BCris', 1), ('Heli Ilves', 'Heli+Ilves', 1),
  ('Hille Volberg', 'Hille+Volberg', 2), ('Iina Kalbri', 'Iina+Kalbri', 2), ('Indrek Brifk', 'Indrek+Brifk', 1),
  ('Indrek Tirrul', 'Indrek+Tirrul', 1), ('Inga Kalvist', 'Inga+Kalvist', 1),
  ('Inga Kalvist, Piia Asper', 'Inga+Kalvist%2C+Piia+Asper', 1), ('Jaan Oras', 'Jaan+Oras', 1),
  ('Jaanika Käst', 'Jaanika+K%C3%A4st', 2), ('Jandra Hektor, Ülle Antson', 'Jandra+Hektor%2C+%C3%9Clle+Antson', 1),
  ('Janek Vana', 'Janek+Vana', 1), ('Janika Ploom', 'Janika+Ploom', 2), ('Jelena Kutšmuk', 'Jelena+Kut%C5%A1muk', 1),
  ('Julia Lezik', 'Julia+Lezik', 1), ('Julia Lezik, Karin Kaigas', 'Julia+Lezik%2C+Karin+Kaigas', 1),
  ('Julia Lezik ja Karin Kaigas', 'Julia+Lezik+ja+Karin+Kaigas', 1), ('Juta Mõts', 'Juta+M%C3%B5ts', 1),
  ('Juta Mõts', 'Juta+M%C3%B5ts', 2), ('Kõiv', 'K%C3%B5iv', 1), ('Kadi Tamm', 'Kadi+Tamm', 1),
  ('Kadri Raigna', 'Kadri+Raigna', 1), ('Kaidi Loos; Erko Ruukel', 'Kaidi+Loos%3B+Erko+Ruukel', 2),
  ('Kaido Toobal, Edvard Lõhmus, Margus Käärma', 'Kaido+Toobal%2C+Edvard+L%C3%B5hmus%2C+Margus+K%C3%A4%C3%A4rma', 1),
  ('Kaie Rahulan', 'Kaie+Rahulan', 1), ('Kaire Mets', 'Kaire+Mets', 1), ('Kairit Peedimaa', 'Kairit+Peedimaa', 1),
  ('Karin Kaigas', 'Karin+Kaigas', 1), ('Kati Otepalu', 'Kati+Otepalu', 2), ('Kati Toobal', 'Kati+Toobal', 1),
  ('Katrin Noppel, Mati Malm', 'Katrin+Noppel%2C+Mati+Malm', 1), ('Katrin Uffert', 'Katrin+Uffert', 2),
  ('Kerly Ilves', 'Kerly+Ilves', 1), ('Kersti Sirel', 'Kersti+Sirel', 2), ('Koger', 'Koger', 1),
  ('Komisjoni liikmed: Jane Talvik; Kärt Kuvvas-Mekk', 'Komisjoni+liikmed%3A+Jane+Talvik%3B+K%C3%A4rt+Kuvvas-Mekk', 2),
  ('Kristi Luht', 'Kristi+Luht', 1), ('Kruuda Ülle', 'Kruuda+%C3%9Clle', 1), ('kutseõpetajad', 'kutse%C3%B5petajad', 1),
  ('Kutshmuk', 'Kutshmuk', 1), ('Laivi Mesikäpp', 'Laivi+Mesik%C3%A4pp', 1), ('Lea Nagirnaja', 'Lea+Nagirnaja', 1),
  ('Leili Siilivask', 'Leili+Siilivask', 2), ('Liis Jurjev', 'Liis+Jurjev', 1), ('Liisa Hummal', 'Liisa+Hummal', 1),
  ('Maigi Lepik', 'Maigi+Lepik', 1), ('Maiko Koort', 'Maiko+Koort', 1), ('Maiu Roio', 'Maiu+Roio', 2),
  ('Maret Hunt', 'Maret+Hunt', 2), ('Maret Võrno', 'Maret+V%C3%B5rno', 1),
  ('Margo Lempu, Andrus Schults', 'Margo+Lempu%2C+Andrus+Schults', 1),
  ('Margo Lempu, Mati Malm', 'Margo+Lempu%2C+Mati+Malm', 1), ('Mariana Maasik', 'Mariana+Maasik', 1),
  ('Marina Podgornaja', 'Marina+Podgornaja', 1), ('Maris Rõõm', 'Maris+R%C3%B5%C3%B5m', 1),
  ('Marju Hõbejärv- Särg', 'Marju+H%C3%B5bej%C3%A4rv-+S%C3%A4rg', 1), ('Marju Maasing', 'Marju+Maasing', 1),
  ('Mati Malm', 'Mati+Malm', 1), ('Merike Raudnagel', 'Merike+Raudnagel', 2), ('Merle Salu', 'Merle+Salu', 1),
  ('Merle Suurväli', 'Merle+Suurv%C3%A4li', 2), ('Mesipuu', 'Mesipuu', 1), ('Paul Pääso', 'Paul+P%C3%A4%C3%A4so', 1),
  ('Paul Pääso', 'Paul+P%C3%A4%C3%A4so', 2), ('Peep Leppik', 'Peep+Leppik', 2), ('Piia Asper', 'Piia+Asper', 1),
  ('Piret Neihaus', 'Piret+Neihaus', 1), ('Piret Peters', 'Piret+Peters', 1),
  ('Reelika Õigemeel', 'Reelika+%C3%95igemeel', 1), ('Siim Lender', 'Siim+Lender', 1),
  ('Siim Säre', 'Siim+S%C3%A4re', 1), ('Siim Soonsein', 'Siim+Soonsein', 1), ('Silvia Cakarne', 'Silvia+Cakarne', 2),
  ('Stanislav Lebedev', 'Stanislav+Lebedev', 1), ('Sulev Rinken', 'Sulev+Rinken', 2),
  ('Svetlana Gromova', 'Svetlana+Gromova', 2), ('Tõnis Tamm', 'T%C3%B5nis+Tamm', 1),
  ('Tiina Kilter', 'Tiina+Kilter', 1), ('Tiina Leosk', 'Tiina+Leosk', 1), ('Triin Muiste', 'Triin+Muiste', 1),
  ('Urmas Danil', 'Urmas+Danil', 1), ('vakantne17', 'vakantne17', 1), ('Valdur Orav', 'Valdur+Orav', 2),
  ('Veronika Kruustik', 'Veronika+Kruustik', 1);
/*!40000 ALTER TABLE `persons`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schools`
--

DROP TABLE IF EXISTS `schools`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schools` (
  `school_id`         TINYINT(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `school_name`       VARCHAR(191)                 DEFAULT NULL,
  `school_short_name` VARCHAR(191)                 DEFAULT NULL,
  PRIMARY KEY (`school_id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 3
  DEFAULT CHARSET = latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schools`
--

LOCK TABLES `schools` WRITE;
/*!40000 ALTER TABLE `schools`
  DISABLE KEYS */;
INSERT INTO `schools` VALUES (1, 'Tartu Kutsehariduskeskus', 'tkhk'), (2, 'Valga Kutseõppekeskus', 'vkok');
/*!40000 ALTER TABLE `schools`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subjects` (
  `subject_id`   INT(10) UNSIGNED NOT NULL AUTO_INCREMENT
  COMMENT 'Autocreated',
  `subject_name` VARCHAR(50)      NOT NULL
  COMMENT 'Autocreated',
  PRIMARY KEY (`subject_id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 3
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects`
  DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1, 'subject #1'), (2, 'subject #2');
/*!40000 ALTER TABLE `subjects`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timetable`
--

DROP TABLE IF EXISTS `timetable`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timetable` (
  `timetable_id` INT(10) UNSIGNED    NOT NULL AUTO_INCREMENT,
  `day`          DATE                NOT NULL,
  `school_id`    TINYINT(3) UNSIGNED NOT NULL,
  PRIMARY KEY (`timetable_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timetable`
--

LOCK TABLES `timetable` WRITE;
/*!40000 ALTER TABLE `timetable`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `timetable`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `translation_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phrase` varchar(191) NOT NULL,
  `language` char(3) NOT NULL,
  `translation` varchar(191) DEFAULT NULL,
  `controller` varchar(15) NOT NULL,
  `action` varchar(20) NOT NULL,
  PRIMARY KEY (`translation_id`),
  UNIQUE KEY `language_phrase_controller_action_index` (`language`,`phrase`,`controller`,`action`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 54
  DEFAULT CHARSET = utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES (1, 'Action', 'en', '{untranslated}', 'welcome', 'index'),
  (2, 'Server returned response in an unexpected format', 'en', '{untranslated}', 'global', 'global'),
  (3, 'Forbidden', 'en', '{untranslated}', 'global', 'global'),
  (4, 'Server returned an error', 'en', '{untranslated}', 'global', 'global'),
  (5, 'Action', 'en', '{untranslated}', 'halo', 'index'), (6, 'Logout', 'en', '{untranslated}', 'global', 'global'),
  (7, 'Settings', 'en', '{untranslated}', 'global', 'global'),
  (8, 'Logged in as', 'en', '{untranslated}', 'global', 'global'),
  (9, 'Log out', 'en', '{untranslated}', 'global', 'global'),
  (10, 'Action', 'et', '{untranslated}', 'welcome', 'index'),
  (11, 'Log out', 'et', '{untranslated}', 'global', 'global'),
  (12, 'Server returned response in an unexpected format', 'et', '{untranslated}', 'global', 'global'),
  (13, 'Forbidden', 'et', '{untranslated}', 'global', 'global'),
  (14, 'Server returned an error', 'et', '{untranslated}', 'global', 'global'),
  (15, 'Please sign in', 'et', '{untranslated}', 'global', 'global'),
  (16, 'Email', 'et', '{untranslated}', 'global', 'global'),
  (17, 'Password', 'et', '{untranslated}', 'global', 'global'),
  (18, 'Sign in', 'et', '{untranslated}', 'global', 'global'),
  (19, 'Please sign in', 'et_', '{untranslated}', 'global', 'global'),
  (20, 'Email', 'et_', '{untranslated}', 'global', 'global'),
  (21, 'Password', 'et_', '{untranslated}', 'global', 'global'),
  (22, 'Sign in', 'et_', '{untranslated}', 'global', 'global'),
  (23, 'Action', 'et_', '{untranslated}', 'welcome', 'index'),
  (24, 'Log out', 'et_', '{untranslated}', 'global', 'global'),
  (25, 'Server returned response in an unexpected format', 'et_', '{untranslated}', 'global', 'global'),
  (26, 'Forbidden', 'et_', '{untranslated}', 'global', 'global'),
  (27, 'Server returned an error', 'et_', '{untranslated}', 'global', 'global'),
  (41, 'Log out', 'kh', '{untranslated}', 'global', 'global'),
  (42, 'Server returned response in an unexpected format', 'kh', '{untranslated}', 'global', 'global'),
  (43, 'Forbidden', 'kh', '{untranslated}', 'global', 'global'),
  (44, 'Server returned an error', 'kh', '{untranslated}', 'global', 'global'),
  (45, 'Log out', 'vk', '{untranslated}', 'global', 'global'),
  (46, 'Server returned response in an unexpected format', 'vk', '{untranslated}', 'global', 'global'),
  (47, 'Forbidden', 'vk', '{untranslated}', 'global', 'global'),
  (48, 'Server returned an error', 'vk', '{untranslated}', 'global', 'global'),
  (49, 'Subject Name', 'vk', '{untranslated}', 'global', 'global'),
  (50, 'Please sign in', 'en', '{untranslated}', 'global', 'global'),
  (51, 'Email', 'en', '{untranslated}', 'global', 'global'),
  (52, 'Password', 'en', '{untranslated}', 'global', 'global'),
  (53, 'Sign in', 'en', '{untranslated}', 'global', 'global');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_admin` tinyint(4) NOT NULL DEFAULT '0',
  `password` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(191) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'$2y$10$vTje.ndUFKHyuotY99iYkO.2aHJUgOsy2x0RMXP1UmrTe6CQsKbtm','demo@example.com',0,'Demo User');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-26 20:31:21
