-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-04-2020 a las 16:31:48
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `optics`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `address`
--

CREATE TABLE `address` (
  `idAddress` int(11) NOT NULL,
  `streetAddress` varchar(150) NOT NULL,
  `numberAddress` varchar(5) NOT NULL,
  `floorAddress` varchar(50) NOT NULL,
  `doorAddress` varchar(50) NOT NULL,
  `cityAddress` varchar(150) NOT NULL,
  `zipcodeAddress` varchar(15) NOT NULL,
  `telephoneAddress` varchar(20) NOT NULL,
  `faxAddress` varchar(25) DEFAULT NULL,
  `Supplier_idSupplier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brand`
--

CREATE TABLE `brand` (
  `idBrand` int(11) NOT NULL,
  `nameBrand` varchar(150) NOT NULL,
  `Supplier_idSupplier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `brand`
--

INSERT INTO `brand` (`idBrand`, `nameBrand`, `Supplier_idSupplier`) VALUES
(1, 'Bayran', 2),
(2, 'OLKEY', 3),
(3, 'ZOOM', 1),
(4, 'simply', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `client`
--

CREATE TABLE `client` (
  `idClient` int(11) NOT NULL,
  `nameClient` varchar(150) NOT NULL,
  `addressClient` varchar(200) NOT NULL,
  `emailClient` varchar(150) NOT NULL,
  `telephoneClient` varchar(20) NOT NULL,
  `dataClient` datetime NOT NULL,
  `adviseClient` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `client`
--

INSERT INTO `client` (`idClient`, `nameClient`, `addressClient`, `emailClient`, `telephoneClient`, `dataClient`, `adviseClient`) VALUES
(1, 'German', 'GRNA VIA 275 ', 'gemran@punto.com', '677329106', '2020-04-20 00:00:00', ''),
(2, 'Marian', 'PASEO DE LA U', 'marian@punto.com', '642211222', '2020-01-01 00:00:00', 'julian'),
(3, 'Julian', 'ALTO DEL PERRO', 'juliuan@punto.com', '610212454', '2019-12-01 00:00:00', ''),
(4, 'Penelope', 'calle falsa 123', 'penelope@punto.com', '641022454', '2019-12-24 00:00:00', 'julian');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `color`
--

CREATE TABLE `color` (
  `idColor` int(11) NOT NULL,
  `nameColor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `color`
--

INSERT INTO `color` (`idColor`, `nameColor`) VALUES
(4, 'Amarillo'),
(3, 'Negro'),
(1, 'Rojo'),
(5, 'Transparenete'),
(2, 'Verde');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employee`
--

CREATE TABLE `employee` (
  `idEmployee` int(11) NOT NULL,
  `nameEmployee` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `employee`
--

INSERT INTO `employee` (`idEmployee`, `nameEmployee`) VALUES
(1, 'Cirstian soto'),
(2, 'Pepe casto'),
(3, 'Rober martinez'),
(4, 'Pedro Infante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `glasses`
--

CREATE TABLE `glasses` (
  `idGlasses` int(11) NOT NULL,
  `Brand_idBrand` int(11) NOT NULL,
  `frameGlasses` varchar(45) DEFAULT NULL,
  `fameColor_Color_idColor` int(11) NOT NULL,
  `rightlens_Graduation_idGraduation` int(11) NOT NULL,
  `rightlens_Color_idColor` int(11) NOT NULL,
  `leftlens_Graduation_idGraduation` int(11) NOT NULL,
  `leftlens_Color_idColor` int(11) NOT NULL,
  `price_Glasses` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `glasses`
--

INSERT INTO `glasses` (`idGlasses`, `Brand_idBrand`, `frameGlasses`, `fameColor_Color_idColor`, `rightlens_Graduation_idGraduation`, `rightlens_Color_idColor`, `leftlens_Graduation_idGraduation`, `leftlens_Color_idColor`, `price_Glasses`) VALUES
(1, 1, 'FLOTANTE', 3, 2, 5, 3, 5, '300'),
(2, 2, 'METALICA', 2, 3, 1, 2, 1, '283.50'),
(3, 4, 'PASTA', 1, 1, 1, 1, 1, '200.60'),
(4, 2, 'PASTA', 3, 1, 1, 1, 1, '200.60');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `graduation`
--

CREATE TABLE `graduation` (
  `idGraduation` int(11) NOT NULL,
  `numberGraduation` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `graduation`
--

INSERT INTO `graduation` (`idGraduation`, `numberGraduation`) VALUES
(1, '0.5'),
(2, '1'),
(3, '1.5'),
(4, '2'),
(5, '2.5'),
(6, '3'),
(7, '3.5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sale`
--

CREATE TABLE `sale` (
  `idSale` int(11) NOT NULL,
  `Client_idClient` int(11) NOT NULL,
  `Glasses_idGlasses` int(11) NOT NULL,
  `Employee_idEmployee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sale`
--

INSERT INTO `sale` (`idSale`, `Client_idClient`, `Glasses_idGlasses`, `Employee_idEmployee`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `supplier`
--

CREATE TABLE `supplier` (
  `idSupplier` int(11) NOT NULL,
  `nameSupplier` varchar(150) NOT NULL,
  `nifSupplier` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `supplier`
--

INSERT INTO `supplier` (`idSupplier`, `nameSupplier`, `nifSupplier`) VALUES
(1, 'GAFAS EL BORROSO', '12121212N'),
(2, 'LENTES Y GAFAS EL MIOPE', '13131313B'),
(3, 'LENTE POCA LUZ ', '14141414T');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`idAddress`),
  ADD KEY `fk_Address_Supplier1_idx` (`Supplier_idSupplier`);

--
-- Indices de la tabla `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`idBrand`),
  ADD UNIQUE KEY `nameBrand_UNIQUE` (`nameBrand`),
  ADD KEY `fk_Brand_Supplier1_idx` (`Supplier_idSupplier`);

--
-- Indices de la tabla `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`idClient`),
  ADD UNIQUE KEY `emailClient_UNIQUE` (`emailClient`);

--
-- Indices de la tabla `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`idColor`),
  ADD UNIQUE KEY `nameColor_UNIQUE` (`nameColor`);

--
-- Indices de la tabla `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`idEmployee`);

--
-- Indices de la tabla `glasses`
--
ALTER TABLE `glasses`
  ADD PRIMARY KEY (`idGlasses`),
  ADD KEY `fk_Glasses_Brand_idx` (`Brand_idBrand`),
  ADD KEY `fk_Glasses_Color1_idx` (`fameColor_Color_idColor`),
  ADD KEY `fk_Glasses_Graduation1_idx` (`rightlens_Graduation_idGraduation`),
  ADD KEY `fk_Glasses_Graduation2_idx` (`leftlens_Graduation_idGraduation`),
  ADD KEY `fk_Glasses_Color2_idx` (`rightlens_Color_idColor`),
  ADD KEY `fk_Glasses_Color3_idx` (`leftlens_Color_idColor`);

--
-- Indices de la tabla `graduation`
--
ALTER TABLE `graduation`
  ADD PRIMARY KEY (`idGraduation`);

--
-- Indices de la tabla `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`idSale`),
  ADD UNIQUE KEY `Glasses_idGlasses_UNIQUE` (`Glasses_idGlasses`),
  ADD KEY `fk_Sale_Client1_idx` (`Client_idClient`),
  ADD KEY `fk_Sale_Glasses1_idx` (`Glasses_idGlasses`),
  ADD KEY `fk_Sale_Employee1_idx` (`Employee_idEmployee`);

--
-- Indices de la tabla `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`idSupplier`),
  ADD UNIQUE KEY `nifSupplier_UNIQUE` (`nifSupplier`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `address`
--
ALTER TABLE `address`
  MODIFY `idAddress` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `brand`
--
ALTER TABLE `brand`
  MODIFY `idBrand` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `client`
--
ALTER TABLE `client`
  MODIFY `idClient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `color`
--
ALTER TABLE `color`
  MODIFY `idColor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `employee`
--
ALTER TABLE `employee`
  MODIFY `idEmployee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `glasses`
--
ALTER TABLE `glasses`
  MODIFY `idGlasses` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `graduation`
--
ALTER TABLE `graduation`
  MODIFY `idGraduation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `sale`
--
ALTER TABLE `sale`
  MODIFY `idSale` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `supplier`
--
ALTER TABLE `supplier`
  MODIFY `idSupplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `fk_Address_Supplier1` FOREIGN KEY (`Supplier_idSupplier`) REFERENCES `supplier` (`idSupplier`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `brand`
--
ALTER TABLE `brand`
  ADD CONSTRAINT `fk_Brand_Supplier1` FOREIGN KEY (`Supplier_idSupplier`) REFERENCES `supplier` (`idSupplier`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `glasses`
--
ALTER TABLE `glasses`
  ADD CONSTRAINT `fk_Glasses_Brand` FOREIGN KEY (`Brand_idBrand`) REFERENCES `brand` (`idBrand`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Glasses_Color1` FOREIGN KEY (`fameColor_Color_idColor`) REFERENCES `color` (`idColor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Glasses_Color2` FOREIGN KEY (`rightlens_Color_idColor`) REFERENCES `color` (`idColor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Glasses_Color3` FOREIGN KEY (`leftlens_Color_idColor`) REFERENCES `color` (`idColor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Glasses_Graduation1` FOREIGN KEY (`rightlens_Graduation_idGraduation`) REFERENCES `graduation` (`idGraduation`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Glasses_Graduation2` FOREIGN KEY (`leftlens_Graduation_idGraduation`) REFERENCES `graduation` (`idGraduation`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `sale`
--
ALTER TABLE `sale`
  ADD CONSTRAINT `fk_Sale_Client1` FOREIGN KEY (`Client_idClient`) REFERENCES `client` (`idClient`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Sale_Employee1` FOREIGN KEY (`Employee_idEmployee`) REFERENCES `employee` (`idEmployee`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Sale_Glasses1` FOREIGN KEY (`Glasses_idGlasses`) REFERENCES `glasses` (`idGlasses`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
