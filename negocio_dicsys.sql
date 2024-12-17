SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `negocio_dicsys`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `imagen` varchar(255) DEFAULT 'https://www.fyc.com.co/wp-content/uploads/2020/07/no-hay-imagen-300x300.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `imagen`) VALUES
(1, 'Bebidas', 'https://http2.mlstatic.com/D_Q_NP_2X_620959-MLA77220407384_072024-G.webp'),
(2, 'Almacén', 'https://http2.mlstatic.com/D_Q_NP_2X_914863-MLA77220407310_072024-G.webp'),
(5, 'Mascotas', 'https://http2.mlstatic.com/D_Q_NP_2X_900767-MLA77434202631_072024-G.webp'),
(6, 'Limpieza', 'https://http2.mlstatic.com/D_Q_NP_2X_899055-MLA77220014692_072024-G.webp'),
(7, 'Bebés', 'https://http2.mlstatic.com/D_Q_NP_2X_630915-MLA77220033698_072024-G.webp'),
(8, 'Ofertas', 'https://http2.mlstatic.com/D_Q_NP_2X_985426-MLA80539097735_112024-G.webp');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `fecha_vencimiento` date DEFAULT NULL,
  `categoria` int(11) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `imagen` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `fecha_vencimiento`, `categoria`, `precio`, `stock`, `imagen`) VALUES
(1, 'Coca Cola 2,25L', '2025-03-12', 1, 3200.00, 25, 'https://http2.mlstatic.com/D_NQ_NP_2X_617991-MLA54054408366_022023-F.webp'),
(4, 'Coca Cola 1,5L', '2025-06-29', 1, 2199.00, 20, 'https://http2.mlstatic.com/D_NQ_NP_2X_708603-MLU79011749618_092024-F.webp'),
(6, 'Galletita Don Satur Bizcochos dulce 200 g', '2025-10-03', 2, 800.00, 12, 'https://http2.mlstatic.com/D_NQ_NP_2X_600218-MLA74780604663_022024-F.webp'),
(7, 'Cerveza Corona Porron 330ml X 24 Unidades', '2025-08-05', 1, 42271.00, 50, 'https://http2.mlstatic.com/D_NQ_NP_2X_775489-MLU72761381976_112023-F.webp'),
(8, 'Alfajor Rasta Chocolate Negro Caja X 18 Unidades', '2025-05-03', 2, 17200.00, 33, 'https://http2.mlstatic.com/D_NQ_NP_2X_632490-MLU79052741666_092024-F.webp'),
(9, 'Yerba Mate Canarias Tradicional 1 Kg', '2025-04-12', 2, 7655.00, 60, 'https://http2.mlstatic.com/D_NQ_NP_2X_648537-MLC51095281611_082022-F.webp'),
(15, 'Alimento Royal Canin Feline Health Nutrition Fit para gato adulto sabor mix en bolsa de 15 kg', '2026-01-01', 5, 112757.00, 85, 'https://http2.mlstatic.com/D_NQ_NP_2X_825034-MLU72754686982_112023-F.webp'),
(16, 'Old Prince Premium adultos todos los tamaños en bolsa de 23kg', '2026-01-02', 5, 41246.00, 83, 'https://http2.mlstatic.com/D_NQ_NP_2X_917021-MLU78228162017_082024-F.webp'),
(17, 'Aromatizante Perfumina Para Ropa Textil Saphirus', '2025-12-24', 6, 3240.00, 66, 'https://http2.mlstatic.com/D_NQ_NP_2X_885809-MLA71776897504_092023-F.webp'),
(18, 'Jabón Líquido Para Diluir Skip Bio-enzimas 500 Ml', '2025-10-14', 6, 6420.00, 74, 'https://http2.mlstatic.com/D_NQ_NP_2X_664386-MLU78540887791_082024-F.webp'),
(19, 'Autobrillo Express 5 Lt 8m Ceras P/pisos', '2025-10-13', 6, 18550.00, 45, 'https://http2.mlstatic.com/D_NQ_NP_2X_766606-MLA46453928022_062021-F.webp'),
(20, 'Servilletas De Mesa Papel Tissue 30x30 Cm Excelente 1000 Unidades', '2025-10-12', 6, 9157.00, 54, 'https://http2.mlstatic.com/D_NQ_NP_2X_705350-MLA73829625025_012024-F.webp'),
(21, 'Papel higiénico Higienol MAX simple 80 m pack de 4', '2025-10-11', 6, 3745.00, 33, 'https://http2.mlstatic.com/D_NQ_NP_2X_727017-MLU79028900801_092024-F.webp'),
(22, 'Porta Espirales Matamosquitos', '2025-10-10', 6, 3009.00, 78, 'https://http2.mlstatic.com/D_NQ_NP_2X_962773-MLU75152011919_032024-F.webp'),
(24, 'Pañales Pampers deluxe protection XXG x 54 unidades', '2027-09-06', 7, 25774.00, 112, 'https://http2.mlstatic.com/D_NQ_NP_2X_653159-MLU78228952487_082024-F.webp'),
(25, 'Champagne Francés Pommery Brut Royal 750ml', '2050-05-12', 1, 150800.00, 41, 'https://http2.mlstatic.com/D_NQ_NP_2X_816077-MLA49552514523_042022-F.webp'),
(26, 'Cerveza Heineken Rubia 330ml x24', '2033-11-11', 1, 45679.00, 47, 'https://http2.mlstatic.com/D_NQ_NP_2X_977330-MLU77413136510_072024-F.webp'),
(27, 'Licor Sheridan\'s 750cc Origen Irlanda Coffee Layered Liqueur Original', '2030-01-25', 1, 38898.00, 29, 'https://http2.mlstatic.com/D_NQ_NP_2X_644946-MLU77737319950_072024-F.webp'),
(28, 'Rutini Colección Caja Madera 6 Botellas Estuche', '2027-03-03', 1, 225661.00, 63, 'https://http2.mlstatic.com/D_NQ_NP_2X_804218-MLA43635257042_092020-F.webp'),
(29, 'Cerveza Sol Liviana 330ml Porron X24', '2029-02-02', 1, 34408.00, 78, 'https://http2.mlstatic.com/D_NQ_NP_2X_932696-MLA80306646683_102024-F.webp'),
(30, 'Whisky Johnnie Walker Red Label 1L', '2060-01-29', 1, 37506.00, 33, 'https://http2.mlstatic.com/D_NQ_NP_2X_681605-MLU77598274967_072024-F.webp');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categorias` (`categoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `categorias` FOREIGN KEY (`categoria`) REFERENCES `categorias` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`categoria`) REFERENCES `categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
