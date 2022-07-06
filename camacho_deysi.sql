-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-07-2022 a las 03:32:07
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pet_finder`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascotas`
--

CREATE TABLE `mascotas` (
  `id_mascota` int(3) NOT NULL,
  `tipo_mascota` varchar(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `img` varchar(100) NOT NULL,
  `genero` varchar(10) NOT NULL,
  `edad` varchar(10) NOT NULL,
  `ubicacion` varchar(50) NOT NULL,
  `fk_direccion` int(3) NOT NULL,
  `raza` varchar(50) NOT NULL,
  `tamaño` varchar(10) NOT NULL,
  `caracteristicas` varchar(1000) NOT NULL,
  `observaciones` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `mascotas`
--

INSERT INTO `mascotas` (`id_mascota`, `tipo_mascota`, `nombre`, `img`, `genero`, `edad`, `ubicacion`, `fk_direccion`, `raza`, `tamaño`, `caracteristicas`, `observaciones`) VALUES
(1, 'perro', 'Violeta', 'violeta.jpg', 'Femenino', 'Cachorro', 'CABA', 4, 'Mestizo', 'Pequeño', 'Juguetona y con mucha energía', 'Vacunas al día, esterilizada'),
(2, 'perro', 'Cinnamon', 'cinnamon.jpg', 'Femenino', 'Joven', 'CABA', 2, 'Mestizo', 'Mediano', 'Se lleva bien con otros perros, gatos y niños.', 'Vacunas al día'),
(3, 'perro', 'Pepper', 'pepper.jpg', 'Femenino', 'Adulto', 'CABA', 2, 'Mestiza', 'Mediano', 'Amistosa y cariñosa. Disfruta el aire libre.', 'Vacunas al día'),
(4, 'gato', 'Buttercup', 'buttercup.jpg', 'Femenino', 'Joven', 'Provincia de Buenos Aires', 1, 'Mestizo', 'Pequeño', 'Pelo corto. Entrenada para estar en casa. Se lleva bien con niños.', 'Vacunas al día, esterilizada'),
(5, 'gato', 'Emma', 'emma.jpg', 'Femenino', 'Adulto', 'Provincia de Buenos Aires', 1, 'Mestizo', 'Mediano', 'Independiente, amistosa, juguetona. Se lleva bien con otros gatos, perros y con niños.', 'Vacunas al día, esterilizada'),
(6, 'gato', 'Lana', 'lana.jpg', 'Femenino', 'Adulto', 'Provincia de Buenos Aires', 3, 'Mestizo', 'Mediano', 'Se lleva bien con otras mascotas y niños. Entrenada para estar en casa.', 'Vacunas al día, esterilizada'),
(7, 'gato', 'Apollo', 'apollo.jpg', 'Masculino', 'Cachorro', 'Provincia de Buenos Aires', 1, 'Mestizo', 'Pequeño', 'Amoroso y con mucha  energía. Le encanta jugar con la pelota. Se lleva bien con otras mascotas y con niños.', 'Vacunas al día, castrado'),
(8, 'gato', 'Gandalf', 'gandalf.jpg', 'Masculino', 'Senior', 'Provincia de Buenos Aires', 3, 'Mestizo', 'Mediano', 'Curioso, inteligente. Entrenado para estar en casa. Se lleva bien con otras mascotas.', 'Vacunas al día, castrado'),
(9, 'perro', 'Noche', 'noche.jpg', 'Masculino', 'Cachorro', 'CABA', 4, 'Mestizo', 'Pequeño', 'Amoroso, juguetón y con mucha energía.', 'Vacunas al día'),
(10, 'perro', 'Duke', 'duke.jpg', 'Masculino', 'Adulto', 'CABA', 2, 'Mestizo', 'Mediano', 'Disfruta de actividades al aire libre. Entrenado.', 'Vacunas al día, castrado'),
(11, 'perro', 'Kansas', 'kansas.jpg', 'Masculino', 'Senior', 'CABA', 2, 'Mestizo', 'Grande', 'Amoroso, tranquilo, leal. Se lleva bien con otros perros y con niños, no así con gatos', 'Vacunas al día, castrado'),
(12, 'perro', 'Adam', 'adam.jpg', 'Masculino', 'Senior', 'CABA', 4, 'Mestizo', 'Grande', 'Es muy cariñoso, alegre. Su actividad favorita es ver pasar el mundo desde la seguridad de un porche', 'Vacunas al día, castrado'),
(13, 'gato', 'Minerva', 'minerva.jpg', 'Femenino', 'Joven', 'CABA', 4, 'Maine Coon', 'Mediano', 'Inteligente, tranquila, independiente. Le gustan los mimos pero no en exceso.', 'Vacunas al día'),
(14, 'gato', 'Salem', 'salem.jpg', 'Masculino', 'Adulto', 'CABA', 2, 'Bombay', 'Mediano', 'Amistoso, independiente, curioso. Se lleva bien con otras mascotas.', 'Vacunas al día, castrado'),
(15, 'gato', 'Pistacho', 'pistacho.jpg', 'Masculino', 'Cachorro', 'CABA', 2, 'Mestizo', 'Pequeño', 'Curioso y jugueton. Entrenado para estar en casa.', 'Vacunas al día'),
(16, 'gato', 'Rhys', 'rhys.jpg', 'Masculino', 'Joven', 'CABA', 2, 'Americano de pelo corto', 'Mediano', 'Tranquilo y gentil.', 'Vacunas al día, castrado'),
(17, 'gato', 'Twix', 'twix.jpg', 'Masculino', 'Cachorro', 'CABA', 4, 'Mestizo', 'Pequeño', 'Juguetón.', 'Vacunas al día'),
(18, 'perro', 'Leia', 'leia.jpg', 'Femenino', 'Joven', 'Provincia de Buenos Aires', 1, 'Mestizo', 'Mediano', 'Dulce y cariñosa. Puede asustarse fácilmente y se toma un tiempo para confiar en las personas.', 'Vacunas al día'),
(19, 'perro', 'Annie', 'annie.jpg', 'Femenino', 'Adulto', 'Provincia de Buenos Aires', 3, 'Cocker Spaniel ingles', 'Mediano', 'Gentil y amorosa. Se lleva bien con niños.', 'Vacunas al día, esterilizada'),
(20, 'perro', 'George', 'george.jpg', 'Masculino', 'Joven', 'Provincia de Buenos Aires', 1, 'Mestizo', 'Grande', 'Súper amigable y con mucha energia. Todavía tiene algunos comportamientos de cachorro, como morder los zapatos. Le iría mejor con otro perro y con un gran patio cercado para correr o alguien que lo ejercite con frecuencia. ¡Es muy amigable y ama a las personas y a otros perros!', 'Vacunas al día, castrado'),
(21, 'perro', 'Vader', 'vader.jpg', 'Masculino', 'Adulto', 'Provincia de Buenos Aires', 1, 'Mestizo', 'Grande', 'Quiere toda la atención que pueda conseguir. Se sentará en tu regazo o correrá contigo en la playa en cualquier momento. Se pone ansioso cuando se queda solo. No debe estar cerca de gatos u otros animales pequeños.', 'Vacunas al día, castrado'),
(22, 'perro', 'Neo', 'neo.jpg', 'Masculino', 'Joven', 'Provincia de Buenos Aires', 1, 'Mestizo', 'Grande', 'Tranquilo y amigable. Entrenado. Se lleva muy bien con otros perros y disfruta de paseos en el auto.', 'Vacunas al día'),
(23, 'perro', 'Max', 'max.jpg', 'Masculino', 'Senior', 'Provincia de Buenos Aires', 3, 'Mestizo', 'Mediano', 'Tranquilo y leal. Le encanta acurrucarse. Se lleva bien con otras mascotas.', 'Vacunas al día, castrado'),
(24, 'perro', 'Dug', 'dug.jpg', 'Masculino', 'Cachorro', 'Provincia de Buenos Aires', 1, 'Golden Retriever', 'Pequeño', 'Es un chico alegre y se lleva bien con todos. Le encanta jugar con otros perros y correr por un gran patio. Todavía necesitaría algo de entrenamiento básico, pero está ansioso por aprender, por lo que no le tomaría mucho más que un par de golosinas y algo de paciencia.', 'Vacunas al día'),
(25, 'perro', 'Mr. Burns', 'mrburns.jpg', 'Masculino', 'Adulto', 'Provincia de Buenos Aires', 3, 'Mestizo', 'Grande', 'Es un perro dulce y tímido. Puede que tome un poco de tiempo antes de sentirse cómodo en su nuevo hogar, pero una vez que lo haga, estamos seguros de que estará muy agradecido y feliz de ser amado por su nueva familia.', 'Vacunas al día, castrado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `refugios`
--

CREATE TABLE `refugios` (
  `id_refugio` int(3) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `informacion` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `refugios`
--

INSERT INTO `refugios` (`id_refugio`, `nombre`, `direccion`, `informacion`, `email`, `telefono`, `img`) VALUES
(1, 'Pawsitos Refugio', 'Uruguay 526 - Pilar, Buenos Aires.\r\n\r\n', 'Horarios: \r\nLunes a Domingo de 09hs a 18hs', 'refugio_pawsitos@gmail.com', '54 9 11 2160 3421', 'pawsitos.jpg'),
(2, 'Fairy Tails', 'Av. Pueyrredón 1549 - Ciudad Autónoma de Buenos Aires, Ciudad Autónoma de Buenos Aires', 'Horarios:\r\nLunes a Sábado de 10hs a 19:30hs.\r\nDomingos y Feriados 13hs a 15hs.', 'fairytails@gmail.com', '11 5635 1127', 'fairytails.jpg'),
(3, 'Fundación Salva un Chucho', 'Av. Centenario 1534 - San Isidro, Buenos Aires.', 'Horarios de atención:\r\nLunes a Viernes de 10hs a 20hs.\r\nSábados de 10hs a 18hs.\r\nDomingos y Feriados cerrado.', 'sucfundacion@gmail.com', '11 4926 3715', 'salva.jpg'),
(4, 'Pet Pals', 'Av. San Martin 2617 - CABA, CABA.\r\n', 'Horarios:\r\nLunes a Viernes - 09hs a 20hs\r\nSábados, Domingos y Feriados - 11hs a 18hs', 'pet_pals_info@gmail.com', '15 5486 1328', 'petpals.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mascotas`
--
ALTER TABLE `mascotas`
  ADD PRIMARY KEY (`id_mascota`),
  ADD KEY `mascotas_refugios` (`fk_direccion`);

--
-- Indices de la tabla `refugios`
--
ALTER TABLE `refugios`
  ADD PRIMARY KEY (`id_refugio`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `mascotas`
--
ALTER TABLE `mascotas`
  MODIFY `id_mascota` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `refugios`
--
ALTER TABLE `refugios`
  MODIFY `id_refugio` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `mascotas`
--
ALTER TABLE `mascotas`
  ADD CONSTRAINT `mascotas_refugios` FOREIGN KEY (`fk_direccion`) REFERENCES `refugios` (`id_refugio`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
