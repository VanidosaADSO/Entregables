-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-11-2022 a las 21:50:28
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vanisoft`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `Id_Cita` int(5) NOT NULL,
  `Fecha` date NOT NULL,
  `Hora` time NOT NULL,
  `Descripcion` varchar(300) NOT NULL,
  `Id_cliente` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `citas`
--

INSERT INTO `citas` (`Id_Cita`, `Fecha`, `Hora`, `Descripcion`, `Id_cliente`) VALUES
(3, '2022-11-02', '07:03:42', 'sddffg thhrt hhrtgdrfg r ggd gr gtrgngf vvdgg gifdcfk g jrgrg otkrlgtn g oklrvv rgikl gffd figjk,.g fi rgg giugk.g ilgjkr,tg rtig kjr,v dvurhirtkgndfvn rthguojdf.g thg9ijkgndf rug hk', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `Id_cliente` int(5) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Apellido` varchar(30) NOT NULL,
  `Tipo_Documento` varchar(4) NOT NULL,
  `Documento` int(15) NOT NULL,
  `Fecha_Nacimiento` date NOT NULL,
  `Correo` varchar(60) NOT NULL,
  `Telefono` bigint(15) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Contraseña` varchar(50) NOT NULL,
  `Estado` varchar(10) DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`Id_cliente`, `Nombre`, `Apellido`, `Tipo_Documento`, `Documento`, `Fecha_Nacimiento`, `Correo`, `Telefono`, `Direccion`, `Contraseña`, `Estado`) VALUES
(1, 'Wilson', 'Oquendo', 'T.I', 12312123, '2004-10-06', 'w.oquendo03@gmail.com', 3124424577, 'calle # 107 e# 27 b# 60', '123', 'Activo'),
(2, 'Wilson', 'Oquendo', 'T.I', 12312123, '2004-10-06', 'w.oquendo03@gmail.com', 3124424577, 'calle # 107 e# 27 b# 60', '123', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `Id_compra` int(5) NOT NULL,
  `N_Factura` int(5) NOT NULL,
  `Medio_Pago` varchar(20) NOT NULL,
  `Fecha` date NOT NULL,
  `Id_Prov` int(5) NOT NULL,
  `Total_factura` int(20) NOT NULL,
  `Estado` varchar(12) DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`Id_compra`, `N_Factura`, `Medio_Pago`, `Fecha`, `Id_Prov`, `Total_factura`, `Estado`) VALUES
(1, 12, 'efectivo', '2022-08-09', 1, 1200000, 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumos`
--

