-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-07-2018 a las 19:15:17
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ocdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `competencias`
--

CREATE TABLE `competencias` (
  `id_comp` int(11) NOT NULL,
  `id_curso_comp` int(11) NOT NULL,
  `competencia` varchar(300) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `competencias`
--

INSERT INTO `competencias` (`id_comp`, `id_curso_comp`, `competencia`) VALUES
(1, 1, 'Generar conocimientos y principalmente aptitudes de manejo y exploración de datos.'),
(2, 1, 'Adquirir conocimientos prácticos sobre el uso de herramientas en Excel que faciliten el procesamiento de datos.'),
(3, 2, 'Favorecer el conocimiento de la sexualidad, ofreciendo información necesaria sobre la función, dimensión anatómica, fisiológica, psicológica y social del desarrollo de la sexualidad. '),
(4, 2, 'Reflexionar sobre las relaciones afectivas desde el significado de amor, pareja y placer.'),
(5, 2, 'Educar para la sexualidad en el respeto de la dignidad inherente a todo ser humano, que se manifiesta en la promoción de sus derechos humanos, sexuales y reproductivos.'),
(6, 2, 'Conocer los principales métodos de planificación familiar, sus usos, contraindicaciones, efectos adversos y la perspectiva ética de su funcionamiento.'),
(7, 3, 'Diferencia las principales características de la uva usada , el proceso de producción y los diferentes tipos de vino.'),
(8, 3, 'Conoce el proceso general de elaboración de vinos.'),
(9, 3, 'Conoce las principales operaciones para elaborar un vino.'),
(10, 3, 'Conoce los principales insumos y aditivos usados en el proceso de elaboración de cerveza.'),
(11, 3, 'Conoce los fundamentos más importantes para estabilizar una cerveza.'),
(12, 3, 'Conoce y aplica el proceso de elaboración de cerveza a nivel casero'),
(13, 3, 'El participante al finalizar el curso comprende y aplica los procesos y operaciones básicas para la elaboración de bebidas fermentadas.'),
(14, 4, 'Orientación a la mejora continua.'),
(15, 4, 'Organización y planificación del tiempo.'),
(16, 4, 'Pensamiento crítico y reflexivo.'),
(17, 5, 'Reconoce los tipos de contaminantes atmosféricos.'),
(18, 5, 'Distingue los contaminantes primarios y secundarios.'),
(19, 6, 'Reconocer los fundamentos del Desarrollo Comunitario.'),
(20, 6, 'Diseñar las herramientas necesarias para aplicarlas y obtener información en comunidades rurales.'),
(21, 6, 'Plantear propuestas de Desarrollo Comunitario.'),
(22, 7, 'Conoce los principios e indicadores de la Seguridad Alimentaria y Nutricional.'),
(23, 7, 'Asocia los diferentes alimentos con su aporte nutricional, componentes beneficiosos y características principales.'),
(24, 7, 'Aplica los principios básicos de la inocuidad en la elección y preparación de alimento.'),
(25, 7, 'Conoce las potencialidades nutricionales de los alimentos en la dieta.'),
(26, 7, 'Interpreta las etiquetas de los alimentos procesados.'),
(27, 8, 'Conoce la contribución de la agricultura urbana al mejoramiento de la economía y la seguridad alimentaria. '),
(28, 8, 'Describe generalidades de la horticultura y los diferentes tipos de huertos que se pueda utilizar. '),
(29, 8, 'Identifica los elementos básicos que constituyen un sustrato orgánico y la importancia de los mismos para la producción de las hortalizas.'),
(30, 8, 'Comprende los principios del manejo de la siembra de las hortalizas.'),
(31, 8, 'Identifica las diferentes técnicas para el manejo eficiente del cultivo de las plantas de hortalizas.'),
(32, 8, 'Identifica la importancia de alternar y asociar los cultivos que establecen y sus beneficios para la composición del agroecosistema. '),
(33, 9, 'Entender los conceptos básicos y principios de la biorremediación.'),
(34, 9, 'Conocer las características de las matrices principales suceptibles a biorremediación: suelo y agua.'),
(35, 9, 'Identificar los contaminantes susceptibles de biorremediación, sus características y sus fuentes.'),
(36, 9, 'Reconocer las diferentes técnicas de biorremediación in situ y ex situ.'),
(37, 9, 'Seleccionar las técnicas de biorremediación adecuada para cada contaminantes y matriz.'),
(38, 9, 'Conocer las perspectivas futuras de mejoras a procesos de biorremediación.'),
(39, 10, 'Orientación a la mejora continua '),
(40, 10, 'Organización y planificación de tiempos y recursos '),
(41, 10, 'Pensamiento crítico y reflexivo '),
(42, 11, 'Identificar los fundamentos para el manejo sostenible del suelo. '),
(43, 11, 'Relacionar el efecto de la vegetación sobre las propiedades edáficas y viceversa. '),
(44, 11, 'Identificar las principales causas, efectos y posibles soluciones del cambio climático, desertificación y erosión de suelo.'),
(45, 12, 'Administrar y evaluar sistemas de manejo y protección para fomentar el uso sostenible de los recursos naturales.'),
(46, 12, 'Analizar e integrar datos ambientales para desarrollar sistemas de manejo de los recursos naturales.'),
(47, 12, 'Describir la problemática ambiental global y local como fundamento para proponer alternativas de manejo y conservación de los recursos ambientales.'),
(48, 13, 'Aplica principios y conceptos de fundamentos de programación en la resolución de problemas computacionales. '),
(49, 13, 'Determina los tipos de datos que mejor se ajusten para la resolución de problemas mediante algoritmos.'),
(50, 13, 'Reconoce las fases del ciclo de desarrollo de software que se deben aplicar en el construcción de un programa.'),
(51, 13, 'Elabora algoritmos que permitan la resolución de problemas utilizando estructuras de selección y control.'),
(52, 13, 'Utilizar pruebas de escritorio que permitan validar la ejecución de un algoritmo.'),
(53, 13, 'Conoce la simbología de los diagramas de flujo que permitan ser empleados en la resolución de problemas.'),
(54, 13, 'Transforma las soluciones generadas mediante algoritmos y miniespecificaciones a un lenguaje de programación de alto nivel.'),
(55, 14, 'Comprende el conflicto y su dinámica.'),
(56, 14, 'Identifica el protocolo y tratamiento de la gestión del conflicto.'),
(57, 14, 'Identifica los métodos alternativos de solución de conflictos.'),
(58, 15, 'Conoce elementos de la producción audiovisual.'),
(59, 15, 'Conoce el lenguaje audiovisual.'),
(60, 15, 'Desarrolla habilidades para construir historias en formato audiovisual.'),
(61, 16, 'El alumno comprenderá los conceptos básicos relacionados con el consumo de sustancias tanto desde la perspectiva de las sustancias como del consumidor.'),
(62, 16, 'El alumno diferenciará los procesos farmacodinámicos y farmacocinéticos de las principales sustancias (drogas).'),
(63, 16, 'El alumno analizará los factores protectores y de riesgo asociados al consumo de sustancias.'),
(64, 16, 'El alumno será capaz de auto identificar sus recursos personales que le protegerán hacia el consumo de sustancias.'),
(65, 16, 'El estudiante comprenderá los principales instrumentos para identificación del nivel de consumo de sustancias.'),
(66, 16, 'El estudiante conocerá la normativa nacional que se aplica en relación al consumo de sustancias.'),
(67, 17, 'Conoce las dimensiones de las competencias mediáticas y las TIC.'),
(68, 17, 'Aplica las herramientas digitales en diferentes contextos.'),
(69, 17, 'Comprende el funcionamiento de las principales redes sociales digitales.'),
(70, 18, 'Conocer y entender la teoría evolutiva.'),
(71, 18, 'Explicar los mecanismos micros y macro evolutivos.'),
(72, 18, 'Justificar la existencia de los seres vivos como resultado de un proceso evolutivo.'),
(73, 18, 'Avalar la evolución como el concepto unificador de la Biología.'),
(74, 19, 'Conoce el campo de estudio de la Microbiología, sus inicios y la clasificación de los principales grupos de microorganismos.'),
(75, 19, 'Analiza algunas técnicas básicas del cultivo de microorganismos a nivel de laboratorio y las normas de seguridad.'),
(76, 19, 'Comprende el campo de estudio de la Microbiología Ambiental.'),
(77, 19, 'Analiza algunos proyectos desarrollados o que se encuentra en curso sobre las posibles aplicaciones de los microorganismos en el campo ambiental.'),
(78, 19, 'Comprende el campo de estudio de la Microbiología Agrícola'),
(79, 19, 'Analiza algunos proyectos desarrollados o que se encuentra en curso sobre las posibles aplicaciones de los microorganismos en el campo agrícola.'),
(80, 20, 'Desarrolla la actitud y capacidad emprendedora como agente de cambio.'),
(81, 20, 'Identifica nuevas oportunidades con base en un diagnóstico de su entorno.'),
(82, 20, 'Propone ideas innovadoras que responden a necesidades y desafíos de orden social.'),
(83, 21, 'Conocer la realidad de nuestro entorno y como interactúan los agentes económicos.'),
(84, 21, 'Comprender la dinámica de mercado: comportamiento del consumidor y del productor en los diferentes bienes y servicios.'),
(85, 21, 'Analizar la economía familiar asignando los recursos de una manera eficiente.'),
(86, 22, 'Capacidad para la obtención y tratamiento de la información.'),
(87, 22, 'Capacidad para describir y sintetizar la información a través de gráficos e indicadores estadísticos.'),
(88, 22, 'Capacidad para analizar, e interpretar resultados par una adecuada toma de decisiones.'),
(89, 23, 'Identificar y comprender, desde el humanismo de Cristo, los principales problemas antropológicos que afectan el desarrollo de la existencia humana y de que la propuesta de Cristo al entendimiento y vivencia de estos problemas, le aporta al hombre su máxima dignidad: el hombre ha sido creado a imagen'),
(90, 23, 'Entender, desde el humanismo de Cristo, que la verdad revelada orienta la formación de la persona humana en sus diversos ámbitos, tales como el familiar, el educativo, el académico y el social.'),
(91, 23, 'Comprender el modelo genético presentado por Fernando Rielo y ser capaz de percibir la novedad que representa.'),
(92, 24, 'Describir conjuntos de datos.'),
(93, 24, 'Realizar inferencias sobre conjuntos de datos.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenido`
--

CREATE TABLE `contenido` (
  `id_cont` int(11) NOT NULL,
  `id_curso_cont` int(11) NOT NULL,
  `contenido` varchar(300) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `contenido`
--

INSERT INTO `contenido` (`id_cont`, `id_curso_cont`, `contenido`) VALUES
(1, 1, 'Estructura de los datos y metadata.'),
(2, 1, 'Generación de variables.'),
(3, 1, 'Herramientas de organización y manejo.'),
(4, 1, 'Manipulación de datos.'),
(5, 1, 'Representación gráfica.'),
(6, 1, 'Uso de Excel para graficar.'),
(7, 2, 'Sexualidad.'),
(8, 2, 'Diversidad sexual.'),
(9, 2, 'Derechos sexuales y reproductivos.'),
(10, 2, 'El cuerpo y los órganos sexuales reproductivos.'),
(11, 2, 'Tecnología anticonceptiva.'),
(12, 2, 'Enfermedades de transmisión sexual.'),
(13, 3, 'El vino, conceptos y clasificación.'),
(14, 3, 'Elaboración de vino, proceso general de producción (Parte I).'),
(15, 3, 'Elaboración de vino, proceso general de producción (Parte II).'),
(16, 3, 'Elaboración de cerveza (Fundamentos, parte I).'),
(17, 3, 'Elaboración de cerveza (Fundamentos, parte II).'),
(18, 3, 'Elaboración artesanal de cerveza.'),
(19, 4, 'Introducción al estudio sobre la historia del uso general de drogas vegetales.'),
(20, 4, 'Plantas pueblos y continentes.'),
(21, 4, 'Historia del uso de drogas vegetales.'),
(22, 4, 'Uso de plantas en América Precolombina.'),
(23, 4, 'Mitos magia y sanación en poblaciones andinas de América (Parte 1)'),
(24, 4, 'Mitos magia y sanación en poblaciones andinas de América (Parte 2)'),
(25, 5, 'Contaminación del aire.'),
(26, 5, 'Contaminación del agua.'),
(27, 5, 'Contaminación del suelo.'),
(28, 5, 'Contaminación acústica.'),
(29, 5, 'Contaminación por residuos sólidos.'),
(30, 5, 'Calentamiento global.'),
(31, 6, 'Fundamentos del desarrollo comunitario.'),
(32, 6, 'Extensión rural y extensionista.'),
(33, 6, 'Diagnóstico, Seguimiento y Evaluación Participativa.'),
(34, 6, 'Estudio de base participativo.'),
(35, 6, 'Herramientas (parte 1).'),
(36, 6, 'Herramientas (parte 2).'),
(37, 7, 'Soberanía y Seguridad Alimentaria.'),
(38, 7, 'Alimentos.'),
(39, 7, 'Otros tipos de alimentos.'),
(40, 7, 'Inocuidad alimentaria.'),
(41, 7, 'Alimentación Saludable.'),
(42, 7, 'Etiquetado de los alimentos.'),
(43, 8, 'Conceptos básicos y la importancia de la agricultura familiar.'),
(44, 8, '¿Que es un huerto familiar?'),
(45, 8, 'Preparación de abonos y sustratos.'),
(46, 8, 'Propagación de hortalizas.'),
(47, 8, 'Labores culturales de las plantas hortícolas'),
(48, 8, 'Distribución, Asociación y rotación de cultivos de hortalizas'),
(49, 9, 'Principios de Biorremediación.'),
(50, 9, 'Contaminantes susceptibles a la biorremediación.'),
(51, 9, 'Técnicas de biorremediación in situ 1.'),
(52, 9, 'Técnicas de biorremediación in situ 2.'),
(53, 9, 'Técnicas de biorremediación ex situ.'),
(54, 9, 'Perspectivas futuras para la biorremediación'),
(55, 10, 'Introducción al Sistema de Producción Toyota (TPS)'),
(56, 10, 'Bases del TPS (1).'),
(57, 10, 'Bases del TPS (2).'),
(58, 10, 'Pilares del TPS.'),
(59, 10, 'Corazón del TPS.'),
(60, 10, 'Tejado del TPS.'),
(61, 11, 'Fundamentos del manejo del recurso suelo.'),
(62, 11, 'Suelos de montaña y agricultura.'),
(63, 11, 'Calidad de los suelos.'),
(64, 11, 'Cambio climático.'),
(65, 11, 'Desertificación y erosión del suelo.'),
(66, 11, 'Conservación de los suelos.'),
(67, 12, 'Introducción a la economía de recursos naturales.'),
(68, 12, 'La tragedia de los comunes.'),
(69, 12, 'Economía ambiental.'),
(70, 12, 'Economía ecológica.'),
(71, 12, 'Economía política y economía humana.'),
(72, 12, 'Teoría del decrecimiento.'),
(73, 13, 'Introducción a la lógica de la programación.'),
(74, 13, 'Naturaleza de los datos.'),
(75, 13, 'Conceptos y ejemplos de algoritmos.'),
(76, 13, 'Miniespecificaciones - estructuras de decisión y bucles.'),
(77, 13, 'Uso de diagramas de flujo.'),
(78, 13, 'Desarrollo de problemas de programación.'),
(79, 14, 'El conflicto'),
(80, 14, 'Negociación (parte 1)'),
(81, 14, 'Negociación (parte 2)'),
(82, 14, 'Mediación (parte 1)'),
(83, 14, 'Mediación (parte 2)'),
(84, 14, 'Arbitraje'),
(85, 15, '¿Qué es la producción audiovisual?'),
(86, 15, 'Equipo de producción'),
(87, 15, 'El lenguaje audiovisual'),
(88, 15, 'El proceso de producción: la pre-producción'),
(89, 15, 'Producción, equipo técnico, rodaje'),
(90, 15, 'Postproducción'),
(91, 16, 'Conceptos Básicos'),
(92, 16, 'Farmacocinética y Farmacodinámica de las drogas.'),
(93, 16, 'Prevención del consumo de drogas: Factores de riesgo y protección.'),
(94, 16, 'Recursos personales protectores ante el consumo.'),
(95, 16, 'Evaluación del consumo de sustancias y tratamiento en adiciones.'),
(96, 16, 'Legislación y drogas en Ecuador.'),
(97, 17, 'Las dimensiones de las competencias mediáticas.'),
(98, 17, 'Un vistazo a las TIC.'),
(99, 17, 'Uso de Redes Sociales.'),
(100, 17, 'Herramientas tecnológicas y su utilidad.'),
(101, 17, 'Herramientas didácticas para crear contenidos digitales.'),
(102, 17, 'Tendencias en las TIC: conexión en todas partes y en todo momento.'),
(103, 18, 'Historia de la teoría evolutiva.'),
(104, 18, 'Bases genéticas de la evolución.'),
(105, 18, 'Fuerzas evolutivas.'),
(106, 18, 'Selección Natural vs. Selección sexual. Evolución del sexo.'),
(107, 18, 'Procesos macroevolutivos.'),
(108, 18, 'Conceptos generales de Filogenética.'),
(109, 19, 'Microbiología: Generalidades.'),
(110, 19, 'Técnicas de Cultivo de Microorganismos.'),
(111, 19, 'Microbiología Agrícola parte I.'),
(112, 19, 'Microbiología Agrícola parte II.'),
(113, 19, 'Microbiología Ambiental parte I.'),
(114, 19, 'Microbiología Ambiental parte II.'),
(115, 20, 'Entorno emprendedor.'),
(116, 20, 'Emprendedor.'),
(117, 20, 'Diagnóstico del entorno.'),
(118, 20, 'Innovación.'),
(119, 20, 'Ideas creativas e innovadoras.'),
(120, 20, 'Selección de ideas.'),
(121, 21, 'Cómo funciona la economía.'),
(122, 21, 'Modelos económicos: Flujo circular de la economía.'),
(123, 21, 'Las fuerzas del mercado: La demanda y oferta (parte I).'),
(124, 21, 'Las fuerzas del mercado: La demanda y oferta (parteII).'),
(125, 21, 'Economía familiar: presupuesto familiar - gastos - ingresos - ahorro.'),
(126, 21, 'Cómo y porqué crece o decrece un país.'),
(127, 22, 'Preparación de fuentes de información primaria (parte 1).'),
(128, 22, 'Preparación de fuentes de información primaria (parte 2).'),
(129, 22, 'Métodos y tipos de muestreo y calculo de la muestra (parte 1).'),
(130, 22, 'Métodos y tipos de muestreo y calculo de la muestra (parte 2).'),
(131, 22, 'Plantillas y procesamiento de la información (parte 1)'),
(132, 22, 'Plantillas y procesamiento de la información (parte 2)'),
(133, 23, 'El origen del hombre: creación y evolución.'),
(134, 23, 'El hombre es más que cuerpo y más que psique.'),
(135, 23, 'La interioridad humana: la persona.'),
(136, 23, 'La libertad.'),
(137, 23, 'El dolor y la muerte. La vida y su sentido: la plenitud humana.'),
(138, 23, 'El humanismo de Cristo.'),
(139, 1, 'Principios de una buena gráfica.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `id_curso` int(11) NOT NULL,
  `codigo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(1300) COLLATE utf8_unicode_ci NOT NULL,
  `pre_requisito` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `edicion` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `oferta` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tematica` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_inscripcion` date NOT NULL,
  `fecha_inicio` date NOT NULL,
  `esfuerzo_est` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `duracion` int(2) NOT NULL,
  `link` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `institucion` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `archivado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`id_curso`, `codigo`, `nombre`, `descripcion`, `pre_requisito`, `edicion`, `oferta`, `tematica`, `fecha_inscripcion`, `fecha_inicio`, `esfuerzo_est`, `duracion`, `link`, `institucion`, `archivado`) VALUES
(1, 'EADM-Ed3', 'Manejo y Exploración de Datos', 'El presente curso se realizará de una forma teórica-práctica en la cual se muestre la importancia del manejo de los datos y los procedimientos específicos para desarrollar algunas acciones específicas del manejo y exploración de datos con Excel. Durante el proceso del curso se propondrá varios ejercicios para procesar y analizar datos. Los ejercicios que se desarrollaran durante el curso tienen por objetivo mostrar como debe organizar los datos y como generar un procedimiento para revisar y graficar los datos. Al final del curso podrá ver como los datos se convierten en información.', 'Ninguno', '3', 'abril 2018', 'Manejo de Datos', '2018-03-05', '2018-04-09', '6', 6, 'http://opencampus.utpl.edu.ec/courses/course-v1:UTPL+EADM4+2018_2/about', 'UTPL', 0),
(2, 'SARH-Ed2', 'Salud Sexual y reproductiva', 'La sexualidad es natural al ser humano, por esta razón vivirla de forma enriquecedora y feliz comprendiendo sus dimensiones, resulta ser un factor fundamental para mejorar la calidad de vida, la salud y el bienestar. Sus características abarcan procesos que van desde el conocimiento de sí mismo y de los demás, hasta el campo de las relaciones interpersonales.', 'Ninguno', '2', 'abril 2018', 'Sexualidad', '2018-03-06', '2018-04-10', '10', 6, 'http://opencampus.utpl.edu.ec/courses/course-v1:UTPL+SARH3+2018_2/about', 'UTPL', 0),
(3, 'FERBEV-Ed6', 'Bebidas alcoholicas fermentadas', 'Este curso tiene como objetivo fundamental brindar al participante conocimientos básicos sobre el potencial biotecnológico de los microorganismos, en especial levaduras y su utilización en la obtención de bebidas alcohólicas fermentadas como el vino y la cerveza', 'Ninguno', '6', 'abril 2018', 'Bebidas alcohólicas ', '2018-03-07', '2018-04-11', '5', 6, 'http://opencampus.utpl.edu.ec/courses/course-v1:UTPL+FERBEV7+2018_2/about', 'UTPL', 0),
(4, 'AKOMP-Ed8', 'Conocimiento ancestral de plantas medicinales', 'Más del 80% de la Población en África, América latina y Asia basan sus expectativas de salud en las medicinas tradicionales, las cuales de una u otra manera están directamente relacionadas con el uso ancestral de especies medicinales. Si entramos en una farmacia moderna no podemos sorprendernos que cerca del 25% de los fármacos galénicos disponibles derivan de las plantas medicinales utilizadas por las medicinas tradicionales de diferentes comunidades y países.\r\n\r\nLa mayoría de las plantas medicinales que son usadas para la elaboración de nuevos fármacos provienen del sur del planeta y han sido empleadas durante siglos en las sabanas africanas, en las selvas latinoamericanas y en las estepas Asiáticas. Sin ellas hoy día la medicina estaría probablemente privada de fármacos contra la malaria, de las poderosas anestesias para intervenciones quirúrgicas, de fármacos contra la hipertrofia de la próstata entre otras.\r\n\r\nSin embargo, a pesar de los impresionantes usos terapéuticos tradicionales de plantas medicinales poco o nada se sabe de las culturas y poblaciones que las usaron como recursos naturales terapéuticos, es así que el presente curso busca desarrollar el interés para estudiar la medicina indigenista desde un enfoque histórico, antropológico, social y cultural.', 'Ninguno', '8', 'abril 2018', 'Plantas medicinales', '2018-03-08', '2018-04-12', '5', 6, 'http://opencampus.utpl.edu.ec/courses/course-v1:UTPL+AKOMP-Ed8+2018_1/about', 'UTPL', 0),
(5, 'AIRPOLLUTION-Ed7', 'Contaminación atmosférica', 'La atmósfera es esencial para la vida por lo que sus alteraciones tienen una gran repercusión en elhombre y otros seres vivos y, en general, en todo el planeta. Una atmósfera contaminada puede dañar la salud de las personas y afectar a la vida de las plantas y los animales. Pero, además, los cambios que se producen en la composición química de la atmósfera pueden cambiar el clima, producir lluvia ácida o destruir el ozono, fenómenos todos ellos de una gran importancia global.', 'Ninguno', '7', 'abril 2018', 'Contaminación Atmosférica', '2018-03-09', '2018-04-13', '2', 6, 'http://opencampus.utpl.edu.ec/courses/course-v1:UTPL+AIRPOLLUTION8+2018_2/about', 'UTPL', 0),
(6, 'CD-Ed8', 'Desarrollo comunitario', 'El Desarrollo Comunitario y Gestión Social es una disciplina que parte del concepto de “ Comunidad” que es esencial para crear una sociedad más estable. La principal fortaleza de una comunidad es la gente, que a su vez está concentrada alrededor de núcleos familiares. Las comunidades no pueden desarrollarse solas, pues las posibilidades que el entorno ofrezca son determinantes. El desarrollo comunitario entonces debe considerar todos los ejes para lograr mejores impactos en el mejoramiento de vida de una comunidad y de esta forma lograr un desarrollo comunitario sostenible, donde se mantenga respeto de la cultura local, manejo adecuado en los recursos naturales, basándose en habilitar a las personas a “SER MÁS” y no “TENER MÁS”.\r\n\r\nAbordaremos interesantes temáticas como: El desarrollo comunitario y la extensión rural, Diagnóstico, Seguimiento y Evaluación Participativa (DSEP), estudio de base participativo y las herramientas más importantes de participación.', 'Ninguno', '8', 'abril 2018', 'Desarrollo comunitario', '2018-03-10', '2018-04-14', '5', 6, 'http://opencampus.utpl.edu.ec/courses/course-v1:UTPL+CD9+2018_2/about', 'UTPL', 0),
(7, 'EFHE-Ed8', 'Educación para una alimentación saludable', 'El objetivo del curso es responder al compromiso adquirido por nuestro país ante organismos internacionales y regionales de educar a la población como una de las acciones para mejorar la calidad de vida y disminuir las enfermedades relacionadas con la mala alimentación.\r\n\r\nEn el presente curso revisaremos los principios basicos de una alimentación saludable, los riesgo que implica para la salud el consumo de alimentos con altos contenidos de nutrientes deshabilitantes, procesados y/o conservados en condiciones no higiénicas.', 'Ninguno', '8', 'abril 2018', 'Alimentacion saludable', '2018-03-11', '2018-04-15', '5', 6, 'http://opencampus.utpl.edu.ec/courses/course-v1:UTPL+EFHE9+2018_2/about', 'UTPL', 0),
(8, 'HG-Ed8', 'Huertos familiares', 'La necesidad de satisfacer la demanda de alimentos sanos para una población creciente, así como el grave deterioro del suelo son problemas que en el plano nacional y mundial es indispensable afrontar.\r\n\r\nEl presente curso tiene como objetivo principal brindar conocimientos básicos para el manejo de un huerto familiar, como alternativa para responder a la seguridad y soberanía alimentaria.\r\n\r\nSe abordaran seis temáticas de fácil aplicación que le permitirán al estudiante cultivar en pequeñas superficies y de forma manual e intensiva, un huerto con técnicas sustentables y amigables con el medio ambiente.', 'Interés para fomentar la agricultura familiar', '8', 'abril 2018', 'Huertos familiares', '2018-03-12', '2018-04-16', '8', 6, 'http://opencampus.utpl.edu.ec/courses/course-v1:UTPL+HG9+2018_2/about', 'UTPL', 0),
(9, 'INTRBIORREM-Ed7', 'Introducción a la Biorremediación', 'El propósito fundamental del curso es dar a conocer los conceptos y principios básicos de la biorremediación. el fin es que el participante sea capaz de evaluar y elegir la mejor opción de biorremediación como estrategia viable para la limpieza de sitios contaminados.', 'Ninguno', '7', 'abril 2018', 'Biorremediación ', '2018-03-13', '2018-04-17', '20', 6, 'http://opencampus.utpl.edu.ec/courses/course-v1:UTPL+INTRBIORREM8+2018_2/about', 'UTPL', 0),
(10, 'JIT-Ed8', 'Justo a tiempo (Método Toyota)', 'El TPS (Sistema de Producción Toyota) genera pensamiento crítico y reflexivo acerca de cualquier bien que pueda producirse o servicio que pueda prestarse desde un enfoque de incremento a la productividad y reducción en los costos, de tal forma que sin importar el área de estudios de los profesionales en formación contarán con una herramienta que ayude a encontrar mejoras en los procesos que deban llevar a cabo tanto en la vida profesional como en la cotidiana.', 'Ninguno', '8', 'abril 2018', 'Justo a tiempo', '2018-03-14', '2018-04-18', '5', 6, 'http://opencampus.utpl.edu.ec/courses/course-v1:UTPL+JIT9+2018_2/about', 'UTPL', 0),
(11, 'SRM-Ed8', 'Manejo del recurso suelo', 'El suelo es un recurso no renovable, de vital importancia para la producción de alimentos, regulación del clima, suministro de combustibles, infraestructura, servicios ecosistémicos, hospeda ¼ de la biodiversidad de nuestro planeta, es la base de los productos farmacéuticos y genéticos, entre otros. De acuerdo a la FAO “cerca del 50% de los suelos de América Latina y el Caribe sufren deficiencia de nutrientes y la degradación afecta hasta la mitad del territorio de algunos países”. Por la importancia del suelo y por el rol holístico que cumple este recurso en la sociedad, se celebró en el 2015 como el año internacional de los suelos.\r\n\r\nAbordaremos interesantes temáticas como: Fundamentos del manejo del recurso suelo, suelos de montaña y agricultura, calidad de los suelos, cambio climático, desertificación y erosión del suelo y, conservación del suelo.\r\n\r\nAl concluir este MOOC, se pretende que usted conozca las múltiples funciones del suelo y desde ahora sea parte de los defensores de este valioso recurso.', 'Ninguno', '8', 'abril 2018', 'Manejo del Recurso Suelo', '2018-03-15', '2018-04-19', '5', 6, 'http://opencampus.utpl.edu.ec/courses/course-v1:UTPL+SRM9+2018_2/about', 'UTPL', 0),
(12, 'NRE-Ed3', 'Economía de Recursos Naturales', 'Este curso brindará la oportunidad para desarrollar conceptos claros sobre la economía tradicional y de mercado. Mostrará a su vez los conceptos del subsistema económico y su interrelación con el sistema ecológico y ambiental. Mostrará además las diferencias técnicas no solo ambientalistas filosóficas sino razones científicas para establecer equilibrios entre crecimiento y desarrollo.', 'Economía básica', '3', 'abril 2018', 'Economía de Recursos Naturales', '2018-03-16', '2018-04-20', '4', 6, 'http://opencampus.utpl.edu.ec/courses/course-v1:UTPL+NRE4+2018_2/about', 'UTPL', 0),
(13, 'LP-Ed3', 'Introducción a la programación', 'El curso Introducción a la Programación, enseña a los estudiantes cómo pensar algorítmicamente y resolver problemas de manera eficiente. Las unidades incluyen problemas y soluciones, naturaleza de datos, algoritmos, estructuras de decisión y bucles, diagramas de flujo y desarrollo de problemas de programación.', 'Ninguno', '3', 'abril 2018', 'Programación', '2018-03-17', '2018-04-21', '5', 6, 'http://opencampus.utpl.edu.ec/courses/course-v1:UTPL+LP4+2018_2/about', 'UTPL', 0),
(14, 'AMOCR-Ed2', 'Métodos alternativos de resolución de conflictos', 'Los métodos alternativos de resolución de conflictos tienen como fin el brindar herramientas necesarias al ser humano para que resuelva sus controversias en forma autocompositiva o heterocompositiva, mediante el desarrollo de destrezas conducentes a obtener un beneficio que favorezca a las partes, basado en el diálogo como un instrumento para la construcción de una cultura de paz.', 'Conocimientos básicos sobre teoría de conflictos.', '2', 'abril 2018', 'Resolución de conflictos', '2018-03-18', '2018-04-22', '5', 6, 'http://opencampus.utpl.edu.ec/courses/course-v1:UTPL+AMOCR3+2018_2/about', 'UTPL', 0),
(15, 'AUDIOVPRO-Ed2', 'Producción audiovisual', 'La producción audiovisual es el arte de crear productos utilizando la imagen y sonido, esta presente en varios ámbitos como la publicidad, la educación, la cultura, etc. La creación del audiovisual requiere revisar aspectos financieros, técnicos y logísticos. Los roles que asume cada miembro del equipo y las tareas se realizan en tres fases: pre producción, producción y post producción.', 'Conocimientos básicos de fotografía.', '2', 'abril 2018', 'Producción audiovisual', '2018-03-19', '2018-04-23', '3', 6, 'http://opencampus.utpl.edu.ec/courses/course-v1:UTPL+AUDIOVPRO3+2018_2/about', 'UTPL', 0),
(16, 'COOSU-Ed2', 'Prevención integral de consumo', 'El curso está dirigido a proporcionar una visión global sobre el consumo de sustancias (drogas). Actualmente, la adicción al consumo de alcohol y otras drogas constituye uno de los problemas sociales más importante a nivel mundial. En este MOOC ofrecemos una información y formación básica sobre la prevención del consumo de sustancias, resaltando la importancia de las medidas sociales y las herramientas educativas que se puedan utilizar en diferentes ámbitos.', 'Conocimientos básicos sobre biología, psicología, y realidad nacional.', '2', 'abril 2018', 'Consumo de sustancias', '2018-03-20', '2018-04-24', '10', 6, 'http://opencampus.utpl.edu.ec/courses/course-v1:UTPL+COOSU3+2018_2/about', 'UTPL', 0),
(17, 'UTIC-Ed3', 'Uso de las tecnologías de la información y la comunicación', 'Este MOOC resulte útil para el uso e implementación de las TIC en los estudiantes y todas las personas que estén interesadas en la producción de contenidos digitales, como herramienta importante para mejorar la educación y hacer de ella una actividad interactiva. El uso de las TIC brinda a los usuarios la capacidad de emitir información y no solo recibirla.\r\n\r\nEl objetivo de este curso, es enseñar el uso de las tecnologías de la información y comunicación, su aprovechamiento en el aula, herramientas y técnicas para la enseñanza- aprendizaje y la utilización en la vida diaria para mantenerse informados e informar a la sociedad.', 'Utilizar herramientas digitales básicas.', '3', 'abril 2018', '', '2018-03-21', '2018-04-25', '10', 6, 'http://opencampus.utpl.edu.ec/courses/course-v1:UTPL+UTIC4+2018_2/about', 'UTPL', 0),
(18, 'EVOLFUND', 'Fundamentos de Evolución', 'El curso es una introducción a la historia e importancia de la teoría evolutiva. Nos enfocaremos en comprender conceptos básicos de biología evolutiva y entender cómo actúan los principales mecanismos evolutivos', 'Biología General', '1', 'abril 2018', 'Evolución', '2018-03-22', '2018-04-26', '5', 6, 'http://opencampus.utpl.edu.ec/courses/course-v1:UTPL+EVOLFUND2+2018_2/about', 'UTPL', 0),
(19, 'EAAM', 'Microbiología Ambiental y Agrícola', 'La Microbiología es una rama de la Biología que se encarga del estudio de los microorganismos. Una parte importante son las aplicaciones de estos organismos para solucionar algunos problemas tanto en el campo ambiental (en la recuperación de ambientes degradados) como en el campo agrícola (en la producción de alimentos sanos).\r\n\r\nEn tiempos actuales existe la necesidad de mejorar la eficiencia de la producción de alimentos para satisfacer la demanda de la creciente población humana. Sin embargo, las posibles soluciones deben por otro lado venir de tecnologías de bajo costo y amigables con el medio ambiente. La utilización de microorganismos es una alternativa interesante que junto con otras tecnologías pueden ayudar a solucionar algunos problemas de contaminación y de eficiencia productiva.\r\n\r\nEl presente curso tiene como objetivo principal brindar conocimientos básicos acerca de la microbiología, el conocer algunas técnicas básicas que se pueden utilizar dentro del laboratorio para su aislamiento, multiplicación y formulación de estos para posibles aplicaciones en campo. Se abordarán seis temáticas de fácil aplicación que le permitirán al estudiante tener una visión actual de la microbiología y sus campos de aplicación.', 'Tener disponibilidad para estudiar, interés por la innovación', '1', 'abril 2018', 'Microbiología', '2018-03-23', '2018-04-27', '10', 6, 'http://opencampus.utpl.edu.ec/courses/course-v1:UTPL+EAAM2+2018_2/about', 'UTPL', 0),
(20, 'EAIG', 'Emprendimiento y generación de ideas', 'El curso denominado emprendimiento y generación de ideas se oferta con la finalidad de desarrollar conocimientos, identificar y potenciar oportunidades, para emprender e innovar en el ámbito personal, social, laboral o productivo.', 'Conocimiento general del entorno local y nacional.', '1', 'abril 2018', 'Emprendimiento', '2018-03-24', '2018-04-28', '10', 6, 'http://opencampus.utpl.edu.ec/courses/course-v1:UTPL+EAIG2+2018_2/about', 'UTPL', 0),
(21, 'EAUF', 'Economía a tu alcance', 'Se conocerá conceptos básicos acerca de la dinámica y funcionamiento de la economía de mercado y familiar, así como del país a nivel general. Empezando por los agentes que interactúan en la sociedad, en el ámbito personal o individual, familiar, empresarial, comercial, entre otros.', 'Ninguno', '1', 'abril 2018', 'Economía a tu alcance', '2018-03-25', '2018-04-29', '6', 6, 'http://opencampus.utpl.edu.ec/courses/course-v1:UTPL+EAUF2+2018_2/about', 'UTPL', 0),
(22, 'DBMAA', 'Manejo y análisis de bases de datos', 'El curso maneja las metodologías necesarias para obtener, transformar e interpretar la información, a través de la estadística. Los temas abordados giran en base a exploración de bases de datos, aplicación de métodos estadísticos para el análisis y evaluación de la información, además de generar, resumir e interpretar información a través gráficos y cuadros estadísticos.', 'Conocimientos básicos de matemática', '1', 'abril 2018', 'Base de Datos', '2018-03-26', '2018-04-30', '6', 6, 'http://opencampus.utpl.edu.ec/courses/course-v1:UTPL+DBMAA+2018_1/about', 'UTPL', 0),
(23, 'ANTRPY', 'Antropología Básica', '¿Qué es la persona? ¿Qué es la libertad? ¿Qué es el dolor? Este curso intentará abordar filosóficamente estas interrogantes y así ofrecer los fundamentos teóricos para el estudio de la persona humana en el acontecer de su existencia vital, desde el humanismo de Cristo.\r\n\r\nEn este sentido, este curso de Antropología Básica tiene como propósito fundamental proporcionar un conjunto amplio e integral de conocimientos para la comprensión de los diversos elementos que configuran al ser humano, su sentido como persona, así como su vivencia, a fin de dotar al alumno de una visión integral desde el humanismo de Cristo, acerca de su realidad, como personas llamadas a satisfacer su existencia en el marco de su vocación trascendente.\r\n\r\nAl terminar el curso, el alumno obtendrá una visión holística de los principales problemas de la antropología filosófica y dominará su terminología; identificará y analizará las diversas problemáticas en torno al entendimiento del ser humano en la actualidad; afrontará los problemas inherentes al desarrollo de la existencia humana con sentido crítico; y, comprenderá el modelo genético presentado por Fernando Rielo.', 'Ninguno', '1', 'abril 2018', 'Artes y Humanidades', '2018-03-27', '0000-00-00', '6', 8, 'http://opencampus.utpl.edu.ec/courses/course-v1:UTPL+ANTRPY2+2018_2/about', 'UTPL', 0),
(24, 'DCSFS', 'Ciencia datos: primeros pasos', 'En este curso vamos a ver cómo convertir datos en información y a utilizarla de una manera sencilla y práctica para obtener las mayores ventajas de ella. Se parte de los conceptos básicos de estadística y se estudian las técnicas descriptivas que permiten mostrar las características de un conjunto de datos y las técnicas inferenciales básicas que permiten obtener conclusiones para un conglomerado en base a los datos de una muestra.', 'Tener conocimientos de matemáticas básicas', '1', 'abril 2018', 'Estadística', '2018-03-28', '2018-06-04', '4', 6, 'http://opencampus.utpl.edu.ec/courses/course-v1:UTPL+DCSFS2+2018_2/about', 'UTPL', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `id_docente` int(11) NOT NULL,
  `nivel_acad` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `resumen` varchar(1100) COLLATE utf8_unicode_ci NOT NULL,
  `unidad_org` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`id_docente`, `nivel_acad`, `nombre`, `email`, `twitter`, `resumen`, `unidad_org`) VALUES
(1, 'PhD', 'Carlos Iván Espinosa', 'ciespinosa@utpl.edu.ec', '@civanespinosa', 'Mi nombre es Carlos Iván Espinosa soy biólogo de profesión y tengo un Doctorado en Ciencias. Durante los últimos años mi labor como investigador me ha permitido tener contacto con diferentes personas que usan datos; estudiantes, profesionales e investigadores. Esta experiencia de más de 10 años me ha permitido entender las principales limitantes del manejo de datos.', 'Departamento de ciencias biológicas'),
(2, 'Dr.', 'Víctor Vaca', 'vhvaca@utpl.edu.ec', '', 'Coordinador Actual de la Titulación de Medicina de la UTPL. Doctor en Medicina y Cirugía. Especialista en Ginecología y Obstetricia. Diplomado en Docencia en Áreas de la Salud. Docente Investigador a tiempo completo de la UTPL por 10 años (Ginecología, Embriología, Histología)) desde el 8 de noviembre del 2002 hasta el 05 de septiembre de 2012, y desde el 5 de enero del 2015 hasta la actualidad. Médico Ginecólogo del Centro Médico Keru-Dund de la ONG Kairos, Rufisque –Senegal (África), durante 3 años. Director académico de la Escuela de Medicina de la Universidad Técnica Particular de Loja (UTPL). Director del departamento de ginecología y obstetricia del Hospital Universitario de la (UTPL). Director del departamento de morfofuncional de la Escuela de Medicina de la UTPL. Participación como conferencista en varios cursos, talleres y jornadas, referentes a la carrera. Dirección de tesis de fin de carrera – pregrado. Participación en diversos, congresos, talleres y jornadas de actualización médica.', 'Departamento de ciencias de la salud'),
(3, 'PhD', 'Chabaco Armijos', 'cparmijos@utpl.edu.ec', '', 'Doctorado en: Ecología experimental y geobotánica. Universidad de Pavia-Italia (2013). Máster en: Tecnología para el aprovechamiento de recursos naturales no renovables. Universidad de Pavia-Italia (2006). Diplomado en \"Pedagogías innovadoras\" Universidad Técnica Particular de Loja (UTPL) y Pontificia Universidad Católica (UPC) sede Ibarra-Ecuador. Ingeniero en Industrias Agropecuarias de la UTPL. Docente investigador en la UTPL, 16 años de trabajo en el Departamento de Química y Ciencias exactas, ha dictado las materias de: Biotecnología, Tecnología de productos vegetales y alimentos, Ciencia y tecnología, Conocimiento ancestral de plantas medicinales.', 'Departamento de ciencias naturales'),
(4, 'Mgtr.', 'José Miguel Guamán', 'jmguaman@utpl.edu.ec', '', 'Máster en \"Gestión y Auditoría Medioambiental\" Universidad de Cádiz-España. Diplomado en \"Gestión Universitaria\" de la Universidad Técnica Particular de Loja-Ecuador. Experto Universitario en \"Requerimientos de Calidad para la Acreditación de Laboratorios de Análisis Químico\" de la Universidad Internacional de Andalucía España. Ingeniero en Industrias Agropecuarias por la Universidad Técnica Particular de Loja-Ecuador, Perito en Inglés por la Universidad Técnica Particular de Loja. Docente universitario en la UTPL en las asignaturas de: Química General, Análisis Químico, Auditorías ambientales, Evaluación de Impactos Ambientales, etc. Experiencia de 36 años de trabajo en la UTPL.', 'Sección de Ingeniería Ambiental, Departamento de Química y Ciencias Exactas.'),
(5, 'Mgtr.', 'Natacha Fierro', 'ndfierro@utpl.edu.ec', '', 'Máster en \"Gestión De La Formación: Planificación, Desarrollo y Evaluación de la Formación de Formadores\" Universidad de Sevilla-España, Médico Veterinario Zootecnista, Universidad Nacional de Loja, Experiencia de 6 años como Técnico Extensionista en el desarrollo de proyectos comunitarios, Fiscalizador de Proyectos Agropecuarios ( CAF-IICA- MBS), Actividades relacionadas como Docente Universitario desde el año 2013 ( UTPL) de las asignaturas: Tecnología Social, Desarrollo Comunitario y Gestión Social .', ''),
(6, 'Mgtr.', 'María del Cisne Guamán', 'mcguaman@utpl.edu.ec', '', 'Máster en \"Agroalimentación\", Universidad de Cádiz - España. Ingeniero Químico, Universidad Técnica Particular de Loja. Estudiante de Doctorado, en la Univesidad de Cádiz en Nanociencia y Tecnología de los Materiales Docente Universitario de las materias: Alimentos y Componentes Funcionales, Bromatología y Nutrición y Educación para una alimentación saludable. Experiencia en extracción y cuantificación de compuestos antioxidantes, tecnología de fluidos supercríticos y atomización.', ''),
(7, 'PhD', 'Jacqueline Rojas', 'jerojasx@utpl.edu.ec', '', 'Doctor en Gestión y Manejo de Recursos fitogenéticos, otorgado por la Universidad Politécnica de Madrid. Ingeniero Agrónomo, título obtenido en la Universidad Nacional de Loja, docente de las asignaturas de Fitopatología, Entomología y Manejo Integrado de Plagas y Huertos familiares, con once años de experiencia en docencia, en la carrera de Ingeniería Agropecuaria e Investigador del Departamento de Ciencias Biológicas.', ''),
(8, 'Ing.', 'Paulina Aguirre', 'piaguirre@utpl.edu.ec', '', '', ''),
(9, 'Ing.', 'José Miguel Fernández', 'jmfernandez@utpl.edu.ec', '', '', ''),
(10, 'PhD', 'Leticia Jimenez', 'lsjimenez@utpl.edu.ec', '', 'Doctorado y Diplomado en \"Manejo y Gestión de Recursos Fitogenéticos\" Universidad Politécnica de Madrid - España. Ingeniera Agrónoma de la Universidad Nacional de Loja, Docente universitario de la UTPL, de las materias de Edafología I, Edafología II, Manejo Sustentable del Suelo. Experiencia de 13 años de trabajo en las Titulaciones de Ingeniería Agropecuaria y Gestión Ambiental, docente investigador del Departamento de Ciencias Biológicas.', 'Departamento de Ciencias Biológicas'),
(11, 'PhD', 'Juan Manuel García', 'mgarcia@utpl.edu.ec', '', 'Doctor en Economía de Recursos Naturales y Desarrollo Sustentable, Universidad Nacional Autónomade México (UNAM), México. Magister en Gestión para el Desarrollo Sustentable, Universidad Católicade Temuco, Chile. Magister en Gestión de la Calidad Educativa, Universidad de Sevilla (Titulo propio,2011). Certificado Internacional en Diseño, Gerencia y Evaluación de Proyectos, Banco Interamericano de Desarrollo BID, Pontificia Universidad Católica de Quito, Ecuador. Economista por la Universidad Técnica Particular de Loja, Ecuador. Docente Universitario a nivel de pre-grado (proyectos, economía de recursos naturales, política económica), en posgrado (gerencia de proyectos, líneas de base, evaluación social y económica de proyectos, administración de recursos naturales), a nivel de posgrado de Ecología y Medio Ambiente y Diseño y Evaluación de Proyectos.', ''),
(12, 'Mgtr.', 'Rene Elizalde', 'rrelizalde@utpl.edu.ec', '@reroes', 'Máster Universitario en Ingeniería del Software para la Web - Universidad de Alcalá. Ingeniero en Sistemas - Universidad Nacional de Loja. Docente Investigador Sección Tecnologías Avanzadas de la Web.', 'Departamento de Ciencias de la Computación'),
(13, 'Mgtr.', 'María Beatriz Eguiguren', 'mbeguiguren@utpl.edu.ec', '@mabeeguiguren', 'Abogada, Doctora en jurisprudencia, Magíster en Derecho Civil y procesal civil, Candidata a doctora en Ciencias Sociales, Mediadora.', 'Departamento de Ciencias Jurídicas y Sociales'),
(14, 'PhD', 'Carlos Ortiz', 'ccortiz@utpl.edu.ec', '@cortizleon', 'Doctor en Comunicación y Periodismo. Director del MediaLab UTPL. He trabajado en varias producciones audiovisuales nacionales e internacionales.', 'Departamento de Ciencias de la Comunicación'),
(15, 'Mgtr.', 'Kruzkaya Ordóñez', 'kordonez@utpl.edu.ec', '@cortizleon', 'Magíster en Industrias Creativas. Ha trabajado en la producción de varios documentales y programas de Televisión.', 'Departamento de Ciencias de la Comunicación'),
(16, 'PhD', 'Silvia Vaca', 'slvaca@utpl.edu.ec', '@slvacag', 'Ph.D. en orientación para la carrera (UNED), Magister en desarrollo de la inteligencia (UTPL), Psicóloga clínica (UDA), Directora del Departamento de Psicología UTPL, lineas de investigación: consumo de sustancias, salud mental, desarrollo cognitivo y altas capacidades.', 'Departamento de Psicología'),
(17, 'PhD', 'Diana Rivera', 'derivera@utpl.edu.ec', '', 'Doctora en Comunicación y periodismo por la Universidad Santiago de Compostela, España. Directora del Área Sociohumanística de la Universidad Técnica Particular de Loja, Ecuador. Línea de investigación periodismo digital. Co-editora internacional de la revista científica Comunicar.\r\n\r\nHa participado en 5 proyectos de investigación financiados: “Historia de la comunicación de Ecuador. Prensa, radio, televisión, fotografía y medios digitales”, “Estudio del estado de la empresa periodística en Ecuador”, “Mapa de la comunicación del Ecuador”, “Análisis de la agenda setting de los medios de comunicación televisivos, impresos y digitales de Ecuador” y Competencias mediáticas audiovisuales. En 2012 fue seleccionada por UNESCO y FELAFACS como profesora para dictar el módulo Periodismo en línea/multimedia para los países de la Región Andina.', 'Departamento de Comunicación'),
(18, 'PhD', 'Isidro Marín', 'imarin1@utpl.edu.ec', '', 'Investigador de la Universidad Técnica Particular de Loja (UTPL). Su carrera investigadora está centrada principalmente en los consumos de drogas. Ha publicado diversos artículos científicos en revistas de impacto internacional centrados en consumos de drogas por parte de estudiantes universitarios.', 'Departamento de Comunicación'),
(19, 'Mgtr.', 'Claudia Rodríguez', 'cvrodriguezx@utpl.edu.ec', '', 'Máster en Investigación de la Comunicación por la Universidad de Navarra. Profesora de tiempo completo en la Universidad Técnica Particular de Loja en la asignatura Opinión Pública. Línea de investigación: comunicación y tecnologías.', 'Departamento de Comunicación'),
(20, 'Mgtr.', 'Mayra González', 'mpgonzales@utpl.edu.ec', '', 'Mayra Gonzales-Córdova es tutora del módulo de Introducción a la Cultura Digital de la Maestría de Comunicación y Cultura Digital, docente de la asignatura de Periodismo Ciudadano en la Modalidad Presencial y a Distancia de la Titulación de Comunicación Social, Universidad Técnica Particular de Loja (UTPL), desde el 2006. Máster en Investigación en Comunicación y Doctorando en Comunicación por la Universidad de Navarra- España.\r\n\r\nDesde el 2012 al 2014 trabajó en la Dirección de Comunicación. Desde el 2014 hasta la actualidad es Coordinadora de la Sección de Comunicación y Tecnologías. Participación en proyectos institucionales como: “Historia de la comunicación de Ecuador. Prensa, radio, televisión, fotografía y medios digitales”, “La narrativa en los blogs de Ecuador”, “Mapa de la comunicación de Ecuador”, en el programa de investigación “Historia y políticas de comunicación, usos y posibilidades del crowdfunding para la práctica del periodismo” y en el proyecto interno \"Fenómeno de El Niño\".', 'Departamento de Comunicación'),
(21, 'Lic.', 'Gianella Carrión Salinas', 'giane.ale.c@gmail.com', '', 'Técnica de Investigación del Departamento de Ciencias de la Comunicación de la Universidad Técnica Particular de Loja, 2016. Licenciada en Comunicación Social por la Universidad Técnica Particular de Loja.\r\n\r\nHa realizado cobertura periodística en medios institucionales de la UTPL: radio, prensa, televisión y cuentas institucionales en redes sociales durante un año y medio. Encargada de las cuentas de Relaciones Públicas de eventos nacionales e internacionales realizados en la UTPL durante seis meses.', 'Departamento de Comunicación'),
(22, 'PhD', 'Andrea Velázquez', 'avvelasquez@utpl.edu.ec', '', 'Profesora de Marketing y Publicidad de la Universidad Técnica Particular de Loja. Doctoranda en Comunicación e Industrias Creativas por la Universidad de Santiago de Compostela - España y Máster Universitario en Comunicación e Industrias Creativas por la Universidad La Misma. Diploma Superior en Gerencia Estratégica de Mercadeo, Diploma Superior en Comunicación Corporativa. Fue Gerente de Marketing de la Universidad Técnica Particular de Loja y Miembro de los equipos de Calidad de las titulaciones de Comunicación Social y Relaciones Públicas.', 'Departamento de Comunicación'),
(23, 'PhD', 'Mónica Guerra', 'maguerra36@utpl.edu.ec', '@monkymiau', 'Ph.D. en Biología con especialización Ecología, Evolución y Comportamiento de la Universidad de Texas en Austin (USA). Docente-investigadora en la Sección de Biología y Genética de la UTPL desde Abril de 2017. Líneas de investigación incluyen anfibios, bioacústica y evolución del comportamiento animal, para lo cual incorpora experimentos de campo con técnicas de genética molecular.', 'Departamento de Ciencias Biológicas'),
(24, 'PhD', 'Paúl Lojan', 'pdlojan@utpl.edu.ec', '', 'Doctor en Ciencias Agronómicas e Ingeniería Biológica, otorgado por la Universidad Católica de Lovaina de Bélgica. Ingeniero Agropecuario, título obtenido en la Universidad Técnica Particular de Loja, docente de las asignaturas de Biología General, Biología Celular y Microbiología. Experiencia de 6 años en el departamento de Ciencias Biológicas de la UTPL en el grupo de investigación: Microbial Systems Ecology and Evolution. Participación en proyectos de investigación nacionales e internacionales. Experiencia en investigación referente a la formulación y aplicación de microorganismos en la agricultura. Ha realizado varias publicaciones sobre el tema.', 'Departamento de Ciencias Administrativas'),
(25, 'Mgtr.', 'Diana Espinoza', 'dlespinoza@utpl.edu.ec', '@dianaespinoza', 'Estudiante de Doctorado en Administración y Dirección de Empresas de la Universidad Politécnica de Valencia - España. Máster en \"Economía Agroalimentaria y del Medio Ambiente\" - Universidad Politécnica de Valencia - España. Diplomado en \"Gerencia Estratégica de Mercadeo\" - Universidad Técnica Particular de Loja. Economista por la UTPL. Experiencia profesional y académica de 13 años, con conocimiento en las áreas de emprendimiento y gestión empresarial. Experiencia en asesoría y capacitación a emprendedores.', 'Departamento de Ciencias Administrativas'),
(26, 'Mgtr.', 'Glenda Ponce', 'geponce@utpl.edu.ec', '@gponce', 'Máster en \"Economía Agroalimentaria y del Medio Ambiente\" - Universidad Politécnica de Valencia - España. DEA en \"Gestión y Políticas de Comercio Internacional\" - Universidad Politécnica de Valencia. Magíster en Evaluación, Dirección y Gestión de la Calidad Universitaria por la Universidad de Sevilla – España. Ingeniera en Administración de Empresas por la Universidad Técnica Particular de Loja. Actualmente cursando el doctorado en Administración y Dirección de Empresas de la UPV. Docente de la UTPL en las asignaturas de Planificación y Desarrollo Organizacional, Valoración de Empresas, Canales de Distribución, Gestión de Negocios, Emprendimiento, en las carreras de Administración de Empresas y Contabilidad y Auditoria desde el 2005. Once años de experiencia en diversos departamentos de la UTPL incluído el departamento de Ciencias Empresariles. Las áreas de interés en la investigación corresponden a teoría de organizaciones, capacidad de aprendizaje de las organizaciones para la generación de valor.', 'Departamento de Ciencias Administrativas'),
(27, 'Econ.', 'Freddy Gómez', 'frgomez@utpl.edu.ec', '', 'Economista y Magister en Gestión y Desarrollo Social, docente del Departamento de Economía, Sección Teoría Económica de la Universidad Técnica Particular de Loja en la titulación de Economía y Maestría de Gestión de Proyectos. Parte del equipo de investigación Crecimiento Económico.', 'Departamento de Economía'),
(28, 'Mgtr.', 'Francisco Ochoa', 'ofochoa@utpl.edu.ec', '', '', ''),
(29, 'Mgtr.', 'Paulo Vélez León', 'pevelez@utpl.edu.ec', '', 'Soy Profesor en la Sección de Filosofía y Teología de la Universidad Técnica de Loja. Mi trabajo de investigación se centra principalmente en los fundamentos e historia de la metafísica, especialmente la contribución hispano medioeval a ella; así como, en los fundamentos de la teoría del conocimiento y la estética, en particular de la ontología del mundo del arte. Mi investigación en la UTPL explora sobre los fundamentos de la ontología y sus implicaciones en la estructura ontológica del mundo del arte.', 'Departamento de Ciencias de la Educación.'),
(30, 'PhD', 'Juan Carlos Torres', 'jctorres@utpl.edu.ec', '@jctorres72', 'Dr. en Sociedad de la Información y del Conocimiento, profesor de estadística básica y avanzada en la Universidad Técnica Particular de Loja, los campos de estudio son la aplicación de minería de datos y ciencia de datos a la transformación de la sociedad motivada por el uso de la tecnología.', 'Departamento de Ciencias de la Computación');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente_curso`
--

CREATE TABLE `docente_curso` (
  `id_curso` int(11) NOT NULL,
  `id_docente_curso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `docente_curso`
--

INSERT INTO `docente_curso` (`id_curso`, `id_docente_curso`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 3),
(5, 4),
(6, 5),
(7, 6),
(8, 7),
(9, 8),
(10, 9),
(11, 10),
(12, 11),
(13, 12),
(14, 13),
(15, 14),
(16, 16),
(17, 17),
(18, 23),
(19, 24),
(20, 25),
(20, 26),
(21, 27),
(22, 28),
(23, 29),
(24, 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inputs`
--

CREATE TABLE `inputs` (
  `id_input` int(11) NOT NULL,
  `nombre` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `usuario` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `texto` varchar(280) COLLATE utf8_unicode_ci NOT NULL,
  `source` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `raw_input` varchar(2500) COLLATE utf8_unicode_ci NOT NULL,
  `respuesta` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `intents`
--

CREATE TABLE `intents` (
  `id_intent` int(11) NOT NULL,
  `nombreIntent` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `descIntent` varchar(400) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `intents`
--

INSERT INTO `intents` (`id_intent`, `nombreIntent`, `descIntent`) VALUES
(1, 'quienPuedeTomarCurso', 'preguntas acerca de los cursos de Open Campus'),
(2, 'inscripcionOC', 'Preguntas sobre la inscripcion a Open Campus'),
(3, 'errorActivarCuenta', 'Errores al activar la cuenta de Open Campues'),
(4, 'ingresoCurso', 'Preguntas sobre el ingreso a los cursos de Open Campues'),
(5, 'ayudaTecnica', 'Preguntas sobre ayuda tecnica'),
(6, 'aprobarCurso', 'Preguntas sobre como aprobar un curso'),
(7, 'errorContrasena', 'Errores con respecto a la contraseña'),
(8, 'errorInicioSesion', 'Errores al incio de sesion en Open Campus'),
(9, 'errorCorreoActivacion', 'Errores al cambiar la contraseña'),
(10, 'configuracionCuenta', 'Preguntas sobre la configuracion de la cuenta'),
(11, 'usuarioNoDisponible', 'Errores en la inscripcion en Open campus'),
(12, 'errorAccesoCurso', 'Errores al acceder a un curso'),
(13, 'configuracionCuenta', 'Preguntas sobre la configuracion de la cuenta'),
(14, 'eliminarCuenta', 'Preguntas sober la eliminacion de cuentas'),
(15, 'cursoMetodologia', 'Preguntas sobre la metodologia de los cursos'),
(16, 'cantidadCursosTomables', 'Preguntas sobre la cantidad de cursos que se pueden tomar'),
(17, 'esfuerzoEstimado', 'Preguntas sobre el esfuerzo estimado'),
(18, 'costoCurso', 'Preguntas sobre el costo de los cursos'),
(19, 'ayudaCurso', 'Ayuda sobre las tematicas de los cursos'),
(20, 'tareaEntrega', 'Preguntas sobre la entrega de tareas'),
(21, 'cursoFechas', 'Preguntas sobres las fechas de los cursos'),
(22, 'cursoQueInicio', 'Preguntas sobre los cursos'),
(23, 'cursoPorError', 'Preguntas sobre matricularse en un curso por error'),
(24, 'cursoArchivado', 'Preguntas acerca de los cursos archivados'),
(25, 'cursoMOOCUTPL', 'Preguntas sobre los MOOC UTPL'),
(26, 'cursoProgreso', 'Preguntas sobre el progeso en los cursos'),
(27, 'cursoProfesores', 'Pregunta sobre como comunicarse con los profesores'),
(28, 'cursoProfesores', 'Pregunta sobre como comunicarse con los profesores'),
(29, 'cursoMetodologia', 'Preguntas sobre la metodologia de los cursos'),
(30, 'errorCurso', 'Errores sobre los cursos'),
(31, 'cursoEvaluaciones', 'Preguntas sobre las evaluaciones de los cursos'),
(32, 'cursoReto', 'Preguntas sobre los retos'),
(33, 'retoNotificacion', 'Preguntas sobre la notificacion de los retos'),
(34, 'retoCalificacion', 'Preguntas sobre la calificacion de los retos'),
(35, 'cursoEvaluaciones', 'Preguntas sobre las evaluaciones de los cursos'),
(36, 'horaOpenCampus', 'Preguntas sobre el sistema horario de Open Campues'),
(37, 'certificadoCurso', 'Preguntas sobre los certificados del los cursos'),
(38, 'certificadoCosto', 'Preguntas sobre los costos de los cursos'),
(39, 'certificadoEntrega', 'Preguntas sobre la entrega de los certificados'),
(40, 'certificadoError', 'Errores en los ceritifacados'),
(41, 'certificadoCurso', 'Preguntas sobre los certificados del los cursos'),
(42, 'cursosValidacion', 'Preguntas sobre la validacion de los cursos en la UTPL'),
(43, 'queEsOpenCampus', 'Preguntas sobre que es la plataforma open campus'),
(44, 'funcionesBot', 'Describe las funciones que puede hacer el bot'),
(45, 'cantidadCursos', 'Describe donde encontrar los cursos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `id_pregunta` int(11) NOT NULL,
  `id_preg_intent` int(11) NOT NULL,
  `pregunta` varchar(400) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id_pregunta`, `id_preg_intent`, `pregunta`) VALUES
(1, 1, '¿Quién puede tomar un curso, qué necesito?'),
(2, 1, '¿Cómo puedo tomar un curso?'),
(3, 1, '¿Qué necesito para un curso?'),
(4, 2, '¿Cómo puedo inscribirme?'),
(5, 2, '¿Cómo me inscribo a un curso?'),
(6, 2, '¿Cómo me matriculo a un curso?'),
(7, 2, '¿Cómo me matriculo?'),
(8, 3, '¿Por qué no recibo el correo para activar mi cuenta?'),
(9, 3, 'No recibo el correo de activacion'),
(10, 3, 'No me llega el correo de activacion'),
(11, 3, 'No encuentro el correo de activacion'),
(12, 4, '¿Cómo ingreso al curso en el que me inscribí?'),
(13, 4, '¿Cómo ingreso a los cursos?'),
(14, 4, '¿Cómo ingreso a un curso?'),
(15, 5, '¿Qué hago si necesito ayuda técnica?'),
(16, 5, 'Necesito ayuda tecnica'),
(17, 6, '¿Cómo sabré que el curso está aprobado?'),
(18, 6, '¿Cómo aprobar un curso?'),
(19, 7, '¿Qué debo hacer si no recuerdo mi contraseña?'),
(20, 7, 'No recuerdo mi contraseña'),
(21, 7, 'Olvide mi contraseña'),
(22, 8, '¿Qué hago si tengo dificultades en el inicio de sesión (contraseña/correo electrónico incorrecto)?'),
(23, 8, 'No puedo ingresar al sistema, correo o contraseña incorrecto'),
(24, 9, '¿Por qué no recibí el correo para cambiar mi contraseña?'),
(25, 9, 'No me llega el correo para cambiar mi contraseña'),
(26, 10, '¿Cómo se modifica la configuración de mi cuenta?'),
(27, 10, 'Como cambio la configuracion de mi cuenta'),
(28, 11, '¿Qué puedo hacer si el nombre de usuario (user name) que quiero utilizar no está disponible?'),
(29, 11, 'Mi nombre de usuario no esta disponible'),
(30, 12, '¿Qué hago si tengo dificultades técnicas en el registro o acceso al curso?'),
(31, 12, 'Tengo dificultades al registrarme en un curso'),
(32, 13, '¿Cómo hago para cambiar mi correo electrónico registrado en edX?'),
(33, 13, '¿Cómo cambio mi correo de Open Campus?'),
(34, 14, '¿Qué debo hacer para eliminar mi cuenta?'),
(35, 14, '¿Cómo elimino mi cuenta?'),
(36, 15, '¿Cómo son este tipo de cursos?'),
(37, 15, '¿Cuál es la metodologia de este curso?'),
(38, 16, '¿Puedo tomar dos cursos?'),
(39, 16, '¿Puedo tomar mas de un curso?'),
(40, 17, '¿Qué significa \'Esfuerzo estimado\' en el recuadro de la descripción del curso?'),
(41, 17, '¿Qué es el esfuerzo estimado?'),
(42, 18, '¿Este tipo de cursos tienen costo?'),
(43, 18, '¿Hay algun costo por los cursos?'),
(44, 19, '¿Qué hago si necesito comunicarme con alguien para aclarar alguna temática de un curso?'),
(45, 19, 'Necesito ayuda sobre los temas del curso'),
(46, 20, 'No puedo entregar una tarea dentro del plazo establecido en el curso; ¿me pueden ofrecer una prórroga o acceso temprano al material del curso y a la tarea? ¿Cómo puede afectar mi calificación?'),
(47, 20, 'No pude entregar la tarea en una fecha a tiempo'),
(48, 21, '¿Cuándo inicia y/o cierra mi curso?'),
(49, 21, '¿Cuándo empieza y termina un curso?'),
(50, 22, 'Quiero hacer un curso que ya empezó. ¿Puedo inscribirme todavía? ¿cómo puedo hacer para que se abra nuevamente si no está habilitada la inscripción?'),
(51, 22, '¿Puedo ingresar a un curso que ya empezo?'),
(52, 23, '¿Qué pasa si me matriculé en otro curso por error?'),
(53, 23, '¿Cómo salir de un curso?'),
(54, 24, '¿Qué significa curso archivado ?'),
(55, 24, '¿Qué es un curso archivado?'),
(56, 25, '¿Qué pasa si me inscribí en un curso de la plataforma MOOCs UTPL?'),
(57, 25, '¿Mooc UTPL y Open campus son los mismo?'),
(58, 26, '¿Cómo puedo seguir mi progreso en el curso?'),
(59, 26, '¿Cómo puedo ver mi avance en el curso?'),
(60, 27, '¿Cuándo se comunicarán los profesores conmigo?'),
(61, 27, '¿Cuándo podrecomunicarme con un profesor?'),
(62, 28, '¿Puedo comunicarme con los profesores a través del foro del curso?'),
(63, 28, '¿Puedo usar los foros para comunicarme con un profesor?'),
(64, 29, '¿Los participantes debemos estar conectados a una hora determinada en la plataforma virtual?'),
(65, 29, '¿Cómo son este tipo de cursos?'),
(66, 30, '¿Qué hago si tengo problemas para visualizar herramientas en la pantalla o no soy capaz de ver videos? '),
(67, 30, '¿Qué hago si no puedo ver los videos?'),
(68, 31, '¿Qué tipo de evaluaciones voy a encontrar?'),
(69, 31, '¿Cómo son las evaluaciones?'),
(70, 32, '¿Qué es un RETO?'),
(71, 32, '¿De que se tratan los retos?'),
(72, 33, '¿Me notifican por correo la revisión de los RETOS?'),
(73, 33, '¿Cómo me avisan de los retos?'),
(74, 34, '¿Cómo se califican los retos?'),
(75, 34, '¿Cómo se evaluan los retos?'),
(76, 35, '¿Cuántas veces puedo intentar una evaluación calificada?'),
(77, 35, '¿Cuántas veces puedo intentar una prueba?'),
(78, 36, '¿Por qué la hora que se visualiza en la plataforma es diferente a la que indica el profesor como fechas límite?'),
(79, 36, '¿Por qué la hora de Open Campus es diferente?'),
(80, 37, '¿Me entregan un certificado al finalizar el curso?'),
(81, 37, '¿Me dan un certificado al finalizar el curso?'),
(82, 38, '¿Cuánto cuesta el certificado?'),
(83, 38, '¿El certificado tiene algun costo?'),
(84, 39, '¿Cuándo entregan el certificado?'),
(85, 39, '¿Cuándo me dan el certificado?'),
(86, 40, 'Cometí un error al escribir mi nombre y quiero corregirlo antes de la emisión de mi certificado'),
(87, 40, '¿Cómo cambio el nombre en mi certificado?'),
(88, 41, '¿Cuándo estará disponible el certificado?'),
(89, 41, '¿Me dan un certificado al finalizar el curso?'),
(90, 42, '¿Cuáles cursos corresponden a la validación de conocimientos de UTPL?'),
(91, 42, '¿Cómo valido un curso en la UTPL?'),
(92, 43, '¿Qué es open campus?'),
(93, 43, '¿A que se refiere la propuesta open campus?'),
(94, 44, '¿Que puedes hacer?'),
(95, 44, '¿Qué puedes hacer?'),
(96, 44, '¿Como funciona el bot?'),
(97, 44, '¿Como pregunto informacion al bot?'),
(98, 44, '¿Como me puedes ayudar?'),
(99, 44, '¿Cómo me puedes ayudar?'),
(100, 44, 'Cómo me puedes ayudar?'),
(101, 44, 'Como me puedes ayudar?'),
(102, 45, '¿Cuantos cursos hay?'),
(103, 45, '¿Que cursos hay?'),
(104, 44, '¿Como funciona el chatbot?');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta`
--

CREATE TABLE `respuesta` (
  `id_respuesta` int(11) NOT NULL,
  `id_resp_intent` int(11) NOT NULL,
  `respuesta` varchar(700) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(280) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `respuesta`
--

INSERT INTO `respuesta` (`id_respuesta`, `id_resp_intent`, `respuesta`, `link`) VALUES
(1, 1, 'Los cursos de Open Campus están disponibles para el público en general, son abiertos y no tienen costo. Nada más necesita tener acceso a un computador con un navegador actualizado, conexión a Internet y las ganas de aprender', 'http://opencampus.utpl.edu.ec/faq#inicio'),
(2, 2, 'Primeramente, debe crear una cuenta en la plataforma, para luego inscribirse en el curso de su interés. Haga clic en crear una cuenta y siga los pasos indicados. Recuerde que debe ingresar correctamente la información, pues será utilizada para la generar sus certificados de aprobación, siga paso a paso la explicación dada en la siguiente infografía: http://opencampus.utpl.edu.ec/static/Registro_en', 'http://opencampus.utpl.edu.ec/faq#inicio'),
(3, 3, 'Puede ser una de las siguientes razones:Hubo un error tipográfico en el correo electrónico que ingresó; para registrarse en http://opencampus.utpl.edu.ec.La creación de su cuenta no fue finalizada.El correo de activación llegó a su bandeja de spam.Su proveedor de correo electrónico bloqueó el mensaje automáticamente.', 'http://opencampus.utpl.edu.ec/faq#inicio'),
(4, 4, 'Luego de que inicie sesión, debe poder visualizar el curso en el que se inscribió, en su página de inicio o panel de control.Si el curso no es visible, es probable que aún no se ha inscrito, vaya nuevamente a Buscar cursos, y trate de inscribirse nuevamente. Si aun así tienen problemas, escriba a opencampus@utpl.edu.ecUna vez que visualiza el curso, haga clic en el botón Ver curso. Esto le llevará', 'http://opencampus.utpl.edu.ec/faq#inicio'),
(5, 5, 'En caso de necesitar soporte técnico, escriba a opencampus@utpl.edu.ec, con gusto atenderemos su requerimiento.', 'http://opencampus.utpl.edu.ec/faq#inicio'),
(6, 6, 'Una vez finalizados los plazos de entrega de actividades, en su página de inicio o dashboard, aparecerá el % de calificación adquirido, tome en cuenta la explicació inicial del docente para distinguir si ha completado el curso.', 'http://opencampus.utpl.edu.ec/faq#inicio'),
(7, 7, 'En este caso, vaya al enlace ¿Olvidaste tu contraseña? debajo del campo de contraseña en la pantalla de inicio de sesión. Haga clic en el enlace e ingrese su dirección de correo electrónico con la que está registrado en Open Campus y siga las instrucciones que le llegan al correo.', 'http://opencampus.utpl.edu.ec/faq#cuenta'),
(8, 8, 'Asegúrese de que está utilizando la versión actualizada de Firefox o Chrome con las cookies y JavaScript habilitados. También recomendamos que borres la caché de tu navegador.  Si sigue teniendo problemas, puedes cambiar tu contraseña por hacer clic en ¿Olvidaste tu contraseña? debajo del campo de contraseña.', 'http://opencampus.utpl.edu.ec/faq#cuenta'),
(9, 9, 'Si hizo clic en ¿Olvidaste tu contraseña? como se lo sugirió, pero no recibió el correo electrónico con un enlace para cambiar tu contraseña, puede ser a causa de uno de los siguientes problemas: ¿Ingresó correctamente su correo electrónico correctamente en la página de inicio? Asegúrese de que no haya errores. ¿Ingresó el mismo correo electrónico que usó para crear su cuenta? El mensaje para camb', 'http://opencampus.utpl.edu.ec/faq#cuenta'),
(10, 10, 'Si desea modificar la información de su cuenta en Open Campus, vaya hasta panel de control, junto a su nombre de usuario, en la parte superior derecha de la página. Haga clic en el menú desplegable y seleccione CuentaUna vez que ingrese, podrá modificar información como por ejemplo el nombre completo que se mostrará en sus certificados, la dirección de email que utiliza para iniciar sesión y recib', 'http://opencampus.utpl.edu.ec/faq#cuenta'),
(11, 11, 'Intente con otro nombre de usuario. Cada estudiante de Open Campus debe de tener un nombre de usuario único. Es probable que muchas de sus primeras opciones ya hayan sido tomadas.Los nombres de usuarios pueden consistir en letras y números solamente. No pueden incluir espacios o caracteres especiales.Si continúa teniendo problemas en encontrar un nombre de usuario que funcione, recomendamos que ag', 'http://opencampus.utpl.edu.ec/faq#cuenta'),
(12, 12, 'Descarga e instala la versión actual de Chrome o Firefox en tu computador.Asegúrate que la configuración de tu navegador tenga habilitadas cookies y JavaScript.', 'http://opencampus.utpl.edu.ec/faq#cuenta'),
(13, 13, 'Vaya a http://opencampus.utpl.edu.ec  e inicie una sesión con el correo y contraseña que usó para su registro en Open Campus. Una que ingrese a su cuenta, en la parte superior izquierda de la ventana de su perfil, encontrará la opción Email (correo electrónico). Haz clic en edit (editar) y escriba su nuevo correo electrónico de contacto y su nueva contraseña. Luego haga clic en change email (cambi', 'http://opencampus.utpl.edu.ec/faq#cuenta'),
(14, 14, 'No hay necesidad de que elimine su cuenta. Una cuenta que no está siendo utilizada y sin cursos asociados a ella desaparecerá automáticamente.', 'http://opencampus.utpl.edu.ec/faq#cuenta'),
(15, 15, 'Estos cursos se desarrollan bajo una nueva modalidad de formación, con propuestas orientadas a la difusión web de contenidos, uso de recursos educativos abiertos y un plan de actividades de aprendizaje abierto a la colaboración y la participación masiva. Brindan el soporte Web necesario y su inscripción es libre para quienes deseen llevar a cabo el curso.Los cursos en Open Campus se desarrollan se', 'http://opencampus.utpl.edu.ec/faq#cursos'),
(16, 16, 'No hay límite de cursos a tomar, están sujetos al tiempo que usted pueda invertir en ellos para aprender', 'http://opencampus.utpl.edu.ec/faq#cursos'),
(17, 17, 'Significa el esfuerzo semanal que debe invertir en horas de trabajo, es decir número de horas a la semana.', 'http://opencampus.utpl.edu.ec/faq#cursos'),
(18, 18, 'Hasta esta oferta, todos los cursos son abiertos y no tienen costo.', 'http://opencampus.utpl.edu.ec/faq#cursos'),
(19, 19, 'Open Campus le permite el acceso a una comunidad global de participantes con los cual puede contar para hacer preguntas y recibir ayuda, a esto denominamos comunidad de aprendizaje. Además de ello, usted cuenta con el personal docente del curso, que estará supervisando la sección de discusión. Esté pendiente de los foros para revisar preguntas, respuestas y comentarios, seguramente encontrará enri', 'http://opencampus.utpl.edu.ec/faq#cursos'),
(20, 20, 'La plataforma de Open Campus no permite ofrecer prórrogas individuales, ni tampoco acceso anticipado al curso. El curso es programado con anterioridad por el equipo docente, las fechas son fijas y no se cambian. En la mayoría de cursos es posible que usted pierda de entregar algún trabajo o rendir algún test y obtener el mínimo de calificación para completar el curso. Sin embargo, su participación', 'http://opencampus.utpl.edu.ec/faq#cursos'),
(21, 21, 'La fecha de inicio y fin del curso, se puede visualizar en la página de descripción del curso, donde usted se inscribe.', 'http://opencampus.utpl.edu.ec/faq#cursos'),
(22, 22, 'En Open Campus la mayoría de cursos permiten que los estudiantes se inscriban hasta unos días después de que han iniciado. Pero debe tener en cuenta que las tareas también son programadas y debe hacerlas a tiempo.', 'http://opencampus.utpl.edu.ec/faq#cursos'),
(23, 23, 'Usted tiene la posibilidad de darse de baja del curso. Ubíquese en su página de inicio o dashboard, vaya hasta el curso del cual se va a dar de baja y haga clic sobre la rueda que está a la izquierda del botón Ver curso , luego haga clic en Cancelar la inscripción y eso es todo. Usted se ha dado de baja del curso.', 'http://opencampus.utpl.edu.ec/faq#cursos'),
(24, 24, 'La mayoría de los cursos en Open Campus quedan disponibles como \'cursos archivados\' después de que terminen. En estos cursos, se puede acceder a los materiales libremente. Sin embargo, si usted no realizó las actividades propuestas, no se otorgan certificados. Además, en la mayoría de los cursos archivados, las tareas y los foros de discusión no están disponibles.Si la inscripción no está cerrada ', 'http://opencampus.utpl.edu.ec/faq#cursos'),
(25, 25, 'Existe otro grupo de cursos, en la plataforma MOOCs UTPL, que son autoinstruccionales (no se acompañan de un tutor), además de que abordan distintas temáticas. En este caso deberá comunicarse con los contactos respectivos. Open Campus no da soporte a esa plataforma. ', 'http://opencampus.utpl.edu.ec/faq#cursos'),
(26, 26, 'Puedes seguir su progreso haciendo clic en la pestaña de Progreso. Allí verás un gráfico que demuestra tu nota para cada examen y la nota total. Debajo encontrarás un desglose de tus progresos semanales tanto para los exámenes como para los ejercicios de prácticas.', 'http://opencampus.utpl.edu.ec/faq#cursos'),
(27, 27, 'Al comienzo del curso y cada semana posterior los profesores le enviarán un email con información importante que necesitará para el siguiente módulo. Los profesores también publicarán mensajes en la plataforma, según sea necesario. Encontrará los mensajes cuando acceda al curso. Si necesita consultar estos mensajes mientras está trabajando en el curso,  haga clic en la pestaña de Información del c', 'http://opencampus.utpl.edu.ec/faq#cursos'),
(28, 28, 'El objetivo del foro es fomentar la participación y comunicación entre los estudiantes. Puede revisar los directrices del foro en la sección respectiva del curso. Los profesores seguirán el foro pero por favor no espere que conteste a todas sus preguntas. Esto sería imposible dado el gran número de personas que están realizando el curso.', 'http://opencampus.utpl.edu.ec/faq#cursos'),
(29, 29, 'No. No habrá clases en línea a una hora determinada en la que los participantes deban estar reunidos en forma simultánea. La plataforma del curso estará disponible las 24 horas durante los 7 días de la semana. No obstante, cada participante será responsable de realizar las actividades en los tiempos estipulados. ', 'http://opencampus.utpl.edu.ec/faq#cursos'),
(30, 30, 'Por favor verifique la configuración de sunavegador. JavaScript debe estar habilitado. le recomendamos descargar y utilizar la última versión de Firefox o Google Chrome.', 'http://opencampus.utpl.edu.ec/faq#cursos'),
(31, 31, 'Autoevaluaciones, que son una forma en que se recuerden conocimientos importantes, la mayoría son cortos y no tienen calificación. Este tipo de actividades pueden ser de tipo test, sopas de letras, crucigramas, emparejamientos, entre otros.Evaluaciones, que son una forma de que se verifique el avance del aprendizaje de la parte teórica del curso, para esto se han elaborado en su mayoría pruebas de', 'http://opencampus.utpl.edu.ec/faq#evaluaciones'),
(32, 32, 'Un reto es una tarea propuesta por el equipo docente, a través de la cual se evalúan las competencias adquiridas, mediante actividades novedosas que requieren un mayor esfuerzo del estudiante, que incluya conocimientos, creatividad y ganas de aprender más. Un RETO se desarrolla en 2 fases: Fase de subida de tareas, en la cual cada participante desarrolla su trabajo la sube en la plataforma en el e', 'http://opencampus.utpl.edu.ec/faq#evaluaciones'),
(33, 33, 'No se notifica ninguna revisión de trabajos vía correo electrónico, cada participante debe ingresar a la plataforma y revisar los trabajos que le han sido asignados.', 'http://opencampus.utpl.edu.ec/faq#evaluaciones'),
(34, 34, 'Los resultados son calculados por un algoritmo en la plataforma. Los participantes podrán ver su calificación solamente al final de la segunda fase, cuando han enviado su trabajo y han revisado los trabajo de sus pares correspondientes, caso contrario no se les asigna ningún valor. Por ello debe esperar hasta la fecha límite para revisar su calificación en el Progreso.', 'http://opencampus.utpl.edu.ec/faq#evaluaciones'),
(35, 35, 'Los ejercicios de prácticas y los exámenes tienen un número limitado de intentos. Por favor, lea detenidamente la información al respecto (dependiendo del tipo de ejercicio puede haber más o menos intentos)A la hora de responder, si no está seguro del todo, puede seleccionar guardar y enviar la respuesta más tarde marcando revisar. Tenga presente que para enviar una respuesta, que previamente haya', 'http://opencampus.utpl.edu.ec/faq#evaluaciones'),
(36, 36, 'Todas las referencias horarias corresponden al estándar UTC (Tiempo Universal Coordinado) que se utiliza en todo el mundo. Puedes ver la hora actual UTC en el Reloj Mundial para ver la diferencia entre UTC y tu hora local. Por favor, ten este dato en cuenta para las fechas y horas de entrega de los ejercicios del curso ya que los plazos son definitivos.', 'http://opencampus.utpl.edu.ec/faq#date'),
(37, 37, 'Al inicio del curso el docente-tutor del curso da indicaciones sobre las actividades de curso a realizar, así como el porcentaje mínimo a adquirir para aprobar el curso. Esto permite que Open Campus le entregue un certificado al finalizar dicho curso.', 'http://opencampus.utpl.edu.ec/faq#certificados'),
(38, 38, 'Si usted aprobó el curso, recibirá un certificado de aprobación que es digital.', 'http://opencampus.utpl.edu.ec/faq#certificados'),
(39, 39, 'Una vez que los cursos se dan por finalizados, se realiza un proceso de generación de certificados digitales. Estos certificados aparecerán en su página de inicio o dashboard, bajo el nombre del curso, para que usted con un clic pueda verlo, descargarlo y/o imprimirlo.', 'http://opencampus.utpl.edu.ec/faq#certificados'),
(40, 40, 'Vaya a http://opencampus.utpl.edu.ec  e inicia una sesión con el correo y contraseña con el que está registrado en Open Campus. Ingrese a su cuenta, en la parte superior izquierda de la ventana de su perfil, encontrará la opción Full name (nombre completo). Haga clic en edit (editar),  escriba su nombre tal como desea que aparezca en el certificado y especifique la razón de esta modificación. A co', 'http://opencampus.utpl.edu.ec/faq#certificados'),
(41, 41, 'Si un estudiante recibe una nota mínima (según lo haya determinado el equipo docente) como indica el curso recibirá un certificado mediante esta misma plataforma después de una o dos semanas de la fecha de finalización del curso. Los certificados estará disponibles en el dashboard en la página principal del curso. ', 'http://opencampus.utpl.edu.ec/faq#certificados'),
(42, 42, 'A través de los cursos de Open Campus, se puede preparar para que a través de sus cursos se validen sus conocimientos y sean reconocidos por créditos académicos. UTPL ha incorporado este tipo de procesos, mismos que puede ver a detalle haciendo clic aquí: https://distancia.utpl.edu.ec/validacion-conocimientos/mooc', 'http://opencampus.utpl.edu.ec/faq#validaciones'),
(43, 43, 'OpenCampus es una plataforma que oferta cursos en línea, y que se ponen disponibles, a través de Internet, de forma abierta y libre. Con OpenCampus, educadores y formadores pueden diseñar sus cursos, probar nuevas formas de aprendizaje, establecer retos que permitan hacer analítica de aprendizaje, y ofertar a estudiantes de cualquier lugar del mundo. Además, los expertos en tecnología puede construir componentes de aprendizaje y contribuirlos como nuevas características de la plataforma, de manera que apoyen a la creación de soluciones educativas innovadoras que beneficien a profesores, estudiantes y autodidactas de cualquier parte del mundo.', 'http://opencampus.utpl.edu.ec/about'),
(44, 44, 'Puedes preguntarme por la plataforma: @opencampus_go ¿pregunta? o puedes preguntar por un curso: @opencampus_go #comando Nombre del curso', 'http://opencampus.utpl.edu.ec/faq'),
(45, 45, 'Puedes revisar nuestra oferta de cursos en', 'http://opencampus.utpl.edu.ec/courses');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reto`
--

CREATE TABLE `reto` (
  `id_reto` int(11) NOT NULL,
  `id_curso_reto` int(11) NOT NULL,
  `descripcion` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_entrega` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `reto`
--

INSERT INTO `reto` (`id_reto`, `id_curso_reto`, `descripcion`, `fecha_entrega`) VALUES
(1, 1, 'Este es un ejemplo de reto que debera contestar para poder seguir adelante con las actividades del curso', '2018-11-19'),
(2, 20, 'Este es un otro ejemplo de reto que debera contestar para poder seguir adelante con las actividades del curso', '2018-11-06'),
(3, 20, 'Este es un otro ejemplo de reto que debera contestar para poder seguir adelante con las actividades del curso', '2018-11-06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sinonimos`
--

CREATE TABLE `sinonimos` (
  `id_sin` int(11) NOT NULL,
  `id_curso_sin` int(11) NOT NULL,
  `sinonimo` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sinonimos`
--

INSERT INTO `sinonimos` (`id_sin`, `id_curso_sin`, `sinonimo`) VALUES
(1, 1, 'MANEJO DATOS'),
(3, 1, 'EXPLORACION DATOS'),
(10, 1, 'EADM-Ed3'),
(12, 1, 'MANEJO EXPLORACION DATOS'),
(13, 20, 'EMPRENDIMIENTO Y GENERACION DE IDEAS'),
(14, 20, 'EAIG'),
(15, 20, 'EMPRENDIMIENTO GENERACION IDEAS'),
(16, 20, 'EMPRENDIMIENTO'),
(17, 20, 'GENERACION IDEAS'),
(18, 20, 'IDEAS'),
(19, 2, 'SALUD SEXUAL'),
(20, 2, 'SALUD REPRODUCTIVA'),
(21, 2, 'SEXUAL'),
(22, 2, 'SARH-Ed2'),
(23, 3, 'BEBIDAS ALCOHOLICAS FERMENTADAS'),
(24, 3, 'BEBIDAS FERMENTADAS'),
(25, 3, 'ALCOHOLICAS FERMENTADAS'),
(26, 3, 'BEBIDAS ALCOHOLICAS'),
(27, 3, 'FERBEV-Ed6'),
(28, 4, 'CONOCIMIENTO ANCESTRAL PLANTAS MEDICINALES'),
(29, 4, 'CONOCIMIENTO PLANTAS MEDICINALES'),
(30, 4, 'CONOCIMIENTO ANCESTRAL MEDICINALES'),
(31, 4, 'PLANTAS MEDICINALES'),
(32, 4, 'PLANTAS ANCESTRAL'),
(33, 4, 'AKOMP-Ed8'),
(34, 5, 'CONTAMINACION ATMOSFERICA'),
(35, 5, 'ATMOSFERICA'),
(36, 5, 'CONTAMINACION'),
(37, 5, 'AIRPOLLUTION-Ed7'),
(38, 6, 'DESARROLLO COMUNITARIO'),
(39, 6, 'DESARROLLO'),
(40, 6, 'CD-Ed8'),
(44, 7, 'EDUCACION ALIMENTACION SALUDABLE'),
(45, 7, 'ALIMENTACION SALUDABLE'),
(46, 7, 'EDUCACION ALIMENTACION'),
(47, 7, 'EFHE-Ed8'),
(48, 8, 'HUERTOS FAMILIARES'),
(49, 8, 'HUERTOS'),
(50, 8, 'HG-Ed8'),
(51, 9, 'INTRODUCCION BIORREMEDIACION'),
(52, 9, 'BIORREMEDIACION'),
(53, 9, 'INTRBIORREM-Ed7'),
(54, 10, 'JUSTO TIEMPO'),
(55, 10, 'METODO TOYOTA'),
(56, 10, 'JIT-Ed8'),
(57, 11, 'MANEJO SUELO'),
(58, 11, 'RECURSO SUELO'),
(59, 11, 'SRM-Ed8'),
(60, 12, 'ECONOMIA RECURSOS NATURALES'),
(61, 12, 'RECURSOS NATURALES'),
(62, 12, 'NRE-Ed3'),
(63, 13, 'INTRODUCCION PROGRAMACION'),
(64, 13, 'PROGRAMACION'),
(65, 13, 'LP-Ed3'),
(66, 14, 'METODOS ALTERNATIVOS RESOLUCION CONFLICTOS'),
(67, 14, 'RESOLUCION CONFLICTOS'),
(68, 14, 'METODOS RESOLUCION CONFLICTOS'),
(69, 14, 'RESOLUCION ALTERNATIVA CONFLICTOS'),
(70, 14, 'AMOCR-Ed2'),
(71, 15, 'PRODUCCION AUDIOVISUAL'),
(72, 15, 'AUDIOVISUAL'),
(73, 15, 'AUDIOVPRO-Ed2'),
(74, 16, 'PREVENCION INTEGRAL CONSUMO'),
(75, 16, 'PREVENCION CONSUMO'),
(76, 16, 'COOSU-Ed2'),
(77, 17, 'USO TECNOLOGIAS INFORMACION COMUNICACION'),
(78, 17, 'TECNOLOGIAS INFORMACION COMUNICACION'),
(79, 17, 'INFORMACION COMUNICACION'),
(80, 17, 'USO TIC'),
(81, 17, 'USO INFORMACION COMUNICACION'),
(82, 17, 'UTIC-Ed3'),
(83, 18, 'FUNDAMENTOS EVOLUCION'),
(84, 18, 'EVOLUCION'),
(85, 18, 'EVOLFUND'),
(86, 19, 'MICROBIOLOGIA AMBIENTAL AGRICOLA'),
(87, 19, 'MICROBIOLOGIA AMBIENTAL'),
(88, 19, 'MICROBIOLOGIA AGRICOLA'),
(89, 19, 'MICROBIOLOGIA'),
(90, 19, 'EAAM'),
(91, 21, 'ECONOMIA ALCANCE'),
(92, 21, 'EAUF'),
(93, 22, 'MANEJO ANALISIS BASE DATOS'),
(94, 22, 'MANEJO DATOS'),
(95, 22, 'ANALISIS DATOS'),
(96, 22, 'DBMAA'),
(97, 23, 'ANTROPOLOGIA BASICA'),
(98, 23, 'ANTROPOLOGIA'),
(99, 23, 'ANTRPY'),
(100, 24, 'CIENCIA DATOS'),
(101, 24, 'DCSFS'),
(102, 2, 'SALUD SEXUAL REPRODUCTIVA'),
(103, 10, 'JUSTO TIEMPO METODO TOYOTA'),
(104, 24, 'Ciencia datos primeros pasos'),
(105, 22, 'MANEJO ANALISIS BASES DATOS');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `competencias`
--
ALTER TABLE `competencias`
  ADD PRIMARY KEY (`id_comp`),
  ADD KEY `id_curso_comp` (`id_curso_comp`);

--
-- Indices de la tabla `contenido`
--
ALTER TABLE `contenido`
  ADD PRIMARY KEY (`id_cont`),
  ADD KEY `id_curso_cont` (`id_curso_cont`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id_curso`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`id_docente`);

--
-- Indices de la tabla `docente_curso`
--
ALTER TABLE `docente_curso`
  ADD KEY `id_docente_curso` (`id_docente_curso`),
  ADD KEY `docente_curso_ibfk_2` (`id_curso`);

--
-- Indices de la tabla `inputs`
--
ALTER TABLE `inputs`
  ADD PRIMARY KEY (`id_input`);

--
-- Indices de la tabla `intents`
--
ALTER TABLE `intents`
  ADD PRIMARY KEY (`id_intent`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id_pregunta`),
  ADD KEY `id_preg_intent` (`id_preg_intent`);

--
-- Indices de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD PRIMARY KEY (`id_respuesta`),
  ADD KEY `id_resp_intent` (`id_resp_intent`);

--
-- Indices de la tabla `reto`
--
ALTER TABLE `reto`
  ADD PRIMARY KEY (`id_reto`),
  ADD KEY `id_curso_reto` (`id_curso_reto`);

--
-- Indices de la tabla `sinonimos`
--
ALTER TABLE `sinonimos`
  ADD PRIMARY KEY (`id_sin`),
  ADD KEY `fk_sinonimo_curso` (`id_curso_sin`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `competencias`
--
ALTER TABLE `competencias`
  MODIFY `id_comp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT de la tabla `contenido`
--
ALTER TABLE `contenido`
  MODIFY `id_cont` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `id_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `docente`
--
ALTER TABLE `docente`
  MODIFY `id_docente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `inputs`
--
ALTER TABLE `inputs`
  MODIFY `id_input` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `intents`
--
ALTER TABLE `intents`
  MODIFY `id_intent` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id_pregunta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  MODIFY `id_respuesta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `reto`
--
ALTER TABLE `reto`
  MODIFY `id_reto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `sinonimos`
--
ALTER TABLE `sinonimos`
  MODIFY `id_sin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `competencias`
--
ALTER TABLE `competencias`
  ADD CONSTRAINT `competencias_ibfk_1` FOREIGN KEY (`id_curso_comp`) REFERENCES `curso` (`id_curso`);

--
-- Filtros para la tabla `contenido`
--
ALTER TABLE `contenido`
  ADD CONSTRAINT `contenido_ibfk_1` FOREIGN KEY (`id_curso_cont`) REFERENCES `curso` (`id_curso`);

--
-- Filtros para la tabla `docente_curso`
--
ALTER TABLE `docente_curso`
  ADD CONSTRAINT `docente_curso_ibfk_1` FOREIGN KEY (`id_docente_curso`) REFERENCES `docente` (`id_docente`),
  ADD CONSTRAINT `docente_curso_ibfk_2` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id_curso`);

--
-- Filtros para la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD CONSTRAINT `preguntas_ibfk_1` FOREIGN KEY (`id_preg_intent`) REFERENCES `intents` (`id_intent`);

--
-- Filtros para la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD CONSTRAINT `respuesta_ibfk_1` FOREIGN KEY (`id_resp_intent`) REFERENCES `intents` (`id_intent`);

--
-- Filtros para la tabla `reto`
--
ALTER TABLE `reto`
  ADD CONSTRAINT `reto_ibfk_1` FOREIGN KEY (`id_curso_reto`) REFERENCES `curso` (`id_curso`);

--
-- Filtros para la tabla `sinonimos`
--
ALTER TABLE `sinonimos`
  ADD CONSTRAINT `fk_sinonimo_curso` FOREIGN KEY (`id_curso_sin`) REFERENCES `curso` (`id_curso`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
