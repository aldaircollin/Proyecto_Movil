-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-06-2022 a las 05:00:55
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `restaurante`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `vigencia` bit(1) DEFAULT NULL,
  `foto_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`, `vigencia`, `foto_id`) VALUES
(1, 'Costa', b'1', 2),
(2, 'Sierra', b'1', 3),
(3, 'Selva', b'1', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `apellido_materno` varchar(100) DEFAULT NULL,
  `apellido_paterno` varchar(100) DEFAULT NULL,
  `departamento` varchar(100) DEFAULT NULL,
  `direccion_envio` varchar(500) DEFAULT NULL,
  `distrito` varchar(100) DEFAULT NULL,
  `nombres` varchar(100) DEFAULT NULL,
  `num_doc` varchar(11) DEFAULT NULL,
  `provincia` varchar(100) DEFAULT NULL,
  `telefono` varchar(9) DEFAULT NULL,
  `tipo_doc` varchar(20) DEFAULT NULL,
  `foto_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id`, `apellido_materno`, `apellido_paterno`, `departamento`, `direccion_envio`, `distrito`, `nombres`, `num_doc`, `provincia`, `telefono`, `tipo_doc`, `foto_id`) VALUES
(1, 'Flores', 'Mendoza ', 'AYACUCHO', 'Av. Arenales #111', 'CARMEN ALTO', 'Henry', '77446699', 'HUAMANGA', '96663339', 'DNI', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

CREATE TABLE `detalle_pedido` (
  `id` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `pedido_id` int(11) DEFAULT NULL,
  `platillo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`id`, `cantidad`, `precio`, `pedido_id`, `platillo_id`) VALUES
(1, 2, 15, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento_almacenado`
--

CREATE TABLE `documento_almacenado` (
  `id` bigint(20) NOT NULL,
  `eliminado` bit(1) NOT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `extension` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `documento_almacenado`
--

INSERT INTO `documento_almacenado` (`id`, `eliminado`, `estado`, `extension`, `file_name`, `nombre`) VALUES
(1, b'0', 'A', '.jpg', '61cd9ca3-5e47-464c-beb2-b1883f3d626d', 'profilePh1872022211829'),
(2, b'0', 'A', '.png', 'c106d9d1-59f1-4b79-8747-407433e3b26b', 'costa'),
(3, b'0', 'A', '.png', 'd1ada2fd-b54a-4642-9da4-23f81f5f13a7', 'sierra'),
(4, b'0', 'A', '.jpg', '9fd738cf-2a7f-4ebc-89d9-d805c9bb8aac', 'selva'),
(5, b'0', 'A', '.png', '30451e0e-837c-48fa-bf10-e4685ae8f62e', 'ceviche_clasico'),
(6, b'0', 'A', '.jpg', 'a65b66e6-9e72-4ed7-859e-eec995300004', 'leche_de_tigre'),
(7, b'0', 'A', '.png', '8bdd6f2f-ddbf-4b1c-bf9e-5148ca0d264b', 'arrozconmariscos'),
(8, b'0', 'A', '.png', '3821377e-960b-4033-9ff2-d3b3ab8e4b70', 'chilcano'),
(9, b'0', 'A', '.png', '5552c179-17fa-4671-a53a-1eef8850a6ce', 'tallarincriollo'),
(10, b'0', 'A', '.jpg', '8e5640f6-6ba4-4637-93a1-a0f7f4a2c818', 'mondongo'),
(11, b'0', 'A', '.jpg', '69938aec-a9cb-4ec9-b98e-834ae063b886', 'pachamanca'),
(12, b'0', 'A', '.jpg', '8f46d18b-2935-4be9-9f84-6462a5e2e365', 'truchafrita'),
(13, b'0', 'A', '.jpg', '442d5f30-5b6f-48df-9e9e-95ef97b42fe0', 'cuy'),
(14, b'0', 'A', '.jpg', 'fa595b1f-1ad2-4c81-8766-694edd1e7185', 'juanae'),
(15, b'0', 'A', '.jpg', 'df0ad761-2531-4ad5-b15c-44d29b73cc6a', 'tacacho'),
(16, b'0', 'A', '.jpg', 'ae0386ec-c12b-4055-8d26-47eb34f301e9', 'Patarashca');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id` int(11) NOT NULL,
  `anular_pedido` bit(1) DEFAULT NULL,
  `fecha_compra` datetime DEFAULT NULL,
  `monto` double DEFAULT NULL,
  `cliente_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`id`, `anular_pedido`, `fecha_compra`, `monto`, `cliente_id`) VALUES
(1, b'0', '2022-06-18 21:28:43', 30, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `platillo`
--

CREATE TABLE `platillo` (
  `id` int(11) NOT NULL,
  `descripcion_platillo` varchar(500) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `recomendado` bit(1) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `vigencia` bit(1) DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `foto_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `platillo`
--

INSERT INTO `platillo` (`id`, `descripcion_platillo`, `nombre`, `precio`, `recomendado`, `stock`, `vigencia`, `categoria_id`, `foto_id`) VALUES
(1, 'Platillo preparado con pescado crudo marinado en jugo de limón y condimentado con otros ingredientes que varían según la región. En muchos países latinoamericanos, el ceviche forma parte de la cultura gastronómica, incluso en Perú es considerado patrimonio cultural.', 'Ceviche de Pescado', 15, b'1', 8, b'1', 1, 5),
(2, 'Es el líquido lechoso que queda después de marinar el pescado crudo: una seductora mezcla de ingredientes como cítricos, ajíes y cebollas que se transforman con el toque del mar.', 'Leche de Tigre', 10, b'1', 10, b'1', 1, 6),
(3, 'El arroz con mariscos bien puede definirse como una versión peruana de la paella española. La riqueza y variedad del mar peruano facilita la preparación de sabrosos platillos como este; el arroz con mariscos se sitúa entre los platos más solicitados hechos a base de exquisitos frutos del mar.', 'Arroz con Mariscos', 15, b'1', 20, b'1', 1, 7),
(4, 'El chilcano de pescado es un plato delicioso y tradicional de la gastronomía peruana. Es un rico caldo hecho a base de pescado y aromatizado con hierbas frescas que le aportan un sabor especial.', 'Chilcano de Pescado', 10, b'1', 20, b'1', 1, 8),
(5, 'El Tallarín Saltado Criollo es uno de esos platos la gastronomía peruana tiene que agradecer a la cocina oriental china, que es muy popular por su increíble sabor. Este plato de origen oriental es un gran aporte a la cocina fusión peruana, un clásico en los restaurantes chinos del Perú.', 'Tallarín Saltado Criollo', 15, b'1', 20, b'1', 1, 9),
(6, 'El Mondongo Ayacuchano es un plato tradicional que consiste en un caldo con maíz pelado, mondongo y carne de vaca.', 'Mondongo Ayacuchano', 10, b'1', 20, b'1', 2, 10),
(7, 'La pachamanca es un plato típico del Perú, elaborado por la cocción, al calor de piedras precalentadas, de carnes de vaca, de cerdo, pollo y cuy previamente aderezados con ingredientes como huacatay, ají, comino, pimiento y otras especias, asimismo de productos originales andinos adicionales, como papas, camote, choclo, haba y yuca.', 'Pachamanca', 15, b'1', 20, b'1', 2, 11),
(8, 'Es otro de los platos típicos tradicionales de la sierra. La trucha es un pescado con un alto contenido de minerales y vitaminas y es considerado como un alimento muy nutritivo. Después de freír el pescado, se sirve acompañado de papas doradas, arroz o camote.', 'Trucha Frita', 15, b'1', 20, b'1', 2, 12),
(9, 'El cuy es un animal muy conocido y consumido en Perú, y suele ser uno de los ingredientes principales en los platos típicos de la sierra peruana. Su preparación se basa en freír el cuy con abundante aceite, dejando la textura de la piel crocante y la carne muy suave. Se puede servir acompañado de papas, ensalada y salsas. Por lo general, el cuy se sirve entero.', 'Cuy Chactado', 30, b'1', 20, b'1', 2, 13),
(10, 'Plato oriundo de Moyobamba que se asemeja a un tamal muy grande a base de arroz, pollo o gallina y huevo. Donde el arroz cubre como si fuese una manta al pollo ya sazonado y al huevo en pedazos. Un plato con un sabor muy agradable que puede satisfacer al paladar más exigente.', 'Juane', 20, b'1', 20, b'1', 3, 14),
(11, 'Plato emblemático de la selva peruana. Consta de plátano verde (frito o asado) el cual es machacado y mezclado con manteca de cerdo. Se acompaña con cecina (carne de cerdo seca y ahumada) y con chorizo (embutido a base de intestinos delgados del cerdo relleno con carne molida del mismo animal bien condimentada).', 'Tacacho con Cecina', 20, b'1', 20, b'1', 3, 15),
(12, 'Ideal para los amantes del pescado. Un delicioso pescado de río condimentado con especias propias de la selva peruana, envuelto en una hoja y asado en carbón. Una combinación perfecta que provoca que el pescado tenga un aroma y un sabor especial.', 'Patarashca', 20, b'1', 20, b'1', 3, 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `clave` varchar(20) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `vigencia` bit(1) DEFAULT NULL,
  `cliente_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `clave`, `email`, `vigencia`, `cliente_id`) VALUES
(1, '12345', 'henry12@gmail.com', b'1', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKbyh5eextelhhs5gyxj7giuspd` (`foto_id`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKorx40wtfkkqg46bht8mt4vb3a` (`foto_id`);

--
-- Indices de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKgqvba9e7dildyw45u0usdj1k2` (`pedido_id`),
  ADD KEY `FKhyip16w63t7nx78o23cu3fks4` (`platillo_id`);

--
-- Indices de la tabla `documento_almacenado`
--
ALTER TABLE `documento_almacenado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK30s8j2ktpay6of18lbyqn3632` (`cliente_id`);

--
-- Indices de la tabla `platillo`
--
ALTER TABLE `platillo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKkchwn4n0badohpdsfeb2qwbca` (`categoria_id`),
  ADD KEY `FK42mi3n2tu0656xlm58cpaojb` (`foto_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKp3dqdf5mc3lqr5y9p3b0omjl9` (`cliente_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `documento_almacenado`
--
ALTER TABLE `documento_almacenado`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `platillo`
--
ALTER TABLE `platillo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD CONSTRAINT `FKbyh5eextelhhs5gyxj7giuspd` FOREIGN KEY (`foto_id`) REFERENCES `documento_almacenado` (`id`);

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `FKorx40wtfkkqg46bht8mt4vb3a` FOREIGN KEY (`foto_id`) REFERENCES `documento_almacenado` (`id`);

--
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `FKgqvba9e7dildyw45u0usdj1k2` FOREIGN KEY (`pedido_id`) REFERENCES `pedido` (`id`),
  ADD CONSTRAINT `FKhyip16w63t7nx78o23cu3fks4` FOREIGN KEY (`platillo_id`) REFERENCES `platillo` (`id`);

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `FK30s8j2ktpay6of18lbyqn3632` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`);

--
-- Filtros para la tabla `platillo`
--
ALTER TABLE `platillo`
  ADD CONSTRAINT `FK42mi3n2tu0656xlm58cpaojb` FOREIGN KEY (`foto_id`) REFERENCES `documento_almacenado` (`id`),
  ADD CONSTRAINT `FKkchwn4n0badohpdsfeb2qwbca` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `FKp3dqdf5mc3lqr5y9p3b0omjl9` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
