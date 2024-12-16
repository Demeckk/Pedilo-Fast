-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2024 at 06:46 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sucursal`
--

-- --------------------------------------------------------

--
-- Table structure for table `caja`
--

CREATE TABLE `caja` (
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `apertura` double NOT NULL,
  `actual` double NOT NULL,
  `cierre` double DEFAULT 0,
  `encargado` varchar(50) NOT NULL,
  `Cod_sucursal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `caja`
--

INSERT INTO `caja` (`fecha`, `apertura`, `actual`, `cierre`, `encargado`, `Cod_sucursal`) VALUES
('2024-07-01 21:18:41', 4343434, 4343434, 0, 'ff', 1),
('2024-07-01 23:23:49', 32222, 32222, 0, 'etgs', 3),
('2024-07-02 00:08:13', 2332, 2332, 0, 'yrkj', 4);

-- --------------------------------------------------------

--
-- Table structure for table `empleados`
--

CREATE TABLE `empleados` (
  `id_empleado` int(11) NOT NULL,
  `DNI` varchar(10) NOT NULL,
  `Clave` varchar(15) NOT NULL,
  `Nombre` text NOT NULL,
  `Apellido` text NOT NULL,
  `Telefono` varchar(12) NOT NULL,
  `Direccion` text NOT NULL,
  `Ingreso` date NOT NULL,
  `Fnac` varchar(15) NOT NULL,
  `Puesto` varchar(30) NOT NULL,
  `Sueldo` varchar(20) NOT NULL,
  `Cod_sucursal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `empleados`
--

INSERT INTO `empleados` (`id_empleado`, `DNI`, `Clave`, `Nombre`, `Apellido`, `Telefono`, `Direccion`, `Ingreso`, `Fnac`, `Puesto`, `Sueldo`, `Cod_sucursal`) VALUES
(1, '2024', '1234', 'Mario', 'aaa', '54', 'sdf', '2024-07-01', '2031-12-01', '5', '686', 1),
(3, '123', '123', 'Emiliano', 'sfe', '567', 'sdrbg', '2024-07-01', '2022-03-05', 'cocina', '32000', 3),
(4, '123', '1234', 'Vanesa', 'ftgj', '65756', 'fgjfg', '2024-07-01', '2025-02-02', '745', '768967', 4);

-- --------------------------------------------------------

--
-- Table structure for table `gastos`
--

CREATE TABLE `gastos` (
  `id_caja` datetime NOT NULL,
  `hora` time NOT NULL,
  `descripcion` text NOT NULL,
  `monto` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gastos`
--

INSERT INTO `gastos` (`id_caja`, `hora`, `descripcion`, `monto`) VALUES
('2024-07-01 18:18:41', '18:40:28', '(canceled)papel', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `infosucursal`
--

CREATE TABLE `infosucursal` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `logo` text NOT NULL,
  `bg_color` varchar(10) NOT NULL,
  `header_color` varchar(10) NOT NULL,
  `table_color` varchar(10) NOT NULL,
  `font` varchar(10) NOT NULL,
  `btn` varchar(10) NOT NULL,
  `aside` varchar(10) NOT NULL,
  `aside_btn` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `infosucursal`
--

INSERT INTO `infosucursal` (`id`, `nombre`, `logo`, `bg_color`, `header_color`, `table_color`, `font`, `btn`, `aside`, `aside_btn`) VALUES
(1, 'Vanesa', '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', '#87942e', '#a76c6c', '#fff18c', 'black', '#150467', '#ba6969', '#f3b939');

-- --------------------------------------------------------

--
-- Table structure for table `mesas`
--

CREATE TABLE `mesas` (
  `cod_mesa` int(20) NOT NULL,
  `Cod_sucursal` int(20) NOT NULL,
  `mesa` int(20) NOT NULL,
  `estado` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mesas`
--

INSERT INTO `mesas` (`cod_mesa`, `Cod_sucursal`, `mesa`, `estado`) VALUES
(1, 3, 1, 'libre'),
(2, 3, 2, 'en proceso'),
(3, 3, 3, 'Disponible'),
(4, 3, 4, 'Disponible'),
(5, 3, 5, 'Disponible');

-- --------------------------------------------------------

--
-- Table structure for table `pedido`
--

CREATE TABLE `pedido` (
  `Cod_pedido` int(11) NOT NULL,
  `idPedido` int(11) NOT NULL,
  `producto` varchar(40) NOT NULL,
  `cantidad` varchar(5) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `cliente` varchar(30) NOT NULL,
  `mesa` varchar(30) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `Cod_sucursal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pedido`
--

INSERT INTO `pedido` (`Cod_pedido`, `idPedido`, `producto`, `cantidad`, `fecha`, `hora`, `cliente`, `mesa`, `estado`, `Cod_sucursal`) VALUES
(1, 1, 'Helado vainilla', '1', '2024-12-16', '00:36:27', 'Juan', '3', 'finalizado', 3),
(2, 2, 'Helado vainilla', '1', '2024-12-16', '00:37:34', 'roberto', '4', 'finalizado', 3),
(3, 3, 'Helado vainilla', '2', '2024-12-16', '00:56:32', 'juan', '1', 'finalizado', 3),
(4, 4, 'Helado vainilla', '0', '2024-12-16', '01:03:14', 'juan', '1', 'en preparacion', 3),
(5, 3, 'Papas fritas', '1', '2024-12-16', '01:28:41', 'juan', '1', 'finalizado', 3),
(6, 4, 'Papas fritas', '0', '2024-12-16', '01:30:04', 'juan', '2', 'tomando..', 3);

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `Id_producto` varchar(30) NOT NULL,
  `Nombre` varchar(40) NOT NULL,
  `Descripcion` text NOT NULL,
  `Costo` int(25) NOT NULL,
  `ingredientes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`Id_producto`, `Nombre`, `Descripcion`, `Costo`, `ingredientes`) VALUES
('1', 'Papas fritas', 'medianas', 1500, 'cono de papas'),
('2', 'Hamburguesa simple', 'con cheddar y ketchup', 2000, 'medallon de carne'),
('3', 'Hamburguesa doble', 'doble carne, cheddar y ketchup', 500, 'medallon de carne,medallon de carne'),
('4', 'Helado vainilla', 'Sabor vainilla', 1500, 'conos de helado'),
('5', 'Helado chocolate', 'sabor chocolate', 1500, 'conos de helado'),
('6', 'Empanada de carne', 'Con carne cortada a cuchillo', 2000, 'carne, tapa'),
('7', 'Fideos con salsa', 'fideos con salsa de tomate', 2500, 'fideos, tomate');

-- --------------------------------------------------------

--
-- Table structure for table `promociones`
--

CREATE TABLE `promociones` (
  `id_promo` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `productos` text NOT NULL,
  `descuento` int(11) NOT NULL,
  `fechaDuracion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `promociones`
--

INSERT INTO `promociones` (`id_promo`, `nombre`, `productos`, `descuento`, `fechaDuracion`) VALUES
(1, 'Combo fin de mes', '[\"1\",\"2\"]', 20, '2024-07-06'),
(2, 'Combo', '[\"1\",\"2\"]', 20, '2024-07-02');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `Cod_producto` varchar(20) NOT NULL,
  `Nombre` text NOT NULL,
  `Cantidad` varchar(10) NOT NULL,
  `Cod_sucursal` int(11) NOT NULL,
  `unidad_medicion` text NOT NULL,
  `aviso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`Cod_producto`, `Nombre`, `Cantidad`, `Cod_sucursal`, `unidad_medicion`, `aviso`) VALUES
('1', 'cono de papas', '187', 1, 'unidades', 150),
('1', 'cono de papas', '1658', 3, 'unidades', 150),
('1', 'cono de papas', '--', 4, 'unidades', 150),
('10', 'mayonesa', '4', 1, 'cajas', 2),
('10', 'mayonesa', '107', 3, 'cajas', 2),
('10', 'mayonesa', '--', 4, 'cajas', 2),
('11', 'mostaza', '2', 1, 'cajas', 2),
('11', 'mostaza', '505', 3, 'cajas', 2),
('11', 'mostaza', '--', 4, 'cajas', 2),
('12', 'sal', '3', 1, 'cajas', 2),
('12', 'sal', '1007', 3, 'cajas', 2),
('12', 'sal', '--', 4, 'cajas', 2),
('2', 'medallon de carne', '203', 1, 'unidades', 200),
('2', 'medallon de carne', '227', 3, 'unidades', 200),
('2', 'medallon de carne', '--', 4, 'unidades', 200),
('3', 'conos de helado', '231', 1, 'unidades', 100),
('3', 'conos de helado', '322', 3, 'unidades', 100),
('3', 'conos de helado', '--', 4, 'unidades', 100),
('4', 'papas', '54', 1, 'kilos', 10),
('4', 'Papas fritas', '534', 3, 'kilos', 10),
('4', 'papas', '--', 4, 'kilos', 10),
('5', 'Hamburguesa doble', '76', 1, 'Kilos', 10),
('5', 'Hamburguesa doble', '512', 3, 'Kilos', 10),
('5', 'Tomate', '--', 4, 'Kilos', 10),
('6', 'Helado chocolate', '67', 1, 'Kilos', 10),
('6', 'Helado chocolate', '523', 3, 'Kilos', 10),
('6', 'Helado chocolate', '--', 4, 'Kilos', 10),
('7', 'Helado vainilla', '45', 1, 'Kilos', 10),
('7', 'Helado vainilla', '563', 3, 'Kilos', 10),
('7', 'Helado vainilla', '--', 4, 'Kilos', 10),
('8', 'Bacon', '12', 1, 'Kilos', 10),
('8', 'Empanada de carne', '512', 3, 'Kilos', 10),
('8', 'Bacon', '--', 4, 'Kilos', 10),
('9', 'Fideos con salsa', '34', 1, 'cajas', 2),
('9', 'Hamburguesa simple', '105', 3, 'cajas', 2),
('9', 'ketchup', '--', 4, 'cajas', 2);

-- --------------------------------------------------------

--
-- Table structure for table `sucursales`
--

CREATE TABLE `sucursales` (
  `Cod_sucursal` int(11) NOT NULL,
  `Direccion` varchar(40) NOT NULL,
  `Capacidad` int(10) NOT NULL,
  `Cod_supervisor` varchar(28) NOT NULL,
  `Fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sucursales`
--

INSERT INTO `sucursales` (`Cod_sucursal`, `Direccion`, `Capacidad`, `Cod_supervisor`, `Fecha`) VALUES
(1, 'Nigeria 9023(Wilson)', 2, '1', '2024-07-01'),
(3, 'bogota 3310(Jose C. Paz)', 10, '1', '2024-07-01'),
(4, 'nueva', 0, '1', '2024-07-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `caja`
--
ALTER TABLE `caja`
  ADD PRIMARY KEY (`fecha`),
  ADD KEY `Cod_sucursal` (`Cod_sucursal`);

--
-- Indexes for table `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id_empleado`),
  ADD KEY `Cod_sucursal` (`Cod_sucursal`);

--
-- Indexes for table `gastos`
--
ALTER TABLE `gastos`
  ADD PRIMARY KEY (`hora`),
  ADD KEY `id_caja` (`id_caja`);

--
-- Indexes for table `infosucursal`
--
ALTER TABLE `infosucursal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mesas`
--
ALTER TABLE `mesas`
  ADD PRIMARY KEY (`cod_mesa`),
  ADD KEY `Cod_sucursal` (`Cod_sucursal`);

--
-- Indexes for table `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`Cod_pedido`),
  ADD KEY `Cod_sucursal` (`Cod_sucursal`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`Id_producto`);

--
-- Indexes for table `promociones`
--
ALTER TABLE `promociones`
  ADD PRIMARY KEY (`id_promo`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`Cod_producto`,`Cod_sucursal`),
  ADD KEY `Cod_sucursal` (`Cod_sucursal`);

--
-- Indexes for table `sucursales`
--
ALTER TABLE `sucursales`
  ADD PRIMARY KEY (`Cod_sucursal`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `infosucursal`
--
ALTER TABLE `infosucursal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pedido`
--
ALTER TABLE `pedido`
  MODIFY `Cod_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `sucursales`
--
ALTER TABLE `sucursales`
  MODIFY `Cod_sucursal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
