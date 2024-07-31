
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
--
-- Database: `pharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_credentials`
--

CREATE TABLE `admin_credentials` (
  `USERNAME` varchar(50) COLLATE utf16_bin NOT NULL,
  `PASSWORD` varchar(50) COLLATE utf16_bin NOT NULL,
  `IS_LOGGED_IN` tinyint(1) DEFAULT 0,
  `EMAIL` varchar(100) COLLATE utf16_bin ,
    `CONTACT_NUMBER` varchar(10) COLLATE utf16_bin ,
    `ADDRESS` varchar(100) COLLATE utf16_bin ,
    `PHARMACY_NAME` varchar(100) COLLATE utf16_bin 
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `admin_credentials`
--


INSERT INTO `admin_credentials` (`USERNAME`, `PASSWORD`, `EMAIL`, `CONTACT_NUMBER`, `ADDRESS`, `PHARMACY_NAME`) VALUES
('admin', 'admin', 'admin@email.com', '1234567890', 'Mumbai', 'MediCare');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(20) COLLATE utf16_bin NOT NULL,
  `CONTACT_NUMBER` varchar(10) COLLATE utf16_bin NOT NULL,
  `ADDRESS` varchar(100) COLLATE utf16_bin NOT NULL,
  `DOCTOR_NAME` varchar(20) COLLATE utf16_bin NOT NULL,
  `DOCTOR_ADDRESS` varchar(100) COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `customers`
--


INSERT INTO `customers` (`ID`, `NAME`, `CONTACT_NUMBER`, `ADDRESS`, `DOCTOR_NAME`, `DOCTOR_ADDRESS`) VALUES
(1, 'John Doe', '1234567890', '123 Main St', 'Dr. Smith', '456 Elm St'),
(2, 'Jane Smith', '0987654321', '456 Oak St', 'Dr. Johnson', '789 Pine St'),
(3, 'Michael Johnson', '5551234567', '789 Cedar St', 'Dr. Brown', '321 Maple St'),
(4, 'Emily Davis', '9876543210', '987 Birch St', 'Dr. Martinez', '654 Birch St'),
(5, 'Christopher Wilson', '3215559876', '654 Pine St', 'Dr. Anderson', '987 Cedar St'),
(6, 'Sarah Miller', '4567890123', '234 Elm St', 'Dr. White', '567 Oak St'),
(7, 'David Garcia', '7890123456', '567 Maple St', 'Dr. Lee', '890 Cedar St'),
(8, 'Jennifer Brown', '2345678901', '890 Pine St', 'Dr. Taylor', '123 Birch St'),
(9, 'Matthew Jones', '6789012345', '123 Cedar St', 'Dr. Clark', '456 Pine St'),
(10, 'Laura Martinez', '8901234567', '456 Elm St', 'Dr. Moore', '789 Oak St'),
(11, 'Daniel Hernandez', '1234567890', '789 Maple St', 'Dr. King', '234 Cedar St'),
(12, 'Kimberly Lopez', '0987654321', '654 Pine St', 'Dr. Bailey', '567 Elm St'),
(13, 'William Gonzalez', '5551234567', '987 Cedar St', 'Dr. Rivera', '890 Maple St'),
(14, 'Amanda Young', '9876543210', '321 Birch St', 'Dr. Evans', '123 Elm St'),
(15, 'Justin Adams', '3215559876', '678 Oak St', 'Dr. Hughes', '456 Cedar St'),
(16, 'Megan Campbell', '4567890123', '890 Maple St', 'Dr. Murphy', '789 Pine St'),
(17, 'Kevin Wright', '7890123456', '123 Birch St', 'Dr. Collins', '234 Elm St'),
(18, 'Rachel Hill', '2345678901', '456 Elm St', 'Dr. Martinez', '567 Oak St'),
(19, 'Brandon Green', '6789012345', '789 Oak St', 'Dr. Taylor', '890 Cedar St'),
(20, 'Stephanie Carter', '8901234567', '123 Cedar St', 'Dr. Clark', '123 Pine St'),
(21, 'Joseph Cook', '1234567890', '456 Pine St', 'Dr. Lewis', '456 Maple St'),
(22, 'Lauren Washington', '0987654321', '789 Elm St', 'Dr. Turner', '789 Elm St'),
(23, 'Andrew Hill', '5551234567', '234 Maple St', 'Dr. Scott', '123 Maple St'),
(24, 'Jessica Reed', '9876543210', '567 Cedar St', 'Dr. Hall', '456 Cedar St'),
(25, 'Nicholas Diaz', '3215559876', '890 Elm St', 'Dr. Baker', '789 Elm St'),
(26, 'Ashley Perez', '4567890123', '123 Birch St', 'Dr. Lopez', '234 Pine St'),
(27, 'Jonathan Roberts', '7890123456', '456 Elm St', 'Dr. Carter', '567 Maple St'),
(28, 'Samantha Turner', '2345678901', '789 Oak St', 'Dr. Young', '890 Oak St'),
(29, 'Alexander Hill', '6789012345', '123 Cedar St', 'Dr. Adams', '123 Cedar St'),
(30, 'Emily Phillips', '8901234567', '456 Pine St', 'Dr. Perez', '456 Pine St'),
(31, 'Ryan Mitchell', '1234567890', '789 Elm St', 'Dr. Flores', '789 Elm St'),
(32, 'Maria Flores', '0987654321', '234 Maple St', 'Dr. Williams', '123 Maple St'),
(33, 'Benjamin Martinez', '5551234567', '567 Cedar St', 'Dr. Johnson', '456 Cedar St'),
(34, 'Gabriella Russell', '9876543210', '890 Elm St', 'Dr. Gonzalez', '789 Elm St'),
(35, 'Jacob Coleman', '3215559876', '123 Birch St', 'Dr. Carter', '234 Pine St'),
(36, 'Olivia Walker', '4567890123', '456 Elm St', 'Dr. Moore', '567 Maple St'),
(37, 'Tyler Ward', '7890123456', '789 Oak St', 'Dr. Hill', '890 Oak St'),
(38, 'Hannah Bell', '2345678901', '123 Cedar St', 'Dr. Evans', '123 Cedar St'),
(39, 'William Richardson', '6789012345', '456 Pine St', 'Dr. Martinez', '456 Pine St'),
(40, 'Natalie Hughes', '8901234567', '789 Elm St', 'Dr. Carter', '789 Elm St'),
(41, 'Ethan Stewart', '1234567890', '234 Maple St', 'Dr. Perez', '123 Maple St'),
(42, 'Madison Cooper', '0987654321', '567 Cedar St', 'Dr. King', '456 Cedar St'),
(43, 'Michael Foster', '5551234567', '890 Elm St', 'Dr. Lee', '789 Elm St'),
(44, 'Abigail Morris', '9876543210', '123 Birch St', 'Dr. Taylor', '234 Pine St'),
(45, 'Dylan Murphy', '3215559876', '456 Elm St', 'Dr. Collins', '567 Maple St'),
(46, 'Kayla Cox', '4567890123', '789 Oak St', 'Dr. Gonzalez', '890 Oak St'),
(47, 'James Powell', '7890123456', '123 Cedar St', 'Dr. Clark', '123 Cedar St'),
(48, 'Emma Bryant', '2345678901', '456 Pine St', 'Dr. Turner', '456 Pine St'),
(49, 'Zachary Marshall', '6789012345', '789 Elm St', 'Dr. Adams', '789 Elm St'),
(50, 'Grace Richardson', '8901234567', '234 Maple St', 'Dr. Baker', '123 Maple St');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `INVOICE_ID` int(11) NOT NULL,
  `NET_TOTAL` double NOT NULL DEFAULT 0,
  `INVOICE_DATE` date NOT NULL DEFAULT current_timestamp(),
  `CUSTOMER_ID` int(11) NOT NULL,
  `TOTAL_AMOUNT` double NOT NULL,
  `TOTAL_DISCOUNT` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`INVOICE_ID`, `NET_TOTAL`, `INVOICE_DATE`, `CUSTOMER_ID`, `TOTAL_AMOUNT`, `TOTAL_DISCOUNT`) VALUES