CREATE TABLE `insumos` (
  `Id_insumo` int(5) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Cantidad` int(8) NOT NULL,
  `Unidad_Medida` varchar(20) NOT NULL,
  `Estado` varchar(10) DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `insumos`
--

INSERT INTO `insumos` (`Id_insumo`, `Nombre`, `Cantidad`, `Unidad_Medida`, `Estado`) VALUES
(1, 'shampoo', 200, 'mililitros', 'Activo'),
(2, 'shampoo', 200, 'mililitros', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insu_compra`
--

CREATE TABLE `insu_compra` (
  `Id_Insu_Compra` int(5) NOT NULL,
  `Cantidad` int(4) NOT NULL,
  `Precio` float NOT NULL,
  `Id_insu` int(5) NOT NULL,
  `Id_com` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `insu_compra`
--

INSERT INTO `insu_compra` (`Id_Insu_Compra`, `Cantidad`, `Precio`, `Id_insu`, `Id_com`) VALUES
(9, 45, 500000, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ins_ser`
--

CREATE TABLE `ins_ser` (
  `Id_ins_ser` int(5) NOT NULL,
  `Id_insu` int(5) NOT NULL,
  `Id_Ser` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ins_ser`
--

INSERT INTO `ins_ser` (`Id_ins_ser`, `Id_insu`, `Id_Ser`) VALUES
(9, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `Id_Proveedor` int(5) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Correo` varchar(60) NOT NULL,
  `Ciudad` varchar(15) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Telefono` bigint(15) NOT NULL,
  `Nit` int(15) NOT NULL,
  `Estado` varchar(10) DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`Id_Proveedor`, `Nombre`, `Correo`, `Ciudad`, `Direccion`, `Telefono`, `Nit`, `Estado`) VALUES
(1, 'Bogge', 'bogge@gmail.com', 'Medellin', 'calle # 107 eb # 23 #21 avenida a 12', 32223233, 12111, 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `Id_Rol` int(5) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Estado` varchar(10) DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`Id_Rol`, `Nombre`, `Estado`) VALUES
(1, 'cliete', 'Activo'),
(3, 'admin', 'Activo'),
(5, 'emple', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `Id_Servicio` int(5) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Tiempo` int(3) NOT NULL,
  `Hora` time NOT NULL,
  `Precio` float NOT NULL,
  `Descripcion` varchar(300) NOT NULL,
  `Estado` varchar(10) DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`Id_Servicio`, `Nombre`, `Tiempo`, `Hora`, `Precio`, `Descripcion`, `Estado`) VALUES
(1, 'Corte de cabello', 30, '20:00:00', 10000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias doloremque vitae soluta perferendis ab reiciendis dolorem eligendi, est sint sapiente tempora adipisci nihil assumenda blanditiis omnis cum, nostrum impedit? Exercitationem!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ser_cita`
--

CREATE TABLE `ser_cita` (
  `Id_Ser_Cita` int(5) NOT NULL,
  `Id_Ser` int(5) NOT NULL,
  `Id_Cit` int(5) NOT NULL,
  `Tipo_Servicio` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ser_cita`
--

INSERT INTO `ser_cita` (`Id_Ser_Cita`, `Id_Ser`, `Id_Cit`, `Tipo_Servicio`) VALUES
(2, 1, 3, 'Corte de cabello ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id_usuario` int(5) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Apellido` varchar(30) NOT NULL,
  `Tipo_Documento` varchar(4) NOT NULL,
  `Documento` int(15) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Telefono` bigint(15) NOT NULL,
  `Correo` varchar(60) NOT NULL,
  `Id_rol` int(5) NOT NULL,
  `Estado` varchar(10) DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id_usuario`, `Nombre`, `Apellido`, `Tipo_Documento`, `Documento`, `Direccion`, `Telefono`, `Correo`, `Id_rol`, `Estado`) VALUES
(2, 'Daniel', 'GUzman', 'CC', 1075088580, 'calle # 107 eb # 23 #21 avenida a 12', 3016377122, 'gumanforero3@gmail.com', 3, 'Activo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`Id_Cita`),
  ADD KEY `Id_cliente` (`Id_cliente`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`Id_cliente`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`Id_compra`),
  ADD KEY `Id_Prov` (`Id_Prov`);

--
-- Indices de la tabla `insumos`
--
ALTER TABLE `insumos`
  ADD PRIMARY KEY (`Id_insumo`);

--
-- Indices de la tabla `insu_compra`
--
ALTER TABLE `insu_compra`
  ADD PRIMARY KEY (`Id_Insu_Compra`),
  ADD KEY `Id_insu` (`Id_insu`),
  ADD KEY `Id_com` (`Id_com`);

--
-- Indices de la tabla `ins_ser`
--
ALTER TABLE `ins_ser`
  ADD PRIMARY KEY (`Id_ins_ser`),
  ADD KEY `Id_insu` (`Id_insu`),
  ADD KEY `Id_Ser` (`Id_Ser`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`Id_Proveedor`),
  ADD UNIQUE KEY `Correo` (`Correo`),
  ADD UNIQUE KEY `Nit` (`Nit`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`Id_Rol`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`Id_Servicio`);

--
-- Indices de la tabla `ser_cita`
--
ALTER TABLE `ser_cita`
  ADD PRIMARY KEY (`Id_Ser_Cita`),
  ADD KEY `Id_Ser` (`Id_Ser`),
  ADD KEY `Id_Cit` (`Id_Cit`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id_usuario`),
  ADD KEY `Id_rol` (`Id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `citas`
--
ALTER TABLE `citas`
  MODIFY `Id_Cita` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `Id_cliente` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `Id_compra` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `insumos`
--
ALTER TABLE `insumos`
  MODIFY `Id_insumo` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `insu_compra`
--
ALTER TABLE `insu_compra`
  MODIFY `Id_Insu_Compra` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `ins_ser`
--
ALTER TABLE `ins_ser`
  MODIFY `Id_ins_ser` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `Id_Proveedor` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `Id_Rol` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `Id_Servicio` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ser_cita`
--
ALTER TABLE `ser_cita`
  MODIFY `Id_Ser_Cita` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Id_usuario` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `citas`
--
ALTER TABLE `citas`
  ADD CONSTRAINT `citas_ibfk_1` FOREIGN KEY (`Id_cliente`) REFERENCES `clientes` (`Id_cliente`);

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`Id_Prov`) REFERENCES `proveedores` (`Id_Proveedor`);

--
-- Filtros para la tabla `insu_compra`
--
ALTER TABLE `insu_compra`
  ADD CONSTRAINT `insu_compra_ibfk_1` FOREIGN KEY (`Id_insu`) REFERENCES `insumos` (`Id_insumo`),
  ADD CONSTRAINT `insu_compra_ibfk_2` FOREIGN KEY (`Id_com`) REFERENCES `compras` (`Id_compra`);

--
-- Filtros para la tabla `ins_ser`
--
ALTER TABLE `ins_ser`
  ADD CONSTRAINT `ins_ser_ibfk_1` FOREIGN KEY (`Id_insu`) REFERENCES `insumos` (`Id_insumo`),
  ADD CONSTRAINT `ins_ser_ibfk_2` FOREIGN KEY (`Id_Ser`) REFERENCES `servicios` (`Id_Servicio`);

--
-- Filtros para la tabla `ser_cita`
--
ALTER TABLE `ser_cita`
  ADD CONSTRAINT `ser_cita_ibfk_1` FOREIGN KEY (`Id_Ser`) REFERENCES `servicios` (`Id_Servicio`),
  ADD CONSTRAINT `ser_cita_ibfk_2` FOREIGN KEY (`Id_Cit`) REFERENCES `citas` (`Id_Cita`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`Id_rol`) REFERENCES `rol` (`Id_Rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
