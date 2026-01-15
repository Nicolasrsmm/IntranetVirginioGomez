-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-01-2026 a las 16:35:04
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `intranet`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id_alumno` int(11) NOT NULL,
  `rut` varchar(12) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `contrasena` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id_alumno`, `rut`, `nombre`, `apellido`, `correo`, `telefono`, `direccion`, `fecha_nacimiento`, `fecha_ingreso`, `nombre_usuario`, `contrasena`) VALUES
(1, '12121212-1', 'Daniel', 'Torres', 'daniel.torres@estudiante.edu', '987654331', 'Calle Azul 123', '2001-03-10', '2020-03-01', 'alumno', '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(2, '13131313-2', 'Isabel', 'Castro', 'isabel.castro@estudiante.edu', '987654332', 'Avenida Verde 456', '2000-07-21', '2019-03-01', 'r', '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(3, '14141414-3', 'Santiago', 'Ramos', 'santiago.ramos@estudiante.edu', '987654333', 'Calle Roja 789', '2002-05-05', '2021-03-01', 'santiago_ramos', '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(4, '15151515-4', 'Valentina', 'Mendoza', 'valentina.mendoza@estudiante.edu', '987654334', 'Boulevard Amarillo 101', '2001-12-30', '2020-03-01', 'valentina_mendoza', '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(5, '16161616-5', 'Felipe', 'Navarro', 'felipe.navarro@estudiante.edu', '987654335', 'Calle Blanca 202', '2000-09-15', '2019-03-01', 'felipe_navarro', '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaturas`
--

CREATE TABLE `asignaturas` (
  `id_asignatura` int(11) NOT NULL,
  `nombre_asignatura` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `id_carrera` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asignaturas`
--

INSERT INTO `asignaturas` (`id_asignatura`, `nombre_asignatura`, `descripcion`, `id_carrera`) VALUES
(1, 'Programación I', 'Introducción a la programación en lenguaje C', 1),
(2, 'Contabilidad General', 'Principios básicos de contabilidad', 2),
(3, 'Anatomía Humana', 'Estudio de la estructura del cuerpo humano', 3),
(4, 'Diseño Arquitectónico', 'Fundamentos del diseño de edificaciones', 4),
(5, 'Derecho Civil', 'Estudio de las normas civiles y su aplicación', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `id_carrera` int(11) NOT NULL,
  `nombre_carrera` varchar(100) NOT NULL,
  `duracion_anios` int(11) NOT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`id_carrera`, `nombre_carrera`, `duracion_anios`, `descripcion`) VALUES
(1, 'Ingeniería Informática', 5, 'Carrera enfocada en el desarrollo de software y sistemas.'),
(2, 'Administración de Empresas', 4, 'Formación en gestión y administración empresarial.'),
(3, 'Medicina', 7, 'Carrera orientada a la salud y tratamiento de pacientes.'),
(4, 'Arquitectura', 5, 'Diseño y construcción de edificaciones y espacios urbanos.'),
(5, 'Derecho', 5, 'Formación en leyes, justicia y asesoría legal.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `componentes_evaluacion`
--

CREATE TABLE `componentes_evaluacion` (
  `id_componente` int(11) NOT NULL,
  `id_modo` int(11) NOT NULL,
  `bloque` enum('Ev1','Ev2','Ev3') NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `porcentaje_relativo` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `componentes_evaluacion`
--

INSERT INTO `componentes_evaluacion` (`id_componente`, `id_modo`, `bloque`, `descripcion`, `porcentaje_relativo`) VALUES
(1, 1, 'Ev1', 'Test', 30.00),
(2, 1, 'Ev1', 'Trabajo', 70.00),
(3, 1, 'Ev2', 'Certamen', 50.00),
(4, 1, 'Ev2', 'Trabajo', 50.00),
(5, 1, 'Ev3', 'Certamen', 70.00),
(6, 2, 'Ev1', 'Prueba corta', 60.00),
(7, 2, 'Ev1', 'Tarea', 40.00),
(8, 2, 'Ev2', 'Proyecto', 70.00),
(9, 2, 'Ev2', 'Presentación', 30.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE `docentes` (
  `id_docente` int(11) NOT NULL,
  `rut` varchar(12) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `especialidad` varchar(100) DEFAULT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `contrasena` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `docentes`
--

INSERT INTO `docentes` (`id_docente`, `rut`, `nombre`, `apellido`, `correo`, `telefono`, `direccion`, `fecha_nacimiento`, `fecha_ingreso`, `especialidad`, `nombre_usuario`, `contrasena`) VALUES
(1, '66666666-6', 'Pedro', 'Vargas', 'pedro.vargas@instituto.edu', '987654326', 'Calle Larga 100', '1978-04-12', '2009-08-30', 'Matemáticas', 'docente', '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(2, '77777777-7', 'Marta', 'Rojas', 'marta.rojas@instituto.edu', '987654327', 'Avenida Central 45', '1983-07-22', '2011-05-10', 'Historia', 'marta_rojas', '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(3, '88888888-8', 'Luis', 'Fernandez', 'luis.fernandez@instituto.edu', '987654328', 'Camino Real 77', '1982-01-18', '2010-11-12', 'Física', 'luis_fernandez', '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(4, '99999999-9', 'Carla', 'Soto', 'carla.soto@instituto.edu', '987654329', 'Plaza Mayor 3', '1987-03-29', '2013-02-21', 'Química', 'carla_soto', '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(5, '10101010-0', 'Javier', 'Morales', 'javier.morales@instituto.edu', '987654330', 'Parque Norte 15', '1979-06-14', '2007-12-05', 'Biología', 'javier_morales', '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente_asignatura`
--

CREATE TABLE `docente_asignatura` (
  `id_docente` int(11) NOT NULL,
  `id_asignatura` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `docente_asignatura`
--

INSERT INTO `docente_asignatura` (`id_docente`, `id_asignatura`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id_evento` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `nombre_evento` varchar(150) NOT NULL,
  `descripcion` text NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_fin` datetime NOT NULL,
  `lugar` varchar(100) DEFAULT NULL,
  `imagenes` varchar(255) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `fecha_publicacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id_evento`, `id_admin`, `nombre_evento`, `descripcion`, `fecha_inicio`, `fecha_fin`, `lugar`, `imagenes`, `activo`, `fecha_publicacion`) VALUES
(1, 1, 'Charla de orientación vocacional', 'Charla para estudiantes sobre opciones de carrera.', '2025-03-10 10:00:00', '2025-03-10 12:00:00', 'Auditorio Principal', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRd97PDkiMbROer85rFfkNAp6zDKZ9IsutWhA&s', 1, '2025-02-01 08:00:00'),
(2, 2, 'Feria de ciencias', 'Exposición de proyectos científicos de alumnos.', '2025-04-05 09:00:00', '2025-04-07 18:00:00', 'Sala de exposiciones', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsV7xt2kiUSpG06AFxCDuYlQTvBVZSIhFytQ&s', 1, '2025-02-02 09:00:00'),
(3, 3, 'Festival cultural', 'Celebración con música, danza y comida típica.', '2025-05-20 17:00:00', '2025-05-20 22:00:00', 'Patio Central', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdLQcnIqsCtmzP-Wb_EzhyTV1MdDM2QITraQ&s', 1, '2025-02-03 10:30:00'),
(21, 1, 'Resultados Fuas 2025', 'Ve tus resultados de postulación en la pagina del fuas, recuerda ingresar tu Rut ', '2025-06-05 17:21:00', '2025-06-17 17:21:00', 'Mine Duc', 'https://www.mineduc.cl/wp-content/uploads/sites/19/2021/02/fuas-2021.png', 1, '2025-06-03 17:43:00'),
(22, 1, 'Charla educativa ', 'Charla educativa para los nuevos estudiantes del segundo  semestre ', '2025-06-06 20:18:00', '2025-06-07 20:18:00', 'Auditorio', 'https://images-ext-1.discordapp.net/external/w3khz3seJEOieNvnskoJyIsqyYdu2fgjGQMeiSMRpMw/%3Fq%3Dtbn%3AANd9GcSHu_oi79pWGstKxwG3JefNK8RxJ7u0d_hSTA%26s/https/encrypted-tbn0.gstatic.com/images?format=webp&width=324&height=243', 1, '2025-06-04 20:18:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matriculas`
--

CREATE TABLE `matriculas` (
  `id_matricula` int(11) NOT NULL,
  `numero_matricula` varchar(20) NOT NULL,
  `id_alumno` int(11) NOT NULL,
  `id_carrera` int(11) NOT NULL,
  `anio_academico` int(11) NOT NULL,
  `fecha_matricula` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `matriculas`
--

INSERT INTO `matriculas` (`id_matricula`, `numero_matricula`, `id_alumno`, `id_carrera`, `anio_academico`, `fecha_matricula`) VALUES
(1, 'MAT2023001', 1, 1, 2023, '2023-03-01'),
(2, 'MAT2023002', 2, 2, 2023, '2023-03-01'),
(3, 'MAT2023003', 3, 3, 2023, '2023-03-01'),
(4, 'MAT2023004', 4, 4, 2023, '2023-03-01'),
(5, 'MAT2023005', 5, 5, 2023, '2023-03-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modos_evaluacion`
--

CREATE TABLE `modos_evaluacion` (
  `id_modo` int(11) NOT NULL,
  `id_asignatura` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `porcentaje_ev1` decimal(5,2) NOT NULL,
  `porcentaje_ev2` decimal(5,2) NOT NULL,
  `porcentaje_ev3` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `modos_evaluacion`
--

INSERT INTO `modos_evaluacion` (`id_modo`, `id_asignatura`, `nombre`, `porcentaje_ev1`, `porcentaje_ev2`, `porcentaje_ev3`) VALUES
(1, 1, 'Modo A', 30.00, 30.00, 40.00),
(2, 1, 'Modo B', 50.00, 50.00, 0.00),
(3, 2, 'Modo C', 40.00, 40.00, 20.00),
(4, 3, 'Modo D', 0.00, 0.00, 100.00),
(5, 4, 'Modo E', 25.00, 35.00, 40.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `id_nota` int(11) NOT NULL,
  `id_alumno` int(11) NOT NULL,
  `id_asignatura` int(11) NOT NULL,
  `id_modo` int(11) NOT NULL,
  `id_componente` int(11) NOT NULL,
  `nota_obtenida` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `notas`
--

INSERT INTO `notas` (`id_nota`, `id_alumno`, `id_asignatura`, `id_modo`, `id_componente`, `nota_obtenida`) VALUES
(1, 1, 1, 1, 1, 6.10),
(2, 1, 1, 1, 2, 6.70),
(3, 1, 1, 1, 3, 6.30),
(4, 1, 1, 1, 4, 7.00),
(5, 1, 1, 1, 5, 6.50),
(6, 2, 1, 2, 6, 6.00),
(7, 2, 1, 2, 7, 5.50),
(8, 2, 1, 2, 8, 6.80),
(9, 2, 1, 2, 9, 6.20),
(10, 3, 1, 2, 6, 5.70),
(11, 3, 1, 2, 7, 6.00),
(12, 3, 1, 2, 8, 6.50),
(13, 3, 1, 2, 9, 6.90);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id_noticia` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `contenido` text NOT NULL,
  `fecha_publicacion` datetime NOT NULL DEFAULT current_timestamp(),
  `imagenes` varchar(255) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id_noticia`, `id_admin`, `titulo`, `contenido`, `fecha_publicacion`, `imagenes`, `activo`) VALUES
(1, 1, 'Inicio de clases 2025', 'Las clases para el año 2025 comienzan el 3 de marzo.', '2025-02-01 08:00:00', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1XhdxYUiWY0n6YLJC3P7FPTci7DKy9dMd0A&s', 1),
(2, 2, 'Nuevo laboratorio de computación', 'Se inaugura el nuevo laboratorio con equipos modernos.', '2025-02-15 10:00:00', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQCFSTSa6S69Ef2P-JhAAUHIyAw5T7G9tGyw&s', 1),
(3, 3, 'Semana deportiva', 'Actividades deportivas desde el 10 al 14 de marzo.', '2025-03-05 09:00:00', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR141AoqtlNl1V_-l2PbBUIBq5VWkKHCUEPBQ&s', 1),
(4, 4, 'Concurso de matemáticas', 'Inscripciones abiertas para el concurso anual.', '2025-01-20 12:00:00', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ07Nrz_3AsrEZdmQrn5RUnGPqCzejeobLJ2w&s', 1),
(5, 5, 'Campaña de vacunación', 'Vacunación gratuita para estudiantes y personal.', '2025-04-01 08:30:00', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGBu83lN-X-SS0t-_-AywRH6FmxoqDWxYz1A&s', 1),
(21, 1, 'Suspensión de clases ', 'Se suspenden las clases por fuerza mayor el día lunes 04 de junio del 2025', '2025-06-04 20:16:40', 'https://images-ext-1.discordapp.net/external/4K0s1LXHUgAhPlVOJ1baxyk3s6RnNg2k8IFVZWjQ704/%3Fq%3Dtbn%3AANd9GcQ07Nrz_3AsrEZdmQrn5RUnGPqCzejeobLJ2w%26s/https/encrypted-tbn0.gstatic.com/images?format=webp&width=375&height=210', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_administrativo`
--

CREATE TABLE `personal_administrativo` (
  `id_admin` int(11) NOT NULL,
  `rut` varchar(12) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `contrasena` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personal_administrativo`
--

INSERT INTO `personal_administrativo` (`id_admin`, `rut`, `nombre`, `apellido`, `correo`, `telefono`, `direccion`, `fecha_nacimiento`, `fecha_ingreso`, `nombre_usuario`, `contrasena`) VALUES
(1, '11111111-1', 'Ana', 'Gomez', 'ana.gomez@instituto.edu', '987654321', 'Calle 123', '1980-05-10', '2010-03-15', 'admin', '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(2, '22222222-2', 'Carlos', 'Lopez', 'carlos.lopez@instituto.edu', '987654322', 'Avenida 456', '1975-11-20', '2008-07-10', 'carlos_lopez', '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(3, '33333333-3', 'Luisa', 'Martinez', 'luisa.martinez@instituto.edu', '987654323', 'Calle Falsa 789', '1988-02-05', '2012-01-20', 'luisa_martinez', '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(4, '44444444-4', 'Jorge', 'Perez', 'jorge.perez@instituto.edu', '987654324', 'Boulevard 101', '1990-09-15', '2015-06-01', 'jorge_perez', '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(5, '55555555-5', 'Sofia', 'Diaz', 'sofia.diaz@instituto.edu', '987654325', 'Calle Real 202', '1985-12-30', '2011-09-22', 'sofia_diaz', '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promedios_finales`
--

CREATE TABLE `promedios_finales` (
  `id_promedio` int(11) NOT NULL,
  `id_alumno` int(11) NOT NULL,
  `id_asignatura` int(11) NOT NULL,
  `id_modo` int(11) NOT NULL,
  `promedio` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `promedios_finales`
--

INSERT INTO `promedios_finales` (`id_promedio`, `id_alumno`, `id_asignatura`, `id_modo`, `promedio`) VALUES
(1, 1, 1, 1, 6.55),
(2, 2, 1, 2, 6.21),
(3, 3, 1, 2, 6.22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesiones`
--

CREATE TABLE `sesiones` (
  `id_sesion` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `tipo_usuario` enum('admin','docente','alumno') NOT NULL,
  `token_sesion` varchar(64) NOT NULL,
  `fecha_expiracion` datetime NOT NULL,
  `estado` enum('Activa','Cerrada') NOT NULL DEFAULT 'Activa',
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `ultima_actividad` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sesiones`
--

INSERT INTO `sesiones` (`id_sesion`, `id_usuario`, `tipo_usuario`, `token_sesion`, `fecha_expiracion`, `estado`, `fecha_creacion`, `ultima_actividad`) VALUES
(538, 1, 'admin', '108cee3aa7b38e885fcef91c738d43003fc68d060b6c2c0ce1111e5a4a5691a6', '2025-06-02 00:10:08', 'Activa', '2025-06-01 21:10:08', '2025-06-01 21:10:08'),
(542, 1, 'docente', '1ce9f655f1311bcf1eba730f3fe53444f3e496a3c9094d762c3ae38ea83c0d58', '2025-06-03 00:03:13', 'Activa', '2025-06-02 21:03:13', '2025-06-02 21:03:13'),
(543, 1, 'alumno', '30c588ef45bc101531158517b90ce4a6c32969604546e4056cdbc12d5cb2e770', '2025-06-04 00:31:38', 'Activa', '2025-06-03 21:31:38', '2025-06-03 21:31:38'),
(546, 1, 'docente', 'ca6c487b48a17218064c5bbdd89e76390d2fd3d69c913bd06d76157107e8020d', '2025-06-04 00:34:35', 'Activa', '2025-06-03 21:34:35', '2025-06-03 21:34:35'),
(547, 1, 'admin', 'cd2d84ff4571ad64b3b259e4f041bf302b8cd37995a5b4dd1cbceda68aba6349', '2025-06-04 00:37:02', 'Activa', '2025-06-03 21:37:02', '2025-06-03 21:37:02'),
(548, 1, 'admin', '6f35fbd213533f247c650071c6b3d70f94326ad2544d9667e32cc9f43c87e865', '2025-06-04 00:42:04', 'Activa', '2025-06-03 21:42:04', '2025-06-03 21:42:04'),
(549, 1, 'admin', 'f2154cad0842deb556623f8855c367f58e432adc9312b8a6eab6e0f619504b31', '2025-06-04 00:44:19', 'Activa', '2025-06-03 21:44:19', '2025-06-03 21:44:19'),
(550, 1, 'alumno', 'fa3dfba4ef45ac1ea71f72eaa45d2328a785a7ef08ed19a9190253aaa2c6fcdc', '2025-06-05 02:45:13', 'Activa', '2025-06-04 23:45:13', '2025-06-04 23:45:13'),
(551, 1, 'docente', 'd601ddd6a355bc1dd1d6ba2ad2841bb652f3977922e143cdb15ef4f16adbfbc8', '2025-06-05 02:45:35', 'Activa', '2025-06-04 23:45:35', '2025-06-04 23:45:35'),
(552, 1, 'admin', '13399148bac7500e39dbd4e3e05806f2d363e1583642406f9029c642ef4b731d', '2025-06-05 02:45:55', 'Activa', '2025-06-04 23:45:55', '2025-06-04 23:45:55'),
(553, 1, 'docente', '70bc232cb947b1b84fba720a49ae63772737d33c61f9ddb34526b317572ab2fd', '2025-06-05 02:46:17', 'Activa', '2025-06-04 23:46:17', '2025-06-04 23:46:17'),
(554, 1, 'alumno', '91e89cabe31fba40173627d8f051d41fe96e21ccffad515d8d730fd046dac198', '2025-06-05 02:46:37', 'Activa', '2025-06-04 23:46:37', '2025-06-04 23:46:37'),
(555, 1, 'admin', 'ebf777ba6603cdc7ebf25867208cf1804fb74f986d524ee06070975fcea84afa', '2025-06-05 03:03:25', 'Activa', '2025-06-05 00:03:25', '2025-06-05 00:03:25'),
(556, 1, 'docente', '8218040c06788d0628efba00c5b5dd62d25e9c6d1e5fa5c1fddd24ba9ac63835', '2025-06-05 03:03:51', 'Activa', '2025-06-05 00:03:51', '2025-06-05 00:03:51'),
(557, 1, 'alumno', '2b4cf12a47819de3ddead8a6571a5d30812ab745d874a91c0f27dea090d4d3f9', '2025-06-05 03:04:12', 'Activa', '2025-06-05 00:04:12', '2025-06-05 00:04:12'),
(558, 1, 'admin', 'f944d93c1e65ddae42abb4273348fc5cc98302ed6112a52a353b75d92495a043', '2025-06-05 03:14:51', 'Activa', '2025-06-05 00:14:51', '2025-06-05 00:14:51'),
(560, 1, 'admin', 'e23c2619a7c57649458f87133a6cf9b214b772035b893eb499458f42d270b4db', '2025-06-09 00:32:09', 'Activa', '2025-06-08 21:32:09', '2025-06-08 21:32:09'),
(561, 1, 'alumno', '67475544e8915d715de0d3b2b4057a77fa564013d78063ba984e7a0a3210dd28', '2025-06-09 00:35:01', 'Activa', '2025-06-08 21:35:01', '2025-06-08 21:35:01'),
(562, 1, 'alumno', '69e83cfd68bfd2502aee111141d884186a49ab0bdd7b8f575063f35c7fba13d7', '2025-06-09 00:35:25', 'Activa', '2025-06-08 21:35:25', '2025-06-08 21:35:25'),
(563, 1, 'docente', 'a22a25675e23dfaee8af14b1017a496f36ecfdc53c9540df67d766b0fa1b7e8c', '2025-06-09 00:36:54', 'Activa', '2025-06-08 21:36:54', '2025-06-08 21:36:54'),
(564, 1, 'admin', 'f0088c7221230b2903f6d31629e4f6dc7cd27a8fe68d1cc193bb7ffbfe5d5f32', '2025-06-09 00:37:53', 'Activa', '2025-06-08 21:37:53', '2025-06-08 21:37:53'),
(565, 1, 'admin', 'd13031a060b7d7082d28443c812a3bec8ffe1dbf6233f8319ccd11f6d7723d8e', '2025-06-09 00:39:07', 'Activa', '2025-06-08 21:39:07', '2025-06-08 21:39:07'),
(566, 1, 'admin', '5dad2f532c8aad9fa89f45ab0a24b483ce0074399b795e924a9f230a60152bed', '2025-06-09 00:40:16', 'Activa', '2025-06-08 21:40:16', '2025-06-08 21:40:16'),
(567, 1, 'admin', '7dfdf533affb89aaf16ead3d10ff1a388586db0d724590e87f7ba1cff3445b32', '2025-06-09 00:43:22', 'Activa', '2025-06-08 21:43:22', '2025-06-08 21:43:22'),
(570, 1, 'admin', 'b85b30c0a0d3e08afa11b63c401d8f3b88b0bf8a46a0bb1ce28abe98b24e014a', '2025-06-09 00:48:01', 'Activa', '2025-06-08 21:48:01', '2025-06-08 21:48:01'),
(572, 1, 'alumno', '1b41dd072e6d57ca03f46f276dcaa12e58cda436de7178b5fb8b391a30cf7779', '2026-01-14 21:00:39', 'Activa', '2026-01-14 19:00:39', '2026-01-14 19:00:39'),
(573, 1, 'alumno', '087fee736d0d73b617b01379be47bba058d6f24da53b2a57ab78348f861206fd', '2026-01-14 21:02:12', 'Activa', '2026-01-14 19:02:12', '2026-01-14 19:02:12'),
(575, 1, 'admin', 'fe67b64fb4b810b08c7789e444744f7912f8df04ab40618bfe9d069d3113d361', '2026-01-14 21:55:03', 'Activa', '2026-01-14 19:55:03', '2026-01-14 19:55:03');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id_alumno`),
  ADD UNIQUE KEY `rut` (`rut`),
  ADD UNIQUE KEY `nombre_usuario` (`nombre_usuario`);

--
-- Indices de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD PRIMARY KEY (`id_asignatura`),
  ADD KEY `id_carrera` (`id_carrera`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`id_carrera`),
  ADD UNIQUE KEY `nombre_carrera` (`nombre_carrera`);

--
-- Indices de la tabla `componentes_evaluacion`
--
ALTER TABLE `componentes_evaluacion`
  ADD PRIMARY KEY (`id_componente`),
  ADD KEY `id_modo` (`id_modo`);

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`id_docente`),
  ADD UNIQUE KEY `rut` (`rut`),
  ADD UNIQUE KEY `nombre_usuario` (`nombre_usuario`);

--
-- Indices de la tabla `docente_asignatura`
--
ALTER TABLE `docente_asignatura`
  ADD PRIMARY KEY (`id_docente`,`id_asignatura`),
  ADD KEY `id_asignatura` (`id_asignatura`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id_evento`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indices de la tabla `matriculas`
--
ALTER TABLE `matriculas`
  ADD PRIMARY KEY (`id_matricula`),
  ADD UNIQUE KEY `numero_matricula` (`numero_matricula`),
  ADD KEY `id_alumno` (`id_alumno`),
  ADD KEY `id_carrera` (`id_carrera`);

--
-- Indices de la tabla `modos_evaluacion`
--
ALTER TABLE `modos_evaluacion`
  ADD PRIMARY KEY (`id_modo`),
  ADD KEY `id_asignatura` (`id_asignatura`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id_nota`),
  ADD UNIQUE KEY `id_alumno` (`id_alumno`,`id_asignatura`,`id_componente`),
  ADD KEY `id_asignatura` (`id_asignatura`),
  ADD KEY `id_modo` (`id_modo`),
  ADD KEY `id_componente` (`id_componente`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id_noticia`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indices de la tabla `personal_administrativo`
--
ALTER TABLE `personal_administrativo`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `rut` (`rut`),
  ADD UNIQUE KEY `nombre_usuario` (`nombre_usuario`);

--
-- Indices de la tabla `promedios_finales`
--
ALTER TABLE `promedios_finales`
  ADD PRIMARY KEY (`id_promedio`),
  ADD UNIQUE KEY `id_alumno` (`id_alumno`,`id_asignatura`),
  ADD KEY `id_asignatura` (`id_asignatura`),
  ADD KEY `id_modo` (`id_modo`);

--
-- Indices de la tabla `sesiones`
--
ALTER TABLE `sesiones`
  ADD PRIMARY KEY (`id_sesion`),
  ADD KEY `idx_token` (`token_sesion`),
  ADD KEY `idx_usuario` (`id_usuario`,`tipo_usuario`),
  ADD KEY `idx_estado` (`estado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id_alumno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  MODIFY `id_asignatura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `id_carrera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `componentes_evaluacion`
--
ALTER TABLE `componentes_evaluacion`
  MODIFY `id_componente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `docentes`
--
ALTER TABLE `docentes`
  MODIFY `id_docente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id_evento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `matriculas`
--
ALTER TABLE `matriculas`
  MODIFY `id_matricula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `modos_evaluacion`
--
ALTER TABLE `modos_evaluacion`
  MODIFY `id_modo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id_noticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `personal_administrativo`
--
ALTER TABLE `personal_administrativo`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `promedios_finales`
--
ALTER TABLE `promedios_finales`
  MODIFY `id_promedio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `sesiones`
--
ALTER TABLE `sesiones`
  MODIFY `id_sesion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=576;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD CONSTRAINT `asignaturas_ibfk_1` FOREIGN KEY (`id_carrera`) REFERENCES `carreras` (`id_carrera`);

--
-- Filtros para la tabla `componentes_evaluacion`
--
ALTER TABLE `componentes_evaluacion`
  ADD CONSTRAINT `componentes_evaluacion_ibfk_1` FOREIGN KEY (`id_modo`) REFERENCES `modos_evaluacion` (`id_modo`);

--
-- Filtros para la tabla `docente_asignatura`
--
ALTER TABLE `docente_asignatura`
  ADD CONSTRAINT `docente_asignatura_ibfk_1` FOREIGN KEY (`id_docente`) REFERENCES `docentes` (`id_docente`),
  ADD CONSTRAINT `docente_asignatura_ibfk_2` FOREIGN KEY (`id_asignatura`) REFERENCES `asignaturas` (`id_asignatura`);

--
-- Filtros para la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `eventos_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `personal_administrativo` (`id_admin`);

--
-- Filtros para la tabla `matriculas`
--
ALTER TABLE `matriculas`
  ADD CONSTRAINT `matriculas_ibfk_1` FOREIGN KEY (`id_alumno`) REFERENCES `alumnos` (`id_alumno`),
  ADD CONSTRAINT `matriculas_ibfk_2` FOREIGN KEY (`id_carrera`) REFERENCES `carreras` (`id_carrera`);

--
-- Filtros para la tabla `modos_evaluacion`
--
ALTER TABLE `modos_evaluacion`
  ADD CONSTRAINT `modos_evaluacion_ibfk_1` FOREIGN KEY (`id_asignatura`) REFERENCES `asignaturas` (`id_asignatura`);

--
-- Filtros para la tabla `notas`
--
ALTER TABLE `notas`
  ADD CONSTRAINT `notas_ibfk_1` FOREIGN KEY (`id_alumno`) REFERENCES `alumnos` (`id_alumno`),
  ADD CONSTRAINT `notas_ibfk_2` FOREIGN KEY (`id_asignatura`) REFERENCES `asignaturas` (`id_asignatura`),
  ADD CONSTRAINT `notas_ibfk_3` FOREIGN KEY (`id_modo`) REFERENCES `modos_evaluacion` (`id_modo`),
  ADD CONSTRAINT `notas_ibfk_4` FOREIGN KEY (`id_componente`) REFERENCES `componentes_evaluacion` (`id_componente`);

--
-- Filtros para la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD CONSTRAINT `noticias_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `personal_administrativo` (`id_admin`);

--
-- Filtros para la tabla `promedios_finales`
--
ALTER TABLE `promedios_finales`
  ADD CONSTRAINT `promedios_finales_ibfk_1` FOREIGN KEY (`id_alumno`) REFERENCES `alumnos` (`id_alumno`),
  ADD CONSTRAINT `promedios_finales_ibfk_2` FOREIGN KEY (`id_asignatura`) REFERENCES `asignaturas` (`id_asignatura`),
  ADD CONSTRAINT `promedios_finales_ibfk_3` FOREIGN KEY (`id_modo`) REFERENCES `modos_evaluacion` (`id_modo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