(1, 100.00, '2024-04-14', 1, 100.00, 0.00),
(2, 150.00, '2024-04-14', 2, 150.00, 0.00),
(3, 200.00, '2024-04-14', 3, 200.00, 0.00),
(4, 250.00, '2024-04-14', 4, 250.00, 0.00),
(5, 300.00, '2024-04-14', 5, 300.00, 0.00),
(6, 350.00, '2024-04-14', 6, 350.00, 0.00),
(7, 400.00, '2024-04-14', 7, 400.00, 0.00),
(8, 450.00, '2024-04-14', 8, 450.00, 0.00),
(9, 500.00, '2024-04-14', 9, 500.00, 0.00),
(10, 550.00, '2024-04-14', 10, 550.00, 0.00),
(11, 600.00, '2024-04-14', 11, 600.00, 0.00),
(12, 650.00, '2024-04-14', 12, 650.00, 0.00),
(13, 700.00, '2024-04-14', 13, 700.00, 0.00),
(14, 750.00, '2024-04-14', 14, 750.00, 0.00),
(15, 800.00, '2024-04-14', 15, 800.00, 0.00),
(16, 850.00, '2024-04-14', 16, 850.00, 0.00),
(17, 900.00, '2024-04-14', 17, 900.00, 0.00),
(18, 950.00, '2024-04-14', 18, 950.00, 0.00),
(19, 1000.00, '2024-04-14', 19, 1000.00, 0.00),
(20, 1050.00, '2024-04-14', 20, 1050.00, 0.00),
(21, 1100.00, '2024-04-14', 21, 1100.00, 0.00),
(22, 1150.00, '2024-04-14', 22, 1150.00, 0.00),
(23, 1200.00, '2024-04-14', 23, 1200.00, 0.00),
(24, 1250.00, '2024-04-14', 24, 1250.00, 0.00),
(25, 1300.00, '2024-04-14', 25, 1300.00, 0.00),
(26, 1350.00, '2024-04-14', 26, 1350.00, 0.00),
(27, 1400.00, '2024-04-14', 27, 1400.00, 0.00),
(28, 1450.00, '2024-04-14', 28, 1450.00, 0.00),
(29, 1500.00, '2024-04-14', 29, 1500.00, 0.00),
(30, 1550.00, '2024-04-14', 30, 1550.00, 0.00),
(31, 1600.00, '2024-04-14', 31, 1600.00, 0.00),
(32, 1650.00, '2024-04-14', 32, 1650.00, 0.00),
(33, 1700.00, '2024-04-14', 33, 1700.00, 0.00),
(34, 1750.00, '2024-04-14', 34, 1750.00, 0.00),
(35, 1800.00, '2024-04-14', 35, 1800.00, 0.00),
(36, 1850.00, '2024-04-14', 36, 1850.00, 0.00),
(37, 1900.00, '2024-04-14', 37, 1900.00, 0.00),
(38, 1950.00, '2024-04-14', 38, 1950.00, 0.00),
(39, 2000.00, '2024-04-14', 39, 2000.00, 0.00),
(40, 2050.00, '2024-04-14', 40, 2050.00, 0.00),
(41, 2100.00, '2024-04-14', 41, 2100.00, 0.00),
(42, 2150.00, '2024-04-14', 42, 2150.00, 0.00),
(43, 2200.00, '2024-04-14', 43, 2200.00, 0.00),
(44, 2250.00, '2024-04-14', 44, 2250.00, 0.00),
(45, 2300.00, '2024-04-14', 45, 2300.00, 0.00),
(46, 2350.00, '2024-04-14', 46, 2350.00, 0.00),
(47, 2400.00, '2024-04-14', 47, 2400.00, 0.00),
(48, 2450.00, '2024-04-14', 48, 2450.00, 0.00),
(49, 2500.00, '2024-04-14', 49, 2500.00, 0.00),
(50, 2550.00, '2024-04-14', 50, 2550.00, 0.00);


