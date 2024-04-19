-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-04-2024 a las 01:15:59
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `recursos_humanosfinal`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `id` int(11) NOT NULL,
  `descripcion` enum('CALIDAD','CRUM','EL_SALTO','C4_GOMEZ_PALACIO','C4_SANTIAGO_PAPASQUIARO','ADMINISTRATIVO','CARTOGRAFIA','PSICOLOGIA','S_T_E_911','SDA_089','SISTEMAS_Y_DESARROLLO','TECNICO','TELECOMUNICACIONES','VIDEO_VIGILANCIA','DIRECCION_C5','AREA_DE_DIAGNOSTICO_DE_PROCESOS','AREA_JURIDICA','AREA_LINEA_AMARILLA','DEPARTAMENTO_ESPACHO','DEPARTAMENTO_DE_INVESTIGACION_Y_ANALISIS','DEPARTAMENTO_TELEFONIA_Y_RED_DE_TRANSPORTE','PERSONAL_SIN_IDENTIFICAR_LUGAR_FISICO','PROGRAMA_ESMERALDA','VIGILANCIA_INTERNA') COLLATE utf8mb4_unicode_ci DEFAULT 'CALIDAD'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`id`, `descripcion`) VALUES
(1, 'CALIDAD'),
(2, 'CRUM'),
(3, 'EL_SALTO'),
(4, 'C4_GOMEZ_PALACIO'),
(5, 'C4_SANTIAGO_PAPASQUIARO'),
(6, 'ADMINISTRATIVO'),
(7, 'CARTOGRAFIA'),
(8, 'PSICOLOGIA'),
(9, 'S_T_E_911'),
(10, 'SDA_089'),
(11, 'SISTEMAS_Y_DESARROLLO'),
(12, 'TECNICO'),
(13, 'TELECOMUNICACIONES'),
(14, 'VIDEO_VIGILANCIA'),
(15, 'DIRECCION_C5'),
(16, 'AREA_DE_DIAGNOSTICO_DE_PROCESOS'),
(17, 'AREA_JURIDICA'),
(18, 'AREA_LINEA_AMARILLA'),
(19, 'DEPARTAMENTO_ESPACHO'),
(20, 'DEPARTAMENTO_DE_INVESTIGACION_Y_ANALISIS'),
(21, 'DEPARTAMENTO_TELEFONIA_Y_RED_DE_TRANSPORTE'),
(22, 'PERSONAL_SIN_IDENTIFICAR_LUGAR_FISICO'),
(23, 'PROGRAMA_ESMERALDA'),
(24, 'VIGILANCIA_INTERNA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diaeconomico`
--

CREATE TABLE `diaeconomico` (
  `id` int(11) NOT NULL,
  `observaciones` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombreImagen` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fechaDias` date DEFAULT NULL,
  `fechaDiasRestantes` int(11) DEFAULT NULL,
  `diasTotales` int(11) DEFAULT NULL,
  `createAt` date NOT NULL DEFAULT current_timestamp(3),
  `empleadoId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `id` int(11) NOT NULL,
  `aPaterno` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aMaterno` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sexo` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `fechaIngreso` date DEFAULT NULL,
  `cargo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sueldoBruto` double NOT NULL,
  `sueldoNeto` double NOT NULL,
  `regimen` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('activo','baja') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'baja',
  `createAt` date NOT NULL DEFAULT current_timestamp(3),
  `llave` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagenEmpleado` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usuarioId` int(11) DEFAULT NULL,
  `areaId` int(11) DEFAULT NULL,
  `escolaridadId` int(11) DEFAULT NULL,
  `estadocivilid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id`, `aPaterno`, `aMaterno`, `nombre`, `sexo`, `fechaNacimiento`, `fechaIngreso`, `cargo`, `sueldoBruto`, `sueldoNeto`, `regimen`, `observaciones`, `status`, `createAt`, `llave`, `imagenEmpleado`, `usuarioId`, `areaId`, `escolaridadId`, `estadocivilid`) VALUES
(124, 'Vacante ', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Subdirector general operativo', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'foto7.jpg', 3, 15, 1, 3),
(125, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de departamento de auditorio', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 15, 1, 3),
(126, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de turno de auditorio', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 15, 1, 3),
(127, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de departamento CRUM', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 2, 1, 3),
(128, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Despachador Crum', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 2, 1, 3),
(129, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Despachador Crum', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 2, 1, 3),
(130, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Despachador Crum', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 2, 1, 3),
(131, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Despachador Crum', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 2, 1, 3),
(132, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Despachador Crum', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 2, 1, 3),
(133, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Despachador Crum', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 2, 1, 3),
(134, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Despachador Crum', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 2, 1, 3),
(135, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Despachador Crum', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 2, 1, 3),
(136, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Despachador Crum', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 2, 1, 3),
(137, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Despachador Crum', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 2, 1, 3),
(138, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de turno de auditorio', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 15, 1, 3),
(139, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de turno de auditorio', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 15, 1, 3),
(140, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de turno de auditorio', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 15, 1, 3),
(141, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de departamento S.T.E 9-1-1', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 9, 1, 3),
(142, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de turno S.T.E 9-1-1', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 9, 1, 3),
(143, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de turno S.T.E 9-1-1', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 9, 1, 3),
(144, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de turno S.T.E 9-1-1', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 9, 1, 3),
(145, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de turno S.T.E 9-1-1', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 9, 1, 3),
(146, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 9, 1, 3),
(147, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 9, 1, 3),
(148, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 9, 1, 3),
(149, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 9, 1, 3),
(150, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 9, 1, 3),
(151, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 9, 1, 3),
(152, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 9, 1, 3),
(153, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 9, 1, 3),
(154, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 9, 1, 3),
(155, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 9, 1, 3),
(156, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 9, 1, 3),
(157, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 9, 1, 3),
(158, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 9, 1, 3),
(159, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 9, 1, 3),
(160, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 9, 1, 3),
(161, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 9, 1, 3),
(162, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 9, 1, 3),
(163, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 9, 1, 3),
(164, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 9, 1, 3),
(165, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 9, 1, 3),
(166, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 9, 1, 3),
(167, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 9, 1, 3),
(168, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 9, 1, 3),
(169, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 9, 1, 3),
(170, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 9, 1, 3),
(171, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 9, 1, 3),
(172, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 9, 1, 3),
(173, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 9, 1, 3),
(174, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 9, 1, 3),
(175, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de departamento de calidad', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 1, 1, 3),
(176, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de area de calidad en procesos de acreditacion', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 1, 1, 3),
(177, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de area de calidad en procesos de operativos', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 1, 1, 3),
(178, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'auxiliar en procesos acreditacion', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 1, 1, 3),
(179, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'auxiliar en procesos acreditacion', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 1, 1, 3),
(180, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'auxiliar en procesos operativos', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 1, 1, 3),
(181, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'auxiliar en procesos operativos', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 1, 1, 3),
(182, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'auxiliar en procesos operativos', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 1, 1, 3),
(183, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'auxiliar en procesos operativos', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 1, 1, 3),
(184, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de departamento S.D.A 0-8-9', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 10, 1, 3),
(185, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de turno S.D.A 0-8-9', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 10, 1, 3),
(186, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de turno S.D.A 0-8-9', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 10, 1, 3),
(187, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de turno S.D.A 0-8-9', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 10, 1, 3),
(188, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de turno S.D.A 0-8-9', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 10, 1, 3),
(189, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador de S.D.A 0-8-9', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 10, 1, 3),
(190, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador de S.D.A 0-8-9', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 10, 1, 3),
(191, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador de S.D.A 0-8-9', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 10, 1, 3),
(192, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador de S.D.A 0-8-9', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 10, 1, 3),
(193, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador de S.D.A 0-8-9', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 10, 1, 3),
(194, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador de S.D.A 0-8-9', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 10, 1, 3),
(195, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador de S.D.A 0-8-9', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 10, 1, 3),
(196, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador de S.D.A 0-8-9', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 10, 1, 3),
(197, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de departamento de video vigilancia', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 14, 1, 3),
(198, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Auxiliar del departamento video vigilancia', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 14, 1, 3),
(199, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de turno de video vigilancia', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 14, 1, 3),
(200, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de turno de video vigilancia', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 14, 1, 3),
(201, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de turno de video vigilancia', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 14, 1, 3),
(202, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de turno de video vigilancia', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-17', 'no aplica', 'default.png', 3, 14, 1, 3),
(203, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de area tecnica', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 14, 1, 3),
(204, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador del departamento video vigilancia', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 14, 1, 3),
(205, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador del departamento video vigilancia', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 14, 1, 3),
(206, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador del departamento video vigilancia', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 14, 1, 3),
(207, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador del departamento video vigilancia', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 14, 1, 3),
(208, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador del departamento video vigilancia', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 14, 1, 3),
(209, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador del departamento video vigilancia', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 14, 1, 3),
(210, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador del departamento video vigilancia', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 14, 1, 3),
(211, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador del departamento video vigilancia', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 14, 1, 3),
(212, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador del departamento video vigilancia', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 14, 1, 3),
(213, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador del departamento video vigilancia', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 14, 1, 3),
(214, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador del departamento video vigilancia', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 14, 1, 3),
(215, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador del departamento video vigilancia', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 14, 1, 3),
(216, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador del departamento video vigilancia', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 14, 1, 3),
(217, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador del departamento video vigilancia', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 14, 1, 3),
(218, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador del departamento video vigilancia', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 14, 1, 3),
(219, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador del departamento video vigilancia', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 14, 1, 3),
(220, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Tecnico de video vigilancia', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 14, 1, 3),
(221, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Tecnico de video vigilancia', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 14, 1, 3),
(222, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de departamento de telecomunicaciones', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 13, 1, 3),
(223, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Auxiliar de telecomunicaciones', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 13, 1, 3),
(224, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de area Radiocomunicacion', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 13, 1, 3),
(225, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Tecnico de Radiocomunicacion', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 13, 1, 3),
(226, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de departamento de telefonia y red de trasporte', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 21, 1, 3),
(227, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de area de telefonia', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 21, 1, 3),
(228, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de area de red de trasporte', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 21, 1, 3),
(229, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Tecnico de red de telefonia', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 21, 1, 3),
(230, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Tecnico de red de trasporte', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 21, 1, 3),
(231, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de departamento de sistemas', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 11, 1, 3),
(232, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de area de desarrollo', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 11, 1, 3),
(233, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de area de soporte', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 11, 1, 3),
(234, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Desarrollo web movil', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 11, 1, 3),
(235, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Desarrollo web movil', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 11, 1, 3),
(236, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Tecnico de base de datos', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 11, 1, 3),
(237, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Auxiliar Soporte', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 11, 1, 3),
(238, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de departamento de cartografia', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 7, 1, 3),
(239, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de area de geoestadistica', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 7, 1, 3),
(240, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de area de digitalacion', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 7, 1, 3),
(241, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de area de campo', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 7, 1, 3),
(242, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Auxiliar de geoestadistica', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 7, 1, 3),
(243, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Auxiliar de geoestadistica', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 7, 1, 3),
(244, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Auxiliar de digitalacion', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 7, 1, 3),
(245, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Auxiliar de digitalacion', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 7, 1, 3),
(246, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Auxiliar de campo', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 7, 1, 3),
(247, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de departamento de psicologia', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 8, 1, 3),
(248, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Auxiliar Administrativo de psicologia', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 8, 1, 3),
(249, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de area de atencion psicologica', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 8, 1, 3),
(250, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de area de difusion de servicios de C5', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 8, 1, 3),
(251, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Auxiliar de psicologica', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 8, 1, 3),
(252, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Auxiliar difusion y proximidad', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 8, 1, 3),
(253, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Auxiliar de psicologica', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 8, 1, 3),
(254, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Auxiliar de psicologica', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 8, 1, 3),
(255, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de departamento administrativo', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 6, 1, 3),
(256, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Auxiliar administrativo', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 6, 1, 3),
(257, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de area de recursos humanos', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 6, 1, 3),
(258, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de area de servicios generales y recursos materiales', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 6, 1, 3),
(259, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de area de inventarios', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 6, 1, 3),
(260, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Auxiliar RH', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 6, 1, 3),
(261, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Intendencia', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 6, 1, 3),
(262, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Intendencia', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 6, 1, 3),
(263, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Intendencia', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 6, 1, 3),
(264, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Intendencia', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 6, 1, 3),
(265, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Intendencia', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 6, 1, 3),
(266, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Intendencia', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 6, 1, 3),
(267, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Intendencia', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 6, 1, 3),
(268, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Auxiliar de mantenimiento', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 6, 1, 3),
(269, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Auxiliar de mantenimiento', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 6, 1, 3),
(270, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Auxiliar de inventarios', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 6, 1, 3),
(271, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Mensajeria', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 6, 1, 3),
(272, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de departamento juridico', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 17, 1, 3),
(273, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Auxiliar juridico', 5000, 5000, 'Durango', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 17, 1, 3),
(274, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de departamento S.T.E 9-1-1', 5000, 5000, 'Gomez Palacio', 'ninguna', 'activo', '2024-04-18', '5000', 'default.png', 3, 4, 1, 3),
(275, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Auxiliar Soporte', 5000, 5000, 'Gomez Palacio', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 4, 1, 3),
(276, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de turno S.T.E 9-1-1', 5000, 5000, 'Gomez Palacio', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 4, 1, 3),
(277, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Gomez Palacio', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 4, 1, 3),
(278, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Gomez Palacio', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 4, 1, 3),
(279, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Gomez Palacio', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 4, 1, 3),
(280, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Gomez Palacio', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 4, 1, 3),
(281, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Gomez Palacio', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 4, 1, 3),
(282, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Gomez Palacio', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 4, 1, 3),
(283, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Gomez Palacio', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 4, 1, 3),
(284, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Gomez Palacio', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 4, 1, 3),
(285, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Gomez Palacio', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 4, 1, 3),
(286, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Gomez Palacio', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 4, 1, 3),
(287, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Gomez Palacio', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 4, 1, 3),
(288, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Gomez Palacio', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 4, 1, 3),
(289, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Gomez Palacio', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 4, 1, 3),
(290, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Gomez Palacio', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 4, 1, 3),
(291, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Gomez Palacio', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 4, 1, 3),
(292, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Gomez Palacio', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 4, 1, 3),
(293, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Gomez Palacio', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 4, 1, 3),
(294, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de departamento de telecomunicaciones', 5000, 5000, 'Gomez Palacio', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 4, 1, 3),
(295, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Tecnico de Radiocomunicacion', 5000, 5000, 'Gomez Palacio', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 4, 1, 3),
(296, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de departamento de video vigilancia', 5000, 5000, 'Gomez Palacio', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 4, 1, 3),
(297, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de turno de video vigilancia', 5000, 5000, 'Gomez Palacio', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 4, 1, 3),
(298, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador del departamento video vigilancia', 5000, 5000, 'Gomez Palacio', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 4, 1, 3),
(299, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador del departamento video vigilancia', 5000, 5000, 'Gomez Palacio', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 4, 1, 3),
(300, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador del departamento video vigilancia', 5000, 5000, 'Gomez Palacio', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 4, 1, 3),
(301, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador del departamento video vigilancia', 5000, 5000, 'Gomez Palacio', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 4, 1, 3),
(302, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador del departamento video vigilancia', 5000, 5000, 'Gomez Palacio', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 4, 1, 3),
(303, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador del departamento video vigilancia', 5000, 5000, 'Gomez Palacio', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 4, 1, 3),
(304, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador del departamento video vigilancia', 5000, 5000, 'Gomez Palacio', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 4, 1, 3),
(305, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador del departamento video vigilancia', 5000, 5000, 'Gomez Palacio', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 4, 1, 3),
(306, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador del departamento video vigilancia', 5000, 5000, 'Gomez Palacio', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 4, 1, 3),
(307, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador del departamento video vigilancia', 5000, 5000, 'Gomez Palacio', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 4, 1, 3),
(308, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador del departamento video vigilancia', 5000, 5000, 'Gomez Palacio', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 4, 1, 3),
(309, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador del departamento video vigilancia', 5000, 5000, 'Gomez Palacio', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 4, 1, 3),
(310, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Intendencia', 5000, 5000, 'Gomez Palacio', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 4, 1, 3),
(311, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de turno S.T.E 9-1-1', 5000, 5000, 'Santiago Papasquiaro', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 5, 1, 3),
(312, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Jefe de turno S.T.E 9-1-1', 5000, 5000, 'Santiago Papasquiaro', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 5, 1, 3),
(313, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Santiago Papasquiaro', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 5, 1, 3),
(314, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Santiago Papasquiaro', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 5, 1, 3),
(315, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Santiago Papasquiaro', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 5, 1, 3),
(316, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Santiago Papasquiaro', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 5, 1, 3),
(317, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Santiago Papasquiaro', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 5, 1, 3),
(318, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Santiago Papasquiaro', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 5, 1, 3),
(319, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'Santiago Papasquiaro', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 5, 1, 3),
(320, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador del departamento video vigilancia', 5000, 5000, 'Santiago Papasquiaro', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 5, 1, 3),
(321, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador del departamento video vigilancia', 5000, 5000, 'Santiago Papasquiaro', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 5, 1, 3),
(322, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Intendencia', 5000, 5000, 'Santiago Papasquiaro', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 5, 1, 3),
(323, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'El salto', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 3, 1, 3),
(324, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'El salto', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 3, 1, 3),
(325, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'El salto', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 3, 1, 3),
(326, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'El salto', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 3, 1, 3),
(327, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'El salto', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 3, 1, 3),
(328, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'El salto', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 3, 1, 3),
(329, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'El salto', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 3, 1, 3),
(330, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Operador S.T.E 9-1-1', 5000, 5000, 'El salto', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 3, 1, 3),
(331, 'Vacante', 'Disponible', 'Vacante', 'masculino', '2024-04-17', '2024-04-17', 'Intendencia', 5000, 5000, 'El salto', 'ninguna', 'activo', '2024-04-18', 'no aplica', 'default.png', 3, 3, 1, 3),
(333, 'Vacante', 'Disponible', 'Vacante', 'masculino', '0001-01-01', '0001-01-01', 'Jefe de subnit el salto', 9000, 9000, 'el salto', 'No aplica', 'activo', '2024-04-18', 'No aplica', 'default.png', 3, 3, 1, 3),
(334, 'Vacante ', 'Disponible', 'Vacante', 'masculino', '0001-01-01', '0001-01-01', 'Jefe de subnit Santiago Papasquiaro', 9000, 9000, 'Santiago Papasquiaro', 'Es la sopa', 'activo', '2024-04-18', 'No aplica', 'default.png', 3, 5, 1, 3),
(335, 'Vacante ', 'Disponible', 'Vacante', 'masculino', '0001-01-01', '0001-01-01', 'Jefe de subnit Gomez Palacio', 9000, 9000, 'Gomez Palacio', 'No aplica', 'activo', '2024-04-18', 'No aplica', 'default.png', 3, 4, 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escolaridad`
--

CREATE TABLE `escolaridad` (
  `id` int(11) NOT NULL,
  `escolaridad` enum('no_aplica','preescolar','primaria','secundaria','tecnico_con_secundaria','preparatoria_bachillerato','tecnico_con_preparatoria','profesional','maestria_doctorado') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `escolaridad`
--

INSERT INTO `escolaridad` (`id`, `escolaridad`) VALUES
(1, 'no_aplica'),
(2, 'preescolar'),
(3, 'primaria'),
(4, 'secundaria'),
(5, 'tecnico_con_secundaria'),
(6, 'preparatoria_bachillerato'),
(7, 'tecnico_con_preparatoria'),
(8, 'profesional'),
(9, 'maestria_doctorado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadocivil`
--

CREATE TABLE `estadocivil` (
  `id` int(11) NOT NULL,
  `estado` enum('casado','divorciado','no_aplica','se_ignora','separado','soltero','union_libre','viudo') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `estadocivil`
--

INSERT INTO `estadocivil` (`id`, `estado`) VALUES
(1, 'casado'),
(2, 'divorciado'),
(3, 'no_aplica'),
(4, 'se_ignora'),
(5, 'separado'),
(6, 'soltero'),
(7, 'union_libre'),
(8, 'viudo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formacion`
--

CREATE TABLE `formacion` (
  `id` int(11) NOT NULL,
  `observaciones` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombreArchivo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fechaCarga` date NOT NULL DEFAULT current_timestamp(3),
  `createAt` date NOT NULL DEFAULT current_timestamp(3),
  `empleadoId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incapacidad`
--

CREATE TABLE `incapacidad` (
  `id` int(11) NOT NULL,
  `observaciones` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombreImagen` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fechaIncapacidad` date DEFAULT NULL,
  `diasIncapacitado` int(11) NOT NULL,
  `tipo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createAt` date NOT NULL DEFAULT current_timestamp(3),
  `empleadoId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE `permiso` (
  `id` int(11) NOT NULL,
  `observaciones` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombreImagen` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fechaPermiso` date DEFAULT NULL,
  `fechaRegreso` date DEFAULT NULL,
  `createAt` date NOT NULL DEFAULT current_timestamp(3),
  `empleadoId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `requisicion`
--

CREATE TABLE `requisicion` (
  `id` int(11) NOT NULL,
  `material` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'No agrego contenido el usuario',
  `nivelImportancia` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'No agrego contenido el usuario',
  `createAt` date NOT NULL DEFAULT current_timestamp(3),
  `usuarioId` int(11) NOT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'No realizada'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `requisicion`
--

INSERT INTO `requisicion` (`id`, `material`, `nivelImportancia`, `createAt`, `usuarioId`, `status`) VALUES
(1, 'Sogas', 'Baja', '2024-04-15', 4, 'Realizada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rol` enum('estandar','administrador','requisicion') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'estandar',
  `usuario` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createAt` date NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `area`, `password`, `rol`, `usuario`, `createAt`) VALUES
(2, 'Santiago', 'Recursos Humanos', '$2b$10$8VLgdmGl6ImUh6DDz4atzOwnxnhQ1je5/Vrf9OQ5NzC1Jsss4XQRS', 'administrador', 'Santi', '2024-04-15'),
(3, 'Allan', 'Recursos Humanos', '$2b$10$mU8F4CY/3KkJyzHTgdIrJe0R0f4Vzb13dGJH2daOfxxT57qy0hZ3W', 'estandar', 'Allan', '2024-04-15'),
(4, 'Allan', 'Recursos Humanos', '$2b$10$UYWMJdkjSN.AjIg4HrAxe.g1SeTKnzAKii/jUQqXMeZqrVDFWIx/q', 'requisicion', 'Sopas', '2024-04-15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vacaciones`
--

CREATE TABLE `vacaciones` (
  `id` int(11) NOT NULL,
  `periodo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombreImagen` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fechaInicio` date DEFAULT NULL,
  `fechaTermino` date DEFAULT NULL,
  `integracion` date DEFAULT NULL,
  `createAt` date NOT NULL DEFAULT current_timestamp(3),
  `empleadoId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `applied_steps_count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('5c5a25f6-f8d0-4415-8425-66d98b241722', 'f74926246a9c47e9abdfdc49355824167330758d65c77fc47d0cb60f47cfa5f0', '2024-04-15 10:54:12.096', '20240409083103_recursoshumanosfinal1', NULL, NULL, '2024-04-15 10:54:11.683', 1),
('8a8aa955-f7d5-47db-bb09-c8cfbf81b083', 'ab0d03d6193ad10ed3280e5257a2c09a44202df1db4a8abd1eb850055d1258a2', '2024-04-15 10:54:20.020', '20240415105419_recursoshumanosfinal3', NULL, NULL, '2024-04-15 10:54:19.699', 1),
('99bea777-15a8-498c-a21a-925a961a4971', 'd5bc6334345ea865a63dc0ebe00104eb2fbf257cac2e80f7d8aa8a0259c94bb4', '2024-04-15 10:54:11.681', '20240329071142_recursoshumanosfinal', NULL, NULL, '2024-04-15 10:54:11.104', 1),
('ff9711c9-e1c9-4da6-8a36-a87217ff1c3d', 'f8ae637c8da3a521c2993d7723674e07a5e50998435aa9a12e221db7183b23b6', '2024-04-15 10:54:12.256', '20240409084146_recursoshumanosfinal2', NULL, NULL, '2024-04-15 10:54:12.170', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `diaeconomico`
--
ALTER TABLE `diaeconomico`
  ADD PRIMARY KEY (`id`),
  ADD KEY `DiaEconomico_empleadoId_fkey` (`empleadoId`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Empleado_areaId_fkey` (`areaId`),
  ADD KEY `Empleado_escolaridadId_fkey` (`escolaridadId`),
  ADD KEY `Empleado_estadocivilid_fkey` (`estadocivilid`),
  ADD KEY `Empleado_usuarioId_fkey` (`usuarioId`);

--
-- Indices de la tabla `escolaridad`
--
ALTER TABLE `escolaridad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estadocivil`
--
ALTER TABLE `estadocivil`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `formacion`
--
ALTER TABLE `formacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Formacion_empleadoId_fkey` (`empleadoId`);

--
-- Indices de la tabla `incapacidad`
--
ALTER TABLE `incapacidad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `incapacidad_empleadoId_fkey` (`empleadoId`);

--
-- Indices de la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Permiso_empleadoId_fkey` (`empleadoId`);

--
-- Indices de la tabla `requisicion`
--
ALTER TABLE `requisicion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Requisicion_usuarioId_fkey` (`usuarioId`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Usuario_usuario_key` (`usuario`);

--
-- Indices de la tabla `vacaciones`
--
ALTER TABLE `vacaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Vacaciones_empleadoId_fkey` (`empleadoId`);

--
-- Indices de la tabla `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `area`
--
ALTER TABLE `area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `diaeconomico`
--
ALTER TABLE `diaeconomico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=336;

--
-- AUTO_INCREMENT de la tabla `escolaridad`
--
ALTER TABLE `escolaridad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `estadocivil`
--
ALTER TABLE `estadocivil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `formacion`
--
ALTER TABLE `formacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `incapacidad`
--
ALTER TABLE `incapacidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permiso`
--
ALTER TABLE `permiso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `requisicion`
--
ALTER TABLE `requisicion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `vacaciones`
--
ALTER TABLE `vacaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `diaeconomico`
--
ALTER TABLE `diaeconomico`
  ADD CONSTRAINT `DiaEconomico_empleadoId_fkey` FOREIGN KEY (`empleadoId`) REFERENCES `empleado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `Empleado_areaId_fkey` FOREIGN KEY (`areaId`) REFERENCES `area` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Empleado_escolaridadId_fkey` FOREIGN KEY (`escolaridadId`) REFERENCES `escolaridad` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Empleado_estadocivilid_fkey` FOREIGN KEY (`estadocivilid`) REFERENCES `estadocivil` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Empleado_usuarioId_fkey` FOREIGN KEY (`usuarioId`) REFERENCES `usuario` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `formacion`
--
ALTER TABLE `formacion`
  ADD CONSTRAINT `Formacion_empleadoId_fkey` FOREIGN KEY (`empleadoId`) REFERENCES `empleado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `incapacidad`
--
ALTER TABLE `incapacidad`
  ADD CONSTRAINT `incapacidad_empleadoId_fkey` FOREIGN KEY (`empleadoId`) REFERENCES `empleado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD CONSTRAINT `Permiso_empleadoId_fkey` FOREIGN KEY (`empleadoId`) REFERENCES `empleado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `requisicion`
--
ALTER TABLE `requisicion`
  ADD CONSTRAINT `Requisicion_usuarioId_fkey` FOREIGN KEY (`usuarioId`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `vacaciones`
--
ALTER TABLE `vacaciones`
  ADD CONSTRAINT `Vacaciones_empleadoId_fkey` FOREIGN KEY (`empleadoId`) REFERENCES `empleado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
