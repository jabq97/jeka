-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-07-2022 a las 09:17:46
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
-- Base de datos: `mision`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `casas` int(10) NOT NULL,
  `edificios` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id`, `nombre`, `casas`, `edificios`) VALUES
(1, 'Amazonas', 2065, 480),
(2, 'Anzoategui', 1210, 125),
(3, 'Apure', 1203, 238),
(4, 'Aragua', 551, 125),
(5, 'Barinas', 670, 1340),
(6, 'Bolivar', 800, 1000),
(7, 'Carabobo', 500, 2600),
(8, 'Cojedes', 704, 300),
(9, 'Delta Amacuro', 120, 200),
(10, 'Distrito Capital', 450, 4500),
(11, 'Falcon', 501, 671),
(12, 'Guarico', 500, 500),
(13, 'Lara', 670, 300),
(14, 'Merida', 70457, 3000),
(15, 'Miranda', 2340, 2000),
(16, 'Monagas', 403, 500),
(17, 'Nueva Esparta', 302, 304),
(18, 'Portuguesa', 230, 500),
(19, 'Sucre', 200, 304),
(20, 'Tachira', 1500, 800),
(21, 'Trujillo', 405, 560),
(22, 'Vargas', 200, 500),
(23, 'Yaracuy', 300, 500),
(24, 'Zulia', 3000, 3050);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ci` varchar(20) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `ubicacion` varchar(250) NOT NULL,
  `clave` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ci`, `nombre`, `apellido`, `correo`, `ubicacion`, `clave`) VALUES
('10384426', 'Carmen', 'Ramirez', 'CarRam10@gmail.com', 'Trujillo', '1ea.UEQLwx'),
('10570747', 'Henry', 'Romero', 'HenRom10@gmail.com', 'Carabobo', '96VQr!.Pz*'),
('12214714', 'Manuel', 'Parra', 'ManPar12@gmail.com', 'Falcon', '*qyzvkC3t3'),
('12280932', 'Maria', 'Diaz', 'MarDia12@gmail.com', 'Carabobo', 'F*JMOjrg41'),
('123456', 'Josue', 'abraham', 'jabq_97@gmail.com', 'Distrito Capital', '123456'),
('12497170', 'Carmen', 'Navarro', 'CarNav12@gmail.com', 'Bolivar', 'LNiE*z4cRj'),
('12723104', 'Jesus', 'Hernandez', 'JesHer12@gmail.com', 'Barinas', 'eSsRuL@u?.'),
('13449925', 'Carmen', 'Flores', 'CarFlo13@gmail.com', 'Falcon', 'ztZJ0DW3EZ'),
('13460129', 'Diana', 'Flores', 'DiaFlo13@gmail.com', 'Tachira', 'AfPZY0HCOK'),
('13473558', 'Ana', 'Gonzalez', 'AnaGon13@gmail.com', 'Merida', 'vt2.yk2v9B'),
('14344100', 'Rosa', 'Blanco', 'RosBla14@gmail.com', 'Amazonas', 'zVGXulFnqu'),
('14625151', 'Blanca', 'Barrios', 'BlaBar14@gmail.com', 'Vargas', 'yx1F*?AjLS'),
('14698082', 'Luis', 'Pineda', 'LuiPin14@gmail.com', 'Nueva Esparta', 'IDEMOV*xjh'),
('14931268', 'Jose', 'Brito', 'JosBri14@gmail.com', 'Nueva Esparta', '*ORzqW!bRd'),
('15356357', 'Maria', 'Rivas', 'MarRiv15@gmail.com', 'Anzoategui', 'NUTeRX@fUP'),
('15378064', 'Pedro', 'Rodriguez', 'PedRod15@gmail.com', 'Zulia', 'ujTAKi*bd2'),
('15669534', 'Alexander', 'Perez', 'AlePer15@gmail.com', 'Portuguesa', '2p.h5kNIJk'),
('16038012', 'Jose', 'Blanco', 'JosBla16@gmail.com', 'Amazonas', 't5wB3YQAR1'),
('16311643', 'Jose', 'Brito', 'JosBri16@gmail.com', 'Yaracuy', '0VPi!JAmbn'),
('17151645', 'Douglas', 'Arias', 'DouAri17@gmail.com', 'Lara', '*WoG3I6o*o'),
('18055823', 'Ana', 'Soto', 'AnaSot18@gmail.com', 'Tachira', '1XB4!rMy8M'),
('18110691', 'Jose', 'Gomez', 'JosGom18@gmail.com', 'Falcon', 'lBljS7Wyts'),
('18531918', 'Maria', 'Diaz', 'MarDia18@gmail.com', 'Trujillo', 'l72rOY0Mt9'),
('18566396', 'Maria', 'Garcia', 'MarGar18@gmail.com', 'Vargas', 'tEna.w84S5'),
('18887045', 'Henry', 'Alvarado', 'HenAlv18@gmail.com', 'Vargas', '2WCafw87uf'),
('18991675', 'Rosa', 'Cedeño', 'RosCed18@gmail.com', 'Merida', 'TXbwW9JnSb'),
('19138298', 'Carmen', 'Hernandez', 'CarHer19@gmail.com', 'Trujillo', 'KMhQtQbSnv'),
('20927949', 'Ana', 'Rodriguez', 'AnaRod20@gmail.com', 'Aragua', 'Spgk5G8O5c'),
('21061457', 'Angel', 'Fernandez', 'AngFer21@gmail.com', 'Carabobo', 'EQTSnizLTM'),
('21637255', 'Maria', 'Silva', 'MarSil21@gmail.com', 'Miranda', 'r@LnqV7EHx'),
('21715903', 'Ana', 'Ramos', 'AnaRam21@gmail.com', 'Merida', 'NLmVd5cGD@'),
('22272732', 'Carmen', 'Romero', 'CarRom22@gmail.com', 'Guarico', 'vN!g5yawmP'),
('23050346', 'Jose', 'Diaz', 'JosDia23@gmail.com', 'Cojedes', '0ZncLvd3Xm'),
('23318138', 'Juan', 'Gonzalez', 'JuaGon23@gmail.com', 'Merida', '0vtkTLuO9L'),
('23530833', 'Raul', 'Cedeño', 'RauCed23@gmail.com', 'Sucre', 'vY2EdSLeLZ'),
('23867603', 'Carlos', 'Rodriguez', 'CarRod23@gmail.com', 'Apure', 'vq.@US.Wzz'),
('24026770', 'Orlando', 'Brito', 'OrlBri24@gmail.com', 'Falcon', 'lmuj2jL@t4'),
('24379065', 'Luisa', 'Rodriguez', 'LuiRod24@gmail.com', 'Miranda', 'u!jZX?*4R?'),
('24418142', 'Gladys', 'Garcia', 'GlaGar24@gmail.com', 'Sucre', 'SmjPsD?VK?'),
('25082012', 'Carmen', 'Pekai', 'CarPek25@gmail.com', 'Trujillo', 'mC4Ou6TGpa'),
('25239789', 'ana', 'karina', 'llamame@gmail.com', 'Distrito Capital', '123456'),
('25321654', 'Josue', 'a', 'josue@gmail.com', 'Distrito Capital', '123456'),
('25325789', 'Josue', 'Balza', 'josuebalza@hotmail.com', 'Distrito Capital', '123456'),
('25378182', 'Hector', 'Leal', 'HecLea25@gmail.com', 'Yaracuy', 'DQrEWPtyU!'),
('25666198', 'Fernando', 'Gonzalez', 'FerGon25@gmail.com', 'Miranda', 'wblSGM1JMb'),
('25901223', 'Pedro', 'Figueroa', 'PedFig25@gmail.com', 'Portuguesa', '9XEVqbj4ec'),
('26026785', 'Miguel', 'Sanchez', 'MigSan26@gmail.com', 'Miranda', 'jTSDR00lXu'),
('26647540', 'William', 'Ruiz', 'WilRui26@gmail.com', 'Yaracuy', 'bFLHvjfQxs'),
('27711218', 'Jose', 'Gonzalez', 'JosGon27@gmail.com', 'Trujillo', 'SidHfF@V1j'),
('28174119', 'Maria', 'Rodriguez', 'MarRod28@gmail.com', 'Falcon', 'nhfcVvgsQ6'),
('28270428', 'Maria', 'Perez', 'MarPer28@gmail.com', 'Bolivar', '5tYqrgNjAn'),
('28580931', 'Maria', 'Rojas', 'MarRoj28@gmail.com', 'Distrito Capital', 'NBumIP8hLI'),
('28860156', 'Luis', 'Rivas', 'LuiRiv28@gmail.com', 'Lara', 'gzT5zOWqIn'),
('29446930', 'Blanca', 'Contreras', 'BlaCon29@gmail.com', 'Barinas', 'H1Txoic329'),
('30258741', 'jholinguer', 'ruiz', 'jholinguer@gmail.com', 'Distrito Capital', '654321'),
('5741147', 'pedro', 'martinez', 'pedro@mail.com', 'Distrito Capital', '123456');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ci`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