-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(100) COLLATE utf16_bin NOT NULL,
  `PACKING` varchar(20) COLLATE utf16_bin NOT NULL,
  `GENERIC_NAME` varchar(100) COLLATE utf16_bin NOT NULL,
  `SUPPLIER_NAME` varchar(100) COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`ID`, `NAME`, `PACKING`, `GENERIC_NAME`, `SUPPLIER_NAME`) VALUES
(6, 'Amoxicillin', '20tab', 'Amoxicillin', 'Medico Pharma'),
(7, 'Cetrizine', '10tab', 'Cetrizine Hydrochloride', 'PharmaTech'),
(8, 'Omeprazole', '14cap', 'Omeprazole', 'Healthline Pharmaceuticals'),
(9, 'Ibuprofen', '30tab', 'Ibuprofen', 'Cure Pharmaceuticals'),
(10, 'Aspirin', '100tab', 'Acetylsalicylic Acid', 'MediCorp'),
(11, 'Loratadine', '20tab', 'Loratadine', 'Wellness Pharma'),
(12, 'Ciprofloxacin', '10tab', 'Ciprofloxacin', 'MediCare Solutions'),
(13, 'Metformin', '60tab', 'Metformin', 'PharmaDynamics'),
(14, 'Atorvastatin', '30tab', 'Atorvastatin', 'HealthMatters'),
(15, 'Losartan', '28tab', 'Losartan Potassium', 'MediGenix'),
(16, 'Simvastatin', '30tab', 'Simvastatin', 'PharmaCare'),
(17, 'Metoprolol', '60tab', 'Metoprolol', 'MediConnect'),
(18, 'Amlodipine', '30tab', 'Amlodipine', 'HealthSolutions'),
(19, 'Salbutamol', '200doses', 'Salbutamol', 'PharmaServe'),
(20, 'Fluoxetine', '20cap', 'Fluoxetine', 'MediCo'),
(21, 'Escitalopram', '30tab', 'Escitalopram', 'WellnessRx'),
(22, 'Citalopram', '30tab', 'Citalopram', 'MediLine'),
(23, 'Diazepam', '30tab', 'Diazepam', 'HealthCare Pharma'),
(24, 'Alprazolam', '60tab', 'Alprazolam', 'PharmaLink'),
(25, 'Tramadol', '50tab', 'Tramadol', 'MediCure'),
(26, 'Codeine', '30tab', 'Codeine', 'Wellness Health'),
(27, 'Gabapentin', '90cap', 'Gabapentin', 'MediWell'),
(28, 'Pregabalin', '60cap', 'Pregabalin', 'PharmaFirst'),
(29, 'Morphine', '20tab', 'Morphine', 'HealthWellness'),
(30, 'Oxycodone', '60tab', 'Oxycodone', 'MediPharma'),
(31, 'Hydrocodone', '30tab', 'Hydrocodone', 'PharmaZone'),
(32, 'Buprenorphine', '30tab', 'Buprenorphine', 'HealthCure'),
(33, 'Methadone', '30tab', 'Methadone', 'MediPharma Solutions'),
(34, 'Fentanyl', '10tab', 'Fentanyl', 'Wellness Pharmaceuticals'),
(35, 'Acetaminophen', '100tab', 'Acetaminophen', 'PharmaCare Solutions'),
(36, 'Diphenhydramine', '50tab', 'Diphenhydramine', 'MediServe'),
(37, 'Promethazine', '30tab', 'Promethazine', 'Wellness HealthCare'),
(38, 'Hydroxyzine', '30tab', 'Hydroxyzine', 'PharmaZone Solutions'),
(39, 'Chlorpheniramine', '100tab', 'Chlorpheniramine', 'HealthLine Pharma'),
(40, 'Cetirizine', '30tab', 'Cetirizine', 'MediCure Solutions'),
(41, 'Desloratadine', '30tab', 'Desloratadine', 'Wellness Pharmaceuticals'),
(42, 'Levocetirizine', '30tab', 'Levocetirizine', 'PharmaCare Solutions'),
(43, 'Fexofenadine', '30tab', 'Fexofenadine', 'MediServe Solutions'),
(44, 'Diphenhydramine', '30tab', 'Diphenhydramine', 'Wellness HealthCare Pharma'),
(45, 'Loratadine', '30tab', 'Loratadine', 'HealthLine PharmaCare'),
(46, 'Oxymetazoline', '30tab', 'Oxymetazoline', 'MediCure HealthCare'),
(47, 'Phenylephrine', '30tab', 'Phenylephrine', 'Wellness PharmaCare'),
(48, 'Pseudoephedrine', '30tab', 'Pseudoephedrine', 'PharmaServe HealthCare'),
(49, 'Chlorpheniramine', '30tab', 'Chlorpheniramine', 'MediServe PharmaCare'),
(50, 'Levocetirizine', '30tab', 'Levocetirizine', 'Wellness HealthCare');


