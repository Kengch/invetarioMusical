-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 30-11-2022 a las 17:15:22
-- Versión del servidor: 8.0.31-0ubuntu0.20.04.1
-- Versión de PHP: 7.2.34-36+ubuntu20.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `instrumentos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instrumentos`
--

CREATE TABLE `instrumentos` (
  `id` int NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `valor` varchar(255) NOT NULL,
  `disponible` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
  `fecha_de_creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_de_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `instrumentos`
--

INSERT INTO `instrumentos` (`id`, `nombre`, `tipo`, `valor`, `disponible`, `fecha_de_creacion`) VALUES
(1, 'test', 'Frotacion', '2222', '0', '2022-11-30 08:35:31'),
(2, 'qweqweqweqwe', 'Frotacion', '10000', '1', '2022-11-30 08:36:30'),
(3, 'putaku', 'Punteado', '1000', '0', '2022-11-30 17:44:05'),
(4, 'guitarra', 'Frotacion', '299', '0', '2022-11-30 17:44:35'),
(5, 'asdasdasd', 'Frotacion', '222', '0', '2022-11-30 17:45:51'),
(6, 'flauta', 'Percusion', '2500', '0', '2022-11-30 23:09:45'),
(7, 'test 2', 'Punteado', '3000', '0', '2022-11-30 23:11:48'),
(8, 'Bajo', 'Percusion', '40000', '0', '2022-11-30 23:12:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventarios`
--

CREATE TABLE `inventarios` (
  `id` int NOT NULL,
  `id_instrumento` int NOT NULL,
  `disponible` enum('0','1') NOT NULL DEFAULT '0',
  `eliminado` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0',
  `cantidad_disponible` int NOT NULL,
  `fecha_de_creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_de_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `inventarios`
--

INSERT INTO `inventarios` (`id`, `id_instrumento`, `disponible`, `eliminado`, `cantidad_disponible`, `fecha_de_creacion`) VALUES
(1, 4, '0', '0', 200, '2022-11-30 22:42:51'),
(2, 5, '0', '0', 5, '2022-11-30 22:43:23'),
(3, 3, '0', '0', 200, '2022-11-30 23:13:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lecciones`
--

CREATE TABLE `lecciones` (
  `id` int NOT NULL,
  `nombreCliente` int NOT NULL,
  `apellidoCliente` int NOT NULL,
  `cita` timestamp NOT NULL,
  `monto` int NOT NULL,
  `fecha_de_creacion` timestamp NOT NULL,
  `fecha_de_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `instrumentos`
--
ALTER TABLE `instrumentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inventarios`
--
ALTER TABLE `inventarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lecciones`
--
ALTER TABLE `lecciones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `instrumentos`
--
ALTER TABLE `instrumentos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `inventarios`
--
ALTER TABLE `inventarios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `lecciones`
--
ALTER TABLE `lecciones`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
