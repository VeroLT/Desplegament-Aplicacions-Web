-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 29-10-2024 a las 11:56:43
-- Versión del servidor: 5.7.44
-- Versión de PHP: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vero`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proves_vero`
--

CREATE TABLE `proves_vero` (
  `id` int(11) NOT NULL,
  `nom` text,
  `cognom1` text,
  `cognom2` text,
  `telefon` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proves_vero`
--

INSERT INTO `proves_vero` (`id`, `nom`, `cognom1`, `cognom2`, `telefon`) VALUES
(1, 'Ana', 'Garcia', 'Perez', 1235446),
(2, 'Juan', 'Palomo', 'Gomez', 78945632),
(3, 'Sabrina', 'Medina', 'Sabina', 198531),
(4, 'Jose', 'Pi', 'Asuka', 125641),
(5, 'Maria', 'Mochi', 'Sevilla', 85415);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `proves_vero`
--
ALTER TABLE `proves_vero`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `proves_vero`
--
ALTER TABLE `proves_vero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