-- --------------------------------------------------------

--
-- Table structure for table `medicines_stock`
--

CREATE TABLE `medicines_stock` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(100) COLLATE utf16_bin NOT NULL,
  `BATCH_ID` varchar(20) COLLATE utf16_bin NOT NULL,
  `EXPIRY_DATE` varchar(10) COLLATE utf16_bin NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `MRP` double NOT NULL,
  `RATE` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `medicines_stock`
--

INSERT INTO `medicines_stock` (`ID`, `NAME`, `BATCH_ID`, `EXPIRY_DATE`, `QUANTITY`, `MRP`, `RATE`) VALUES
(5, 'Amoxicillin', 'AMOX678', '03/25', 10, 50.00, 40.00),
(6, 'Cetrizine', 'CETR123', '06/26', 20, 20.00, 15.00),
(7, 'Omeprazole', 'OMEP432', '09/27', 15, 35.00, 30.00),
(8, 'Ibuprofen', 'IBUP564', '12/28', 30, 25.00, 20.00),
(9, 'Aspirin', 'ASPI789', '03/29', 25, 20.00, 15.00),
(10, 'Loratadine', 'LORA987', '06/30', 40, 30.00, 25.00),
(11, 'Ciprofloxacin', 'CIPRO654', '09/31', 20, 45.00, 40.00),
(12, 'Metformin', 'METF231', '12/32', 50, 15.00, 10.00),
(13, 'Atorvastatin', 'ATOR432', '03/33', 30, 40.00, 35.00),
(14, 'Losartan', 'LOSA765', '06/34', 35, 30.00, 25.00),
(15, 'Simvastatin', 'SIMV876', '09/35', 40, 35.00, 30.00),
(16, 'Metoprolol', 'METO987', '12/36', 25, 45.00, 40.00),
(17, 'Amlodipine', 'AMLO654', '03/37', 20, 40.00, 35.00),
(18, 'Salbutamol', 'SALB321', '06/38', 30, 20.00, 15.00),
(19, 'Fluoxetine', 'FLUO987', '09/39', 15, 30.00, 25.00),
(20, 'Escitalopram', 'ESCI654', '12/40', 20, 35.00, 30.00),
(21, 'Citalopram', 'CITA321', '03/41', 25, 35.00, 30.00),
(22, 'Diazepam', 'DIAZ876', '06/42', 10, 50.00, 45.00),
(23, 'Alprazolam', 'ALPR987', '09/43', 5, 60.00, 55.00),
(24, 'Tramadol', 'TRAM654', '12/44', 15, 40.00, 35.00),
(25, 'Codeine', 'CODE321', '03/45', 10, 55.00, 50.00),
(26, 'Gabapentin', 'GABA876', '06/46', 20, 30.00, 25.00),
(27, 'Pregabalin', 'PREG987', '09/47', 25, 35.00, 30.00),
(28, 'Morphine', 'MORP654', '12/48', 8, 70.00, 65.00),
(29, 'Oxycodone', 'OXYC321', '03/49', 12, 75.00, 70.00),
(30, 'Hydrocodone', 'HYDR876', '06/50', 18, 80.00, 75.00),
(31, 'Buprenorphine', 'BUPR987', '09/51', 6, 85.00, 80.00),
(32, 'Methadone', 'METH654', '12/52', 10, 90.00, 85.00),
(33, 'Fentanyl', 'FENT321', '03/53', 5, 100.00, 95.00),
(34, 'Acetaminophen', 'ACET876', '06/54', 20, 25.00, 20.00),
(35, 'Diphenhydramine', 'DIPH987', '09/55', 30, 20.00, 15.00),
(36, 'Promethazine', 'PROM654', '12/56', 10, 30.00, 25.00),
(37, 'Hydroxyzine', 'HYDR321', '03/57', 15, 35.00, 30.00),
(38, 'Chlorpheniramine', 'CHLO876', '06/58', 25, 20.00, 15.00),
(39, 'Cetirizine', 'CETI987', '09/59', 30, 25.00, 20.00),
(40, 'Desloratadine', 'DESL654', '12/60', 35, 30.00, 25.00),
(41, 'Levocetirizine', 'LEVO321', '03/61', 40, 35.00, 30.00),
(42, 'Fexofenadine', 'FEXO876', '06/62', 45, 40.00, 35.00),
(43, 'Diphenhydramine', 'DIPH987', '09/63', 20, 25.00, 20.00),
(44, 'Loratadine', 'LORA654', '12/64', 25, 30.00, 25.00),
(45, 'Oxymetazoline', 'OXYM321', '03/65', 10, 35.00, 30.00),
(46, 'Phenylephrine', 'PHEN876', '06/66', 15, 40.00, 35.00),
(47, 'Pseudoephedrine', 'PSEU987', '09/67', 20, 45.00, 40.00),
(48, 'Chlorpheniramine', 'CHLO654', '12/68', 25, 50.00, 45.00),
(49, 'Levocetirizine', 'LEVO321', '03/69', 30, 55.00, 50.00),
(50, 'Acetaminophen', 'ACET987', '06/70', 35, 60.00, 55.00);


-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `SUPPLIER_NAME` varchar(100) COLLATE utf16_bin NOT NULL,
  `INVOICE_NUMBER` int(11) NOT NULL,
  `VOUCHER_NUMBER` int(11) NOT NULL,
  `PURCHASE_DATE` varchar(10) COLLATE utf16_bin NOT NULL,
  `TOTAL_AMOUNT` double NOT NULL,
  `PAYMENT_STATUS` varchar(20) COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;


INSERT INTO `purchases` (`SUPPLIER_NAME`, `INVOICE_NUMBER`, `VOUCHER_NUMBER`, `PURCHASE_DATE`, `TOTAL_AMOUNT`, `PAYMENT_STATUS`) VALUES
('BDPL PHARMA', 1001, 2001, '2024-01-01', 500.00, 'Paid'),
('Kiran Pharma', 1002, 2002, '2024-01-02', 600.00, 'Pending'),
('Healthline Pharmaceuticals', 1003, 2003, '2024-01-03', 700.00, 'Paid'),
('Cure Pharmaceuticals', 1004, 2004, '2024-01-04', 800.00, 'Pending'),
('MediCorp', 1005, 2005, '2024-01-05', 900.00, 'Paid'),
('Wellness Pharma', 1006, 2006, '2024-01-06', 1000.00, 'Pending'),
('MediCare Solutions', 1007, 2007, '2024-01-07', 1100.00, 'Paid'),
('PharmaDynamics', 1008, 2008, '2024-01-08', 1200.00, 'Pending'),
('HealthMatters', 1009, 2009, '2024-01-09', 1300.00, 'Paid'),
('MediGenix', 1010, 2010, '2024-01-10', 1400.00, 'Pending'),
('PharmaCare', 1011, 2011, '2024-01-11', 1500.00, 'Paid'),
('MediConnect', 1012, 2012, '2024-01-12', 1600.00, 'Pending'),
('HealthSolutions', 1013, 2013, '2024-01-13', 1700.00, 'Paid'),
('PharmaServe', 1014, 2014, '2024-01-14', 1800.00, 'Pending'),
('MediCo', 1015, 2015, '2024-01-15', 1900.00, 'Paid'),
('WellnessRx', 1016, 2016, '2024-01-16', 2000.00, 'Pending'),
('MediLine', 1017, 2017, '2024-01-17', 2100.00, 'Paid'),
('HealthCare Pharma', 1018, 2018, '2024-01-18', 2200.00, 'Pending'),
('PharmaLink', 1019, 2019, '2024-01-19', 2300.00, 'Paid'),
('MediCure', 1020, 2020, '2024-01-20', 2400.00, 'Pending'),
('Wellness Health', 1021, 2021, '2024-01-21', 2500.00, 'Paid'),
('MediWell', 1022, 2022, '2024-01-22', 2600.00, 'Pending'),
('PharmaFirst', 1023, 2023, '2024-01-23', 2700.00, 'Paid'),
('HealthWellness', 1024, 2024, '2024-01-24', 2800.00, 'Pending'),
('MediPharma', 1025, 2025, '2024-01-25', 2900.00, 'Paid'),
('PharmaZone', 1026, 2026, '2024-01-26', 3000.00, 'Pending'),
('HealthCure', 1027, 2027, '2024-01-27', 3100.00, 'Paid'),
('MediPharma Solutions', 1028, 2028, '2024-01-28', 3200.00, 'Pending'),
('Wellness Pharmaceuticals', 1029, 2029, '2024-01-29', 3300.00, 'Paid'),
('PharmaCare Solutions', 1030, 2030, '2024-01-30', 3400.00, 'Pending'),
('MediServe', 1031, 2031, '2024-01-31', 3500.00, 'Paid'),
('Wellness HealthCare', 1032, 2032, '2024-02-01', 3600.00, 'Pending'),
('HealthLine Pharma', 1033, 2033, '2024-02-02', 3700.00, 'Paid'),
('MediCure Solutions', 1034, 2034, '2024-02-03', 3800.00, 'Pending'),
('Wellness Pharmaceuticals', 1035, 2035, '2024-02-04', 3900.00, 'Paid'),
('PharmaCare Solutions', 1036, 2036, '2024-02-05', 4000.00, 'Pending'),
('MediServe Solutions', 1037, 2037, '2024-02-06', 4100.00, 'Paid'),
('Wellness HealthCare Pharma', 1038, 2038, '2024-02-07', 4200.00, 'Pending'),
('HealthLine PharmaCare', 1039, 2039, '2024-02-08', 4300.00, 'Paid'),
('MediCure HealthCare', 1040, 2040, '2024-02-09', 4400.00, 'Pending'),
('Wellness PharmaCare', 1041, 2041, '2024-02-10', 4500.00, 'Paid'),
('PharmaServe HealthCare', 1042, 2042, '2024-02-11', 4600.00, 'Pending'),
('MediServe PharmaCare', 1043, 2043, '2024-02-12', 4700.00, 'Paid'),
('Wellness HealthCare Pharma', 1044, 2044, '2024-02-13', 4800.00, 'Pending'),
('MediCure PharmaCare', 1045, 2045, '2024-02-14', 4900.00, 'Paid'),
('PharmaZone HealthCare', 1046, 2046, '2024-02-15', 5000.00, 'Pending'),
('HealthCure PharmaCare', 1047, 2047, '2024-02-16', 5100.00, 'Paid'),
('MediPharma HealthCare', 1048, 2048, '2024-02-17', 5200.00, 'Pending'),
('PharmaCare Solutions', 1049, 2049, '2024-02-18', 5300.00, 'Paid'),
('MediServe Solutions', 1050, 2050, '2024-02-19', 5400.00, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(100) COLLATE utf16_bin NOT NULL,
  `EMAIL` varchar(100) COLLATE utf16_bin NOT NULL,
  `CONTACT_NUMBER` varchar(10) COLLATE utf16_bin NOT NULL,
  `ADDRESS` varchar(100) COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `suppliers`
--
INSERT INTO `suppliers` (`ID`, `NAME`, `EMAIL`, `CONTACT_NUMBER`, `ADDRESS`) VALUES
(1, 'BDPL PHARMA', 'bdplpharma@example.com', '1234567890', '123 Pharma Street, City'),
(2, 'Kiran Pharma', 'kiranpharma@example.com', '9876543210', '456 Medicine Avenue, Town'),
(3, 'Healthline Pharmaceuticals', 'healthline@example.com', '7890123456', '789 Healthcare Road, Village'),
(4, 'Cure Pharmaceuticals', 'curepharma@example.com', '6543210987', '321 Cure Lane, Suburb'),
(5, 'MediCorp', 'medicorp@example.com', '5678901234', '567 Medical Boulevard, District'),
(6, 'Wellness Pharma', 'wellnesspharma@example.com', '4321098765', '890 Wellness Drive, County'),
(7, 'MediCare Solutions', 'medicaresolutions@example.com', '2109876543', '210 MediCare Circle, Province'),
(8, 'PharmaDynamics', 'pharmadynamics@example.com', '6543210987', '654 PharmaDynamics Lane, State'),
(9, 'HealthMatters', 'healthmatters@example.com', '1234567890', '123 HealthMatters Street, Capital'),
(10, 'MediGenix', 'medigenix@example.com', '7890123456', '789 MediGenix Avenue, Metropolis'),
(11, 'PharmaCare', 'pharmacare@example.com', '9876543210', '987 PharmaCare Road, Megalopolis'),
(12, 'MediConnect', 'mediconnect@example.com', '3210987654', '321 Connect Drive, City'),
(13, 'HealthSolutions', 'healthsolutions@example.com', '6543210987', '654 HealthSolutions Lane, Town'),
(14, 'PharmaServe', 'pharmaserve@example.com', '8901234567', '890 Serve Avenue, Village'),
(15, 'MediCo', 'medico@example.com', '2109876543', '210 MediCo Road, Suburb'),
(16, 'WellnessRx', 'wellnessrx@example.com', '5432109876', '543 WellnessRx Drive, District'),
(17, 'MediLine', 'mediline@example.com', '6789012345', '678 MediLine Lane, County'),
(18, 'HealthCare Pharma', 'healthcarepharma@example.com', '1234567890', '123 Healthcare Pharma Street, Province'),
(19, 'PharmaLink', 'pharmalink@example.com', '7890123456', '789 PharmaLink Avenue, State'),
(20, 'MediCure', 'medicure@example.com', '2109876543', '210 MediCure Road, Capital'),
(21, 'Wellness Health', 'wellnesshealth@example.com', '5432109876', '543 Wellness Health Drive, Metropolis'),
(22, 'MediWell', 'mediwell@example.com', '8765432109', '876 MediWell Lane, City'),
(23, 'PharmaFirst', 'pharmafirst@example.com', '1098765432', '109 PharmaFirst Avenue, Town'),
(24, 'HealthWellness', 'healthwellness@example.com', '2345678901', '234 HealthWellness Road, Village'),
(25, 'MediPharma', 'medipharma@example.com', '4567890123', '456 MediPharma Drive, Suburb'),
(26, 'PharmaZone', 'pharmazone@example.com', '6789012345', '678 PharmaZone Lane, District'),
(27, 'HealthCure', 'healthcure@example.com', '8901234567', '890 HealthCure Avenue, County'),
(28, 'MediPharma Solutions', 'medipharma@example.com', '1098765432', '109 MediPharma Solutions Road, Province'),
(29, 'Wellness Pharmaceuticals', 'wellnesspharma@example.com', '4321098765', '432 Wellness Pharmaceuticals Drive, State'),
(30, 'PharmaCare Solutions', 'pharmacare@example.com', '6543210987', '654 PharmaCare Solutions Lane, Capital'),
(31, 'MediServe', 'mediserve@example.com', '8765432109', '876 MediServe Road, Metropolis'),
(32, 'Wellness HealthCare', 'wellnesshealthcare@example.com', '2345678901', '234 Wellness HealthCare Drive, City'),
(33, 'HealthLine Pharma', 'healthlinepharma@example.com', '4567890123', '456 HealthLine Pharma Avenue, Town'),
(34, 'MediCure Solutions', 'medicuresolutions@example.com', '6789012345', '678 MediCure Solutions Road, Village'),
(35, 'Wellness Pharmaceuticals', 'wellnesspharma@example.com', '8901234567', '890 Wellness Pharmaceuticals Lane, Suburb'),
(36, 'PharmaCare Solutions', 'pharmacare@example.com', '1098765432', '109 PharmaCare Solutions Road, District'),
(37, 'MediServe Solutions', 'mediservesolutions@example.com', '4321098765', '432 MediServe Solutions Drive, County'),
(38, 'Wellness HealthCare Pharma', 'wellnesshealthcarepharma@example.com', '6543210987', '654 Wellness HealthCare Pharma Avenue, Province'),
(39, 'HealthLine PharmaCare', 'healthlinepharmacare@example.com', '8765432109', '876 HealthLine PharmaCare Road, State'),
(40, 'MediCure HealthCare', 'medicurehealthcare@example.com', '2345678901', '234 MediCure HealthCare Drive, Capital'),
(41, 'Wellness PharmaCare', 'wellnesspharmacare@example.com', '4567890123', '456 Wellness PharmaCare Lane, Metropolis'),
(42, 'PharmaServe HealthCare', 'pharmaservehealthcare@example.com', '6789012345', '678 PharmaServe HealthCare Road, City'),
(43, 'MediServe PharmaCare', 'mediservepharmacare@example.com', '8901234567', '890 MediServe PharmaCare Avenue, Town'),
(44, 'Wellness HealthCare Pharma', 'wellnesshealthcarepharma@example.com', '1098765432', '109 Wellness HealthCare Pharma Drive, Village'),
(45, 'MediCure PharmaCare', 'medicurepharmacare@example.com', '4321098765', '432 MediCure PharmaCare Road, Suburb'),
(46, 'PharmaZone HealthCare', 'pharmazonehealthcare@example.com', '6543210987', '654 PharmaZone HealthCare Lane, District'),
(47, 'HealthCure PharmaCare', 'healthcurepharmacare@example.com', '8765432109', '876 HealthCure PharmaCare Avenue, County'),
(48, 'MediPharma HealthCare', 'medipharmahealthcare@example.com', '2345678901', '234 MediPharma HealthCare Drive, Province'),
(49, 'PharmaCare Solutions', 'pharmacaresolutions@example.com', '4567890123', '456 PharmaCare Solutions Road, State'),
(50, 'MediServe Solutions', 'mediservesolutions@example.com', '6789012345', '678 MediServe Solutions Lane, Capital');



--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_credentials`
--
ALTER TABLE `admin_credentials`
  ADD PRIMARY KEY (`USERNAME`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`INVOICE_ID`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `medicines_stock`
--
ALTER TABLE `medicines_stock`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`VOUCHER_NUMBER`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `INVOICE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `medicines_stock`
--
ALTER TABLE `medicines_stock`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `VOUCHER_NUMBER` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;


