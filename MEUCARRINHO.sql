-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tempo de Geração: 26/03/2019 às 22:42
-- Versão do servidor: 5.5.57-0ubuntu0.14.04.1
-- Versão do PHP: 5.5.9-1ubuntu4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `MEUCARRINHO`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_CARRINHO`
--

CREATE TABLE IF NOT EXISTS `TB_CARRINHO` (
  `CD_CARRINHO` int(11) NOT NULL AUTO_INCREMENT,
  `QT_PRODUTO` int(11) NOT NULL,
  `DS_STATUS` varchar(45) NOT NULL,
  `ID_INTERNO` int(11) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  PRIMARY KEY (`CD_CARRINHO`),
  KEY `ID_INTERNO` (`ID_INTERNO`),
  KEY `ID_USUARIO` (`ID_USUARIO`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=92 ;

--
-- Fazendo dump de dados para tabela `TB_CARRINHO`
--

INSERT INTO `TB_CARRINHO` (`CD_CARRINHO`, `QT_PRODUTO`, `DS_STATUS`, `ID_INTERNO`, `ID_USUARIO`) VALUES
(19, 1, '', 206, 5),
(20, 1, '', 206, 5),
(44, 1, '', 236, 1),
(45, 1, '', 241, 1),
(63, 1, '', 45, 5),
(64, 4, '', 25, 5),
(70, 4, '', 115, 2),
(72, 1, '', 118, 29),
(75, 1, '', 241, 29),
(77, 4, '', 238, 29),
(78, 4, '', 207, 2),
(79, 1, '', 136, 9),
(82, 3, '', 243, 2),
(83, 1, '', 141, 31),
(84, 4, '', 244, 2),
(85, 1, '', 59, 3),
(86, 1, '', 231, 2),
(87, 4, '', 60, 2),
(88, 3, '', 24, 2),
(89, 4, '', 225, 32),
(90, 1, '', 207, 32),
(91, 7, '', 127, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_CATEGORIA`
--

CREATE TABLE IF NOT EXISTS `TB_CATEGORIA` (
  `CD_CATEGORIA` int(11) NOT NULL AUTO_INCREMENT,
  `NM_CATEGORIA` varchar(45) NOT NULL,
  PRIMARY KEY (`CD_CATEGORIA`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Fazendo dump de dados para tabela `TB_CATEGORIA`
--

INSERT INTO `TB_CATEGORIA` (`CD_CATEGORIA`, `NM_CATEGORIA`) VALUES
(1, 'Alimentos'),
(2, 'Bebês'),
(3, 'Perfumaria'),
(4, 'Limpeza'),
(6, 'Bebidas'),
(7, 'Carnes'),
(8, 'Feira'),
(9, 'Congelados'),
(10, 'Higiene Bucal'),
(11, 'Condimentos e conservas'),
(12, 'Frios'),
(13, 'Resfriados'),
(14, 'Bebidas alcóolicas'),
(15, 'Bomboniere'),
(16, 'Farinhas e grãos'),
(17, 'Sobremesas');

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_COMPRA`
--

CREATE TABLE IF NOT EXISTS `TB_COMPRA` (
  `CD_COMPRA` int(11) NOT NULL AUTO_INCREMENT,
  `DT_COMPRA` date NOT NULL,
  `VL_TOTAL` int(11) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `ID_FORMA_PGTO` int(11) NOT NULL,
  PRIMARY KEY (`CD_COMPRA`),
  KEY `ID_USUARIO` (`ID_USUARIO`),
  KEY `ID_FORMA_PGTO` (`ID_FORMA_PGTO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_FABRICANTE`
--

CREATE TABLE IF NOT EXISTS `TB_FABRICANTE` (
  `CD_FABRICANTE` int(11) NOT NULL AUTO_INCREMENT,
  `NM_FABRICANTE` varchar(80) NOT NULL,
  PRIMARY KEY (`CD_FABRICANTE`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=143 ;

--
-- Fazendo dump de dados para tabela `TB_FABRICANTE`
--

INSERT INTO `TB_FABRICANTE` (`CD_FABRICANTE`, `NM_FABRICANTE`) VALUES
(1, 'CAMIL'),
(2, 'UNIÃO'),
(3, 'URBANO'),
(4, 'TIO JOÃO'),
(5, 'NISSIN'),
(6, 'CAMPBELL´S'),
(7, 'CASTELO'),
(9, 'LEBRE'),
(10, 'ITAJÁ'),
(11, 'BROTO LEGAL'),
(12, 'ADRIA'),
(13, 'INVERNI'),
(14, 'BRAHMA'),
(15, 'PETYBON'),
(16, 'AJINOMOTO'),
(17, 'SOYA'),
(18, 'SAN PELEGRINO'),
(19, 'PEPSI'),
(20, 'FIT'),
(21, 'JOHNSON''S'),
(22, 'PAMPERS'),
(23, 'DOVE'),
(24, 'NESTLE'),
(25, 'TURMA DA MÔNICA'),
(26, 'SUSTAGEN'),
(27, 'GRANADO'),
(28, 'CREMOGEMA'),
(29, 'OMO'),
(30, 'BAYGON'),
(31, 'VIMAK'),
(32, 'GRAND PRIX'),
(34, 'Skol'),
(35, 'MID'),
(36, 'ANTARCTICA'),
(37, 'JOHNNIE WALKER '),
(38, 'FANTA'),
(39, ' JOSÉ CUERVO'),
(40, 'HEINEKEN'),
(41, 'BUDWEISER'),
(42, 'FRIBOI'),
(43, 'NIVEA'),
(44, 'BIC'),
(45, 'INTIMUS'),
(46, 'P&G'),
(47, 'DR. OETKER'),
(48, 'PORTOFINO'),
(49, 'KIBON'),
(50, 'MISS DAISY'),
(51, 'PIRACANJUBA'),
(52, 'CAJUELLA'),
(53, 'NILZA'),
(54, 'SEARA'),
(55, 'MASSA LEVE'),
(56, 'DANONE'),
(57, 'COLGATE'),
(58, 'GUM'),
(59, 'SADIA'),
(60, 'HAWAI'),
(61, 'Frutas (sem marca)'),
(62, 'WILLIANS'),
(63, 'EASY FRIES'),
(64, 'QUALIMAR'),
(65, 'TAEQ'),
(66, 'AURORA'),
(67, 'YOKI'),
(68, 'OCTAVIO'),
(69, 'WICKBOLD'),
(70, 'SEVEN BOYS'),
(71, 'Jägermeister'),
(72, 'Stella Artois'),
(73, 'SALTON'),
(74, 'ESTRELLA GALICIA'),
(75, 'DO CHEF'),
(76, 'CERATTI'),
(77, 'BOMBRIL'),
(78, 'YPÊ'),
(79, 'LIMPOL'),
(80, 'RECKITT'),
(81, 'SUPER CANDIDA'),
(82, 'NEVE'),
(83, 'PERSONAL'),
(84, 'REXONA'),
(85, 'TANDY'),
(86, 'VENUS'),
(87, 'CHALESCO'),
(88, 'EDEL WHITE'),
(89, 'DOWNY'),
(90, 'KELDOG'),
(91, 'CAREFREE'),
(92, 'FLEISCHMANN'),
(93, 'VALSUGANA'),
(94, 'Amélia'),
(95, 'MINALBA'),
(96, 'COCA COLA'),
(97, 'MASSA LEVE'),
(98, 'DONA THEREZA'),
(99, 'MEZZANI'),
(100, 'Coqueiro'),
(101, 'TAEQ'),
(102, 'VEGGIES'),
(103, 'BAD BOY'),
(104, 'TANG'),
(105, 'SERRABELLA'),
(106, 'TRIDENT'),
(107, 'DANUBIO'),
(108, 'LACTA'),
(109, 'FINI'),
(110, 'Prieto'),
(111, 'PRESIDENT'),
(112, 'HALLS'),
(113, 'BALKIS'),
(114, 'MENTOS'),
(115, 'SORESINA'),
(116, 'CASINO'),
(117, 'JUBILEU'),
(119, 'ELMA CHIPS'),
(120, 'SALSARETTI'),
(121, 'MASTERFOODS'),
(122, 'HEINZ'),
(123, 'HELLMANNS'),
(124, 'PONS'),
(125, 'TASTE & CO'),
(126, 'SATIS'),
(127, 'Vale Fértil'),
(128, 'KITANO'),
(129, 'QUERO'),
(130, 'BLUEVILLE'),
(131, 'PRATO FINO'),
(132, 'UNCLE BEN''S'),
(133, 'RARIS'),
(134, 'Pantera'),
(135, 'SUPER MAXIMO'),
(136, 'KICALDO'),
(137, 'VAPZA'),
(138, 'BONDUELLE'),
(139, 'SUAVIT'),
(140, 'OLIVIA'),
(141, 'CISNE'),
(142, 'BR SPICES');

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_FORMA_PGTO`
--

CREATE TABLE IF NOT EXISTS `TB_FORMA_PGTO` (
  `CD_FORMA_PGTO` int(11) NOT NULL AUTO_INCREMENT,
  `NM_PGTO` varchar(20) NOT NULL,
  PRIMARY KEY (`CD_FORMA_PGTO`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Fazendo dump de dados para tabela `TB_FORMA_PGTO`
--

INSERT INTO `TB_FORMA_PGTO` (`CD_FORMA_PGTO`, `NM_PGTO`) VALUES
(1, 'Raniel'),
(2, 'CartÃ£o de crÃ©dito');

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_LISTA`
--

CREATE TABLE IF NOT EXISTS `TB_LISTA` (
  `CD_LISTA` int(11) NOT NULL AUTO_INCREMENT,
  `DS_CONTEUDO` varchar(20) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  PRIMARY KEY (`CD_LISTA`),
  KEY `ID_USUARIO` (`ID_USUARIO`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Fazendo dump de dados para tabela `TB_LISTA`
--

INSERT INTO `TB_LISTA` (`CD_LISTA`, `DS_CONTEUDO`, `ID_USUARIO`) VALUES
(5, 'batata', 2),
(6, 'feijao', 2),
(8, 'Arroz', 14),
(10, 'batata', 14),
(19, 'batatinha', 2),
(21, 'vodka', 25),
(22, 'Whisky ', 25),
(23, 'Cerveja ', 25),
(24, 'tequila', 25),
(25, 'vinho', 25),
(26, 'Conhaque ', 25),
(30, 'Feijão', 20),
(31, 'Arroz', 20),
(33, 'arroz', 27),
(34, '<b><i><u>feijão</u><', 27),
(37, 'café', 2),
(38, 'Arroz', 1),
(40, 'Morrer', 5),
(42, 'Batata e batata', 29),
(46, 'OELO VEGETAL', 2),
(47, 'bataat', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_PRODUTO`
--

CREATE TABLE IF NOT EXISTS `TB_PRODUTO` (
  `CD_INTERNO` int(11) NOT NULL AUTO_INCREMENT,
  `NM_PRODUTO` varchar(50) NOT NULL,
  `DS_FOTO_PRODUTO` varchar(80) DEFAULT NULL,
  `DS_DESCRIÇÃO` longtext NOT NULL,
  `CD_BARRAS` varchar(50) NOT NULL,
  `QT_ESTOQUE` int(11) NOT NULL,
  `QT_ESTOQUE_MIN` int(11) NOT NULL,
  `QT_ESTOQUE_MAX` int(11) NOT NULL,
  `CD_NCM` char(8) NOT NULL,
  `VL_CUSTO` decimal(10,2) NOT NULL,
  `VL_PRODUTO` decimal(10,2) NOT NULL,
  `ID_FABRICANTE` int(11) NOT NULL,
  `ID_CATEGORIA` int(11) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  PRIMARY KEY (`CD_INTERNO`),
  KEY `ID_FABRICANTE` (`ID_FABRICANTE`),
  KEY `ID_CATEGORIA` (`ID_CATEGORIA`),
  KEY `ID_USUARIO` (`ID_USUARIO`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=245 ;

--
-- Fazendo dump de dados para tabela `TB_PRODUTO`
--

INSERT INTO `TB_PRODUTO` (`CD_INTERNO`, `NM_PRODUTO`, `DS_FOTO_PRODUTO`, `DS_DESCRIÇÃO`, `CD_BARRAS`, `QT_ESTOQUE`, `QT_ESTOQUE_MIN`, `QT_ESTOQUE_MAX`, `CD_NCM`, `VL_CUSTO`, `VL_PRODUTO`, `ID_FABRICANTE`, `ID_CATEGORIA`, `ID_USUARIO`) VALUES
(5, 'Arroz Urbano Especial Tipo 1 Arbório URBANO Pacote', 'imgs/produtos469469.jpg', 'Arroz Especial Tipo 1 Arbório URBANO Pacote 1kg', '1022682', 30, 10, 100, '12345678', '7.00', '14.90', 3, 1, 13),
(6, 'Macarrão Instantâneo NISSIN Lámen Sabor Galinha 85', 'imgs/produtos/macarrao.jpg', 'Macarrão:\r\nFarinha de trigo enriquecida com ferro e ácido fólico, gordura vegetal, sal, reguladores de acidez carbonato de potássio e carbonato de sódio, estabilizantes tripolifosfato de sódio, pirofosfato tetrassódico e fosfato de sódio monobásico e corante sintético idêntico ao natural betacaroteno.\r\nTempero em Pó:\r\nSal, farinha de arroz, açúcar, cebola em pó, condimento à base de extrato de levedura, carne de galinha em pó, alho em pó, condimento preparado sabor pimenta branca, cúrcuma em pó, condimento preparado sabor galinha caipira, salsa triturada, realçadores de sabor glutamato monossódico, inosinato dissódico e guanilato dissódico, antiumectante dióxido de silício, aromatizantes e corante sintético idêntico ao natural betacaroteno.\r\nPode conter traços de crustáceos, pescados, soja, aipo, mostarda e gergelim, e de seus derivados.\r\nCONTÉM GLÚTEN.', '1366334', 100, 50, 100, '0', '3.39', '1.39', 5, 1, 13),
(7, 'Sopa Americana de Aspargo CAMPBELL´S 305g', 'imgs/produtos/sopaamericana.jpg', 'Ingredientes:\r\nÁgua, aspargos, farinha de trigo, óleo vegetal, creme de leite, sal, amido modificado, soro de leite, açúcar, proteína concentrada de soja, caseinato de cálcio, especiarias, realçador de sabor glutamato monossódico, emulsificantes: goma guar, goma xantana.\r\nCONTÉM GLÚTEN.', '0287128', 100, 50, 100, '0', '20.50', '18.50', 6, 1, 13),
(8, 'Vinagre de Álcool Colorido CASTELO 750ml', 'imgs/produtos/454543.jpg', 'Ingredientes:\r\nFermentado acético de álcool, água, conservador INS 224 e corante natural INS 150C.Acidez 4,0%.\r\n\r\nNÃO CONTÉM GLÚTEN', '1008058', 100, 50, 100, '0', '4.55', '2.55', 7, 1, 13),
(9, 'Açúcar Orgânico Demerara ITAJÁ Pacote 1kg', 'imgs/produtos/ACUCAR.jpg', 'Açúcar Orgânico Demerara ITAJÁ Pacote 1kg\r\n', '1095639', 100, 50, 100, '0', '7.15', '5.15', 10, 1, 13),
(10, 'Feijão Preto BROTO LEGAL Pacote 1kg', 'imgs/produtos/FEIJAO PRETO.jpg', 'Feijão Preto BROTO LEGAL Pacote 1kg\r\n', '1676815', 100, 50, 100, '0', '7.59', '5.59', 11, 1, 13),
(11, 'Massa para Lasanha ADRIA 500g', 'imgs/produtos/LASANHA.jpg', 'Ingredientes:\r\nSêmola de trigo enriquecida com ferroe ácido fólico (vitamina B9)e corantes naturais (cúrcuma e urucum).Pode conter traços de ovos.\r\nCONTÉM GLÚTEN.', '0250283', 100, 50, 100, '0', '3.79', '5.79', 12, 1, 13),
(12, 'Cerveja BRAHMA Chopp Lata 269ml', 'imgs/produtos/556344.jpg', 'Criada por um suíço que procurava um sabor mais europeu em solo brasileiro em 1888, no Rio de Janeiro, Brahma Chopp é uma cerveja de cor clara e aparência cristalina. Ela é leve e com aroma neutro, sabor encorpado mas com amargor suave. Foi a primeira cerveja brasileira a ser exportada e hoje está presente em mais de 15 países, entre América do Norte e Europa.', '4868781', 100, 50, 100, '0', '1.00', '1.89', 14, 6, 13),
(13, 'Risotto Italiano INVERNI Arborio Caixa 1kg', 'imgs/produtos/INVERNI.jpg', 'Risotto Italiano INVERNI Arborio Caixa 1kg\r\n', '1073567', 100, 50, 100, '0', '11.80', '21.80', 13, 1, 13),
(14, 'Macarrão Grano Duro Capelli D´Angelo PETYBON Pacot', 'imgs/produtos/PETYBON.jpg', 'Ingredientes\r\nSêmola de trigo durum.\r\nCONTÉM GLÚTEN.', '4134916', 100, 50, 100, '0', '3.00', '5.69', 15, 1, 13),
(15, 'Sopa de Mandioquinha com Cebola e Salsa VONO Pacot', 'imgs/produtos/sopa_vono_mandioquinha.png', 'Informações do produto\r\nIngredientes:\r\nMaltodextrina, batata, creme de leite, mandioquinha, fécula de batata, cebola, sal, gordura vegetal, açúcar, queijo, extrato de levedura, cúrcuma, salsa, realçadores de sabor glutamato monossódico, inosinato dissódico e guanilato dissódico, espessante carboximetilcelulose sódica e goma xantana aromatizante, corante inorgânico dióxido de titânio e corante caramelo IV. \r\nCONTÉM GLÚTEN.', '1021355', 50, 10, 100, '00000000', '0.97', '1.95', 16, 1, 13),
(16, 'Óleo de Milho SOYA Pet 900ml', 'imgs/produtos/OLEO.png', 'Óleo de Milho SOYA Pet 900ml', '1130332', 50, 10, 100, '00000000', '3.00', '6.99', 17, 1, 13),
(17, 'SOYA', 'imgs/produtos/SAN.jpg', 'Água mineral natural com carbonato CO².\r\n', '0134354', 100, 50, 100, '0', '4.15', '6.35', 18, 6, 13),
(18, 'Refrigerante PEPSI Lata 269ml - Caixa com 15 Unida', 'imgs/produtos/PEPSI.jpg', 'Refrigerante PEPSI Lata 269ml	', '9901422', 100, 50, 100, '0', '13.90', '18.75', 19, 6, 13),
(19, 'Refresco em Pó FIT Diet de Laranja 10g', 'imgs/produtos/FIT.jpg', 'Maltodextrina, polpa de laranja desidratada (1%), acidulante (ácido cítrico), regulador de acidez (citrato de sódio), antiumectante (fosfato tricálcico), corante inorgânico (dióxido de titânio), aromatizante (aroma idêntico ao natural de laranja), edulcorantes artificiais (por 100ml: aspartame: 34,9mg e acesulfame-K: 3,9mg), estabilizantes (carboximetilcelulose e goma xantana) e corantes artificiais (amarelo crepúsculo e tartrazina). \r\n\r\nInformação Adicional:\r\nContém fenilalanina. \r\n\r\nNÃO CONTÉM GLÚTEN.', '2385051', 100, 50, 100, '0', '0.60', '1.15', 20, 6, 13),
(20, 'Sabonete Líquido Infantil JOHNSON''S Baby Toque Fre', 'imgs/produtos/JOHNSON.jpg', 'Sabonete Líquido Infantil JOHNSON''S Baby Toque Fresquinho 200ml\r\n', '1090832', 100, 50, 100, '0', '7.90', '13.90', 21, 2, 13),
(21, 'Kit com 2 Lenços Umedecidos JOHNSON''S Baby Extra C', 'imgs/produtos/JOHNSON SAB.jpg', 'Lenços Umedecidos JOHNSON''S Baby Extra Cuidado Pacote com 96 Unidades	', '9900272', 100, 50, 100, '0', '22.76', '44.76', 21, 2, 13),
(22, 'Kit com 3 Fraldas PAMPERS Total Confort Sec Grande', 'imgs/produtos/FRALDA.jpg', 'Fralda Pampers Confort Sec G 60 unidades	', '9901819', 100, 50, 100, '0', '130.70', '230.70', 22, 2, 13),
(23, 'Shampoo Baby Dove Hidratação Enriquecida 200ML', 'imgs/produtos/DOVE.jpg', 'O shampoo para bebês é suave e deixa o couro cabeludo do seu bebê hidratado e visivelmente saudável.\r\nAjuda a manter os cabelos macios.\r\nTestado por oftalmologista, dermatologista e pediatra.\r\nHipoalergênico e sem lágrimas.\r\nFórmula com pH neutro.\r\nPode ser usado diariamente, adequado para recém-nascidos.\r\n\r\nNão é apenas o corpo do seu bebê que precisa de cuidados. Você sabia que o couro cabeludo é uma das áreas mais sensíveis da pele do seu bebê? É por isso que acreditamos que os melhores shampoos para bebês devem hidratar além de limpar. Enriquecido com 1/4 de creme hidratante, o Baby Dove Shampoo Hidratação Enriquecida vai além da suavidade e ajuda a repor a hidratação e os nutrientes essenciais que o couro cabeludo do bebê pode\r\nperder durante o banho. Sem lágrimas, com pH neutro e testado por oftalmologista, dermatologista e pediatra, esse shampoo permite que você aproveite a hora do banho, sabendo que seu bebê está recebendo cuidados especiais. Os agentes de limpeza de Baby Dove Shampoo Hidratação Enriquecida ajudam os cabelos do seu bebê a ficarem macios e cheirosos. E depois do banho? Vocês podem aproveitar carinhos antes de dormir.', '1062575', 100, 50, 100, '0', '9.90', '12.90', 23, 2, 13),
(24, 'Mingau de Milho Instantâneo Mucilon NESTLÉ Sachê 2', 'imgs/produtos/MUCILON.jpg', 'Cereal para alimentação infantil com probiótico - Milho A partir de 6 meses. Só MUCILON® contém NutriPROTECT+®: A combinação exclusiva da Nestlé de probiótico e nutrientes essenciais, tais como Vitamina A, Vitamina C, Ferro de melhor absorção e Zinco. Os probióticos, tais como os lactobacilos, são micro-organismos vivos importantes em uma flora intestinal saudável. Faz bem saber: Como o bom funcionamento do intestino ajuda a manter o organismo da criança saudável? O bom funcionamento do intestino contribui diretamente para a melhor absorção de vitaminas e minerais, nutrientes importantes para o desenvolvimento da criança. \r\n\r\nIngredientes:\r\nFARINHA DE MILHO ENRIQUECIDA COM FERRO E ÁCIDO FÓLICO, AÇÚCAR, SAIS MINERAIS (FOSFATO DE SÓDIO DIBÁSICO, CARBONATO DE CÁLCIO, FUMARATO FERROSO, SULFATO DE ZINCO), VITAMINAS (VITAMINA C, NIACINA, VITAMINA E, ÁCIDO PANTOTÊNICO, VITAMINA A, VITAMINA B1, VITAMINA B6, ÁCIDO FÓLICO, VITAMINA D) E AROMATIZANTE VANILINA. ALÉRGICOS: PODE CONTER LEITE, TRIGO, CEVADA, CENTEIO E AVEIA. \r\n\r\nModo de Preparo:\r\n1 - Lave as mãos antes de preparar os alimentos do seu filho. Use somente utensílios bem limpos. \r\n2 - Coloque 170ml de leite frio ou morno do pratinho da criança \r\n3 - Adicione 3(três) colheres de sopa de MUCILON®, uma por vez, misturando até ficar homogêneo. \r\n4 - Após o preparo, ofereça imediatamente utilizando uma colher limpa.\r\nEste produto é sensível à umidade, utilize sempre talheres secos e guarde a lata bem tampada. Evite locais quentes e úmidos, como embaixo de pias. \r\nReconstituição: Adicionar 3 colheres de sopa (21g) de Mucilon em 170ml de leite frio ou morno. Oferecer logo após o preparo. Não necessita ir ao fogo. \r\nRendimento: Lata: 19 porções Sachet 230g: 11 porções Sachet 600g: 28 porções.\r\n\r\nCONTÉM GLÚTEN. \r\n\r\nAviso Importante:\r\nO MINISTÉRIO DA SAÚDE ADVERTE: ESTE PRODUTO NÃO DEVE SER USADO PARA CRIANÇAS MENORES DE 6 (SEIS) MESES DE IDADE, A NÃO SER POR INDICAÇÃO EXPRESSA DE MÉDICO OU NUTRICIONISTA. O ALEITAMENTO MATERNO EVITA INFECÇÕES E ALERGIAS E É RECOMENDADO ATÉ OS 2 (DOIS) ANOS DE IDADE OU MAIS.O MINISTÉRIO DA SAÚDE INFORMA: APÓS OS 6 (SEIS) MESES DE IDADE, CONTINUE AMAMENTANDO SEU FILHO E OFEREÇA NOVOS ALIMENTOS.', '1520989', 100, 50, 100, '0', '5.00', '7.20', 24, 2, 13),
(25, 'Shampoo Infantil Suave TURMA DA MÔNICA Leve 400ml ', 'imgs/produtos/MONICA.png', 'Shampoo Infantil Suave TURMA DA MÔNICA Leve 400ml Pague 350ml\r\n', '1076095', 100, 50, 100, '0', '13.60', '16.60', 25, 2, 13),
(26, 'Alimento Nutritivo Sabor Chocolate SUSTAGEN Lata 4', 'imgs/produtos/SUSTAGEN.jpg', 'Ingredientes:\r\nLeite desnatado, sólidos de xarope de milho, leite integral, fosfato de magnésio, ascorbasto de sódio, sulfato ferroso, sulfato de zinco, niacinamina, inositol, iodeto de potássio, acetato de Dl-alfa tocoferol, sulfato de manganês, sulfato cúprico, acetato de vitamina A, fitomenadiona, pantotenato de cálcio, cloridrato de piridoxina, cloridrato de tiamina, cianocobalamina (vitamina B12), riboflavina, ácido fólico e biotina. Contém estabilizante carragena e aroma artificial de baunilha. Aromatizado artificialmente.', '0799614', 100, 50, 100, '0', '35.75', '45.75', 26, 2, 13),
(27, 'Alimento Nutritivo Sabor Banana SUSTAGEN Lata 400g', 'imgs/produtos/BANANA.jpg', 'Ingredientes:\r\nLeite desnatado, solidos de xarope de milho, leite integral, sacarose, vitaminas (ascorbato de sódio, niacinamida, inositol, acetato de dl-alfa tocoferol, acetato de vitamina A, fitomenadiona, pantotenato de cálcio, cloridato de piridoxina, cloridrato de tiamina, cianocabalamina, riboflavina, acido folico e biotina), minerais (fosfato de magnésio, sulfato ferroso, sulfato de zinco, iodeto de potássio, sulfato de manganes e sulfato cuprico).', '0456593', 100, 50, 100, '0', '38.75', '45.75', 26, 2, 13),
(28, 'Toalhinhas Umedecidas Pampers Fresh Clean 288 unid', 'imgs/produtos/TOALHAS.jpg', 'Não tenha medo da bagunça! Trocar o seu bebê pode ser o momento de amor do dia. Os lenços umedecidos Pampers Fresh Clean contam com a exclusiva Textura Soft Grip para uma limpeza confiável e eficiente. Para que o único que o seu bebê sinta enquanto o troca seja seu amor.', '9902138', 100, 50, 100, '0', '57.60', '77.40', 22, 2, 13),
(29, 'Mistura para Mingau Sabor Morango CREMOGEMA Caixa ', 'imgs/produtos/MINGAU MORANGO.jpg', 'Amido de milho, açúcar, vitaminas (A e C), sais minerais (cálcio, fósforo e ferro), aromatizante, corante carmim.\r\nNÃO CONTÉM GLÚTEN.\r\n\r\nInformação Adicional:\r\nCremogema de morango maizena tem nutrientes e vitaminas ideais para o crescimento da criança. Perfeito para mingau e outras receitas para o café da manhã.', '0777940', 100, 50, 100, '0', '3.00', '6.09', 28, 2, 13),
(30, 'Kit com 6 Caixas de Sabão em Pó OMO Puro Cuidado 1', 'imgs/produtos/OMO.jpg', 'Sabão em Pó OMO Puro Cuidado 1kg	', '9901844', 100, 50, 100, '0', '42.00', '67.50', 29, 4, 13),
(31, 'Desinfetante OMO Frescor da Montanha Pisos 900ml', 'imgs/produtos/DESINFETANTE.png', 'Desinfetante OMO Frescor da Montanha Pisos 900ml', '1157624', 100, 50, 100, '0', '4.99', '8.99', 29, 4, 13),
(32, 'Sabão Líquido OMO Multiação 3L', 'imgs/produtos/OMO SABOA.jpg', 'Sabão Líquido OMO Multiação 3 L\r\n\r\nRemova as manchas mais difíceis de primeira com OMO Multiação.\r\nTenha roupas limpas sem precisar esfregar.\r\nEconomize água, pois só precisa de 1 enxágue.\r\nOMO Multiação é recomendado por Brastemp e Consul.\r\nRemova as manchas difíceis como de óleo de cozinha, molho de tomate e sorvete de chocolate, tecido algodão.\r\nOMO acredita que se sujando e experimentando hoje as crianças estão se preparando melhor para o amanhã.\r\nRemove as manchas mais difíceis* até no ciclo rápido com OMO Multiação. Com o detergente líquido OMO Multiação você tem roupas limpas, sem precisar esfregar *Lava Roupas OMO Multiação remove as manchas difíceis como de óleo de cozinha, molho de tomate e sorvete de chocolate, tecido algodão. Lavando com OMO Multiação você economiza água, pois só precisa de 1 enxague. OMO Multiação é recomendado por Brastemp e Consul OMO acredita que se sujando e experimentando hoje as crianças estão se preparando melhor para o amanhã. Tenha uma experiência de alto desempenho com o detergente líquido OMO Multiação. Sua fórmula remove as manchas mais difíceis* até no ciclo rápido. Economize tempo e água, porque com o OMO Multiação você não precisa esfregar as roupas e precisa apenas de 1 enxague.  *Remove no ciclo rápido manchas difíceis como óleo de cozinha, molho de tomate e sorvete de chocolate; tecido algodão\r\n\r\nTenha uma experiência de lavagem e cuidado com as roupas de alto desempenho e performance com OMO Multiação. Líder de mercado, OMO Multiação tem uma fórmula ideal para roupas brancas e coloridas e remove as manchas mais difíceis* de primeira porque bons momentos marcam! OMO cuida das suas roupas enquanto você curte a vida sem se preocupar para não deixar nenhum momento especial passar em branco! Economize também tempo e água, porque com o OMO Multiação você não precisa esfregar as roupas e precisa apenas de 1 enxágue. OMO Multiação remove as manchas difíceis como óleo de cozinha, suco de laranja e sorvete de morango; tecido algodão. Com OMO Multiação você terá roupas impecáveis e mais praticidade no dia a dia! Não há segredos para resultados de primeira! Basta selecionar o programa mais indicado da sua máquina de lavar! OMO Multiação é recomendado por Brastemp e Consul! OMO Multiação é recomendado para a maioria dos tecidos*** e, para dar mais vida a suas roupas com perfume e maciez, adicione em todas as lavagens o amaciante Comfort e depois seque as roupas em um local arejado. E, em caso de manchas específicas, apliquei OMO Tira Manchas seguindo as instruções de pré-lavagem do rótulo.\r\n\r\n', '1003204', 100, 50, 100, '0', '20.00', '25.52', 29, 4, 13),
(33, 'Inseticida Líquido BAYGON Ação Total 500ml', 'imgs/produtos/INSETICIDA.jpg', 'Resolve seus problemas com insetos, pois age contra baratas, formigas, moscas, mosquitos, pernilongos, carapanãs, muriçocas e até contra o mosquito da dengue. Sua embalagem é mais prática e sua tampa, com trava de segurança, dificulta que o produto seja aberto por crianças. Ideal para o uso diário e depois da limpeza.\r\n\r\nComposição:\r\nCipermetrina 0.10%, imiprotrina 0.05% praletrina 0.05%, solvente glicólico, água, surfactantes epreservante.\r\n\r\nInstruções de Uso:\r\nComo abrir a tampa:\r\n1- Com uma das mãos, empurre a trava de segurança para trás.\r\n2- Ao mesmo tempo, levante a parte superior da tampa com a outra mão.\r\n3- Em seguida, rompa completamente o lacre de segurança localizado na parte interna da tampa transfira o produto para um pulverizador, enchendo seu reservatório até a metade para uma melhor aplicação.\r\nContra moscas, mosquitos e pernilongos:\r\n1- Feche o ambiente e certifique-se que todas as pessoas e animais dosméticos estejam fora do local.\r\n2- Pulverize lentamente em todas as direções, mantendo cerca de 1 metro de distância das paredes, móveis e tecidos. Para ambientes de tamanho médio (20m3), pulverize em todas as direções a partir do centro do local de 10 a 15 vezes.\r\n3- Saia do local deixando o produto agir por 15 minutos.\r\n4- Ventile o ambiente em seguida.\r\n5-Pode-se aplicar o produto diretamente sobre o inseto.Contra baratas:\r\n1- Pulverize o produto diretamente sobre baratas atingindo os insetos a uma distância de 0.5 metros, esconderijos, caminhos por onde as baratas passam, locais úmidos, armários e outras áreas de armazenamento, atrás de estantes e aberturas como pias, ralos e tubulações.\r\n2- Na cozinha, pulverize ao redor de geladeiras, fogões e áreas de armazenamento. Repita a operação em caso de presença das baratas.\r\nContra formigas:\r\n1- Pulverize sobre as trilhas de formigas, em torno de portas, janelas e nos locais de entrada do inseto na casa.\r\n\r\nPrecauções:\r\nConserve fora do alcance das crianças e dos animais domésticos. Cuidado! Perigosa sua ingestão, inalação ou absorção pela pele. Durante a aplicação não devem permanecer no local pessoas ou animais domésticos. Não aplicar sobre alimentos e utensílios de cozinha, plantas e aquários. Manter as crianças e animais afastados das áreas tratadas até estarem secas. Não fumar ou comer durante a aplicação. Em caso de intoxicação, procurar o Centro de Intoxicações ou Serviço de - Saúde, levando a embalagem ou o rótulo do produto. Manter o produto na embalagem original. Em caso de contato direto com o produto, lavar a parte atingida com água em abundância e sabão. Proteja os olhos durante a aplicação. Em caso de contato com os olhos, lavar imediatamente com água corrente em abundância. Se inalado em excesso, remover a pessoa para local ventilado. Em caso de emergência médica ligue para 08007010450. Não reutilizar as embalagens vazias. Armazenagem: guardar o produto em area inacessível à criança. Descarte: embrulhe o frasco vazio e coloque-o na coleta de lixo.Perigo ambiental: Este produto é tóxico para peixes. O escoamento do produto em áreas tratadas pode ser perigoso para organismos aquaticos nas áreas vizinhas. Não jogue o produto diretamente em águas ou esgoto.', '3352465', 100, 50, 100, '0', '9.75', '15.75', 30, 4, 13),
(34, 'Removedor sem Cheiro VIMAK 500ml', 'imgs/produtos/VIMAK.jpg', 'Removedor vimak é um solvente mineral especial para limpeza em geral. Uso Doméstico\r\nPara remover manchas de gordura em roupas, pisos, assoalhos, carpetes, tapetes, cortinas e estofado\r\nPara remover tinta de pincéis, rolos e diluir tintas feitas à base de óleo de linhaça.Lavanderias e indústrias\r\nLavagem à seco de tecidos de algodão, seda ou lã, roupas, estofados, cortinas e tapetes, limpeza de tipos gráficos e rolos de máquinas impressoras. Oficinas e mecânicas\r\nRemoção e limpeza de graxas e resíduos oleosos de peças mecânicas. Limpeza de motores e máquinas de montagem e desmontagem.', '1039443', 100, 50, 100, '0', '21.00', '27.49', 31, 4, 13),
(35, 'Cera Líquida Pronto Brilho GRAND PRIX 200ml', 'imgs/produtos/GRAND PRIX.png', 'Silicones, surfactante, solvente, abrasivo, preservante, perfume e água. Informação Adicional:\r\nContém silicones que aderem rapidamente à pintura, tornando a tarefa de encerar mais rápida.', '5369621', 100, 50, 100, '0', '26.90', '32.90', 32, 4, 13),
(37, 'Cerveja SKOL Beats Senses Lata 269ml', 'imgs/produtos/skol.jpg', 'Vanguardista e à frente das tendências, Skol Beats foi desenvolvida para acompanhar o consumidor em uma boa balada. Moderna e inovadora nasceu do primeiro festival de música eletrônica do país, que levava o seu nome e foi realizado durante oito anos em São Paulo.', '1064020', 100, 50, 100, '0', '2.79', '4.79', 34, 14, 13),
(38, 'Refresco em Pó MID Jabuticaba 25g', 'imgs/produtos/MID.jpg', 'Açúcar, polpa de jabuticaba desidratada (1%), vitamina C (ácido ascórbico), acidulate (ácido cítrico), regulador de acidez (citrato de sódio), antiumectante (fosfato tricálcico), edulcorantes artificiais (por 100ml: aspartame 26,7 mg e acessulfame de potássio 4,9 mg) aromatizante (aroma idêntico ao natural de jabuticaba), estabilizantes (carboximetilcelulose e goma xantana), corante inorgânico (dióxido de titânio), corantes artificiais (vermelho 40 e azul brilhante FCF) e corante natural (caramelo IV). \r\n\r\nInformação Adicional:\r\nContém fenilalanina. \r\n\r\nNÃO CONTÉM GLÚTEN.', '1004493', 100, 50, 100, '0', '0.37', '0.87', 35, 6, 13),
(39, 'Refrigerante ANTARCTICA Guaraná Garrafa 3,3 Litros', 'imgs/produtos/ANTARTICA.jpg', 'Água gaseíficada, açúcar e extrato vegetal de guaraná, aroma natural, acidulante: ácido cítrico, conservadores: sorbato de potássio e benzoato de sódio, corante: caramelo tipo IV. \r\nNÃO CONTÉM GLÚTEN.', '5564583', 100, 50, 100, '0', '5.00', '7.99', 36, 6, 13),
(41, 'Whisky Escocês JOHNNIE WALKER Red Label Garrafa 75', 'imgs/produtos/red.png', 'Johnnie Walker Red Label é o blend pioneiro que lançou o nosso whisky no mundo. Muito versátil e universalmente atraente, com sabor intenso e vigoroso que se destaca mesmo quando misturado. Johnnie Walker Red Label é o whisky escocês mais vendido no mundo. Perfeito para festas e encontros entre amigos, tanto em casa como fora. \r\nGRADUAÇÃO ALCÓOLICA\r\nGrad. Alc. 40% vol.\r\n\r\nVenda e consumo proibido para menores de 18 anos.\r\nSe beber não dirija.', '1111759', 100, 50, 100, '0', '50.00', '91.12', 37, 14, 13),
(42, 'Refrigerante FANTA Laranja Garrafa 3 Litros', 'imgs/produtos/fanta laranja.jpg', 'Refrigerante FANTA Laranja Garrafa 3 Litros\r\n', '4163428', 100, 50, 100, '0', '4.50', '6.99', 38, 6, 13),
(43, 'Tequila Mexicana Especial JOSÉ CUERVO Garrafa 750m', 'imgs/produtos/tequila.png', 'Destilado alcoólico de AGAVE.', '1114355', 100, 50, 100, '0', '70.00', '132.90', 39, 14, 13),
(45, 'Cerveja HEINEKEN Garrafa 600ml', 'imgs/produtos/HEINEKEN.jpg', 'Água, malte e lúpulo.\r\nCONTÉM GLÚTEN.', '5100446', 100, 50, 100, '0', '5.00', '7.49', 40, 14, 13),
(46, 'Cerveja BUDWEISER Lata 269ml', 'imgs/produtos/BUDWEISER.jpg', 'O processo de produçãoda Budweiser é diferenciado, por utilizar lascas de Beechwood (madeira especial) durante os processos de fermentação e maturação. O resultado é um cerveja de sabor único e com equilíbrio perfeito: marcante no início e suave no final.\r\n', '1079027', 100, 50, 100, '0', '1.20', '1.19', 41, 14, 13),
(47, 'Picanha Resfriada Maturatta FRIBOI Peça 1,300kg', 'imgs/produtos/FRIBOI.jpg', 'Picanha resfriada maturatta.\r\nNÃO CONTÉM GLÚTEN', '0049009', 100, 50, 100, '0', '60.00', '71.99', 42, 7, 13),
(48, 'Desodorante Aerossol NIVEA Sensitive Pure 150ml', 'imgs/produtos/desodorante.jpg', 'Butane, Isobutane, Propane, Cyclomethicone, Aluminum Chlorohydrate, Dimethicone, Disteardimonium Hectorite, Octyldodecanol, Butyloctanoic Acid, Allantoin, Persea Gratissima Oil, Glycine Soja Oil, Tocopheryl Acetate, Bisabolol, BHT, Chamomilla Recutita Flower Extract, Parfum. Informação Adicional:48h de proteção eficaz antitranspirante e cuidado extra suave NIVEA\r\nEspecialmente desenvolvido para peles sensíveis\r\nCom extrato de camomila e óleo de abacate que acalmam e protegem a pele\r\nSem álcool, corantes e conservantes e fragrância neutra.', '4941446', 100, 50, 100, '0', '6.00', '11.25', 43, 3, 13),
(51, 'Absorvente Interno INTIMUS Mini Caixa com 8 Unidad', 'imgs/produtos/absor.jpg', 'Rayon, polietileno, poliéster e viscose.', '5340545', 100, 50, 100, '0', '6.09', '8.09', 45, 3, 13),
(52, 'Shampoo HEAD & SHOLUDERS Prevenção Contra Queda 40', 'imgs/produtos/shampoo.png', 'O melhor contra a caspa. Clinicamente comprovado.\r\n* Teste clínico de três semanas comparando formações anticaspa vendidas em lojas regulares.\r\nDisclaimer: *Com uso conjunto ao shampoo head&shoulders.', '4363972', 100, 50, 100, '0', '15.99', '23.90', 46, 3, 13),
(54, 'PUDIM CANECA CHOC', 'imgs/produtos/pudim de caneca.jpg', 'Ingredientes:\r\nAçúcar, amido modificado, cacau em pó, sal, estabilizante goma xantana e aromatizante.\r\nNÃO CONTÉM GLÚTEN.', '1022455', 100, 50, 100, '0', '1.00', '3.55', 47, 17, 13),
(55, 'Sorvete Frutas Tropicais PORTOFINO 1,5 Litros', 'imgs/produtos/SORVETE.png', 'Sorvete Frutas Tropicais PORTOFINO 1,5 Litros\r\n', '1115917', 100, 50, 100, '0', '11.50', '16.50', 48, 17, 13),
(58, 'Sorvete Cremosíssimo 4 em 1 KIBON Pote 2 Litros', 'imgs/produtos/LEITE.jpg', 'Sorvete Cremosíssimo 4 em 1 KIBON Pote 2 Litros\r\n', '1135774', 100, 50, 100, '0', '10.00', '16.90', 49, 17, 13),
(59, 'Torta Holandesa MISS DAISY 470g', 'imgs/produtos/TORTA.jpg', 'Creme de leite, açúcar, pão de ló (farinha de trigo enriquecida com ferro e ácido fólico, ovo, açúcar, água, chocolate em pó, amido modificado, emulsificantes; Mono e diglicerídeos de ácidos graxos (INS 471) e monooleato de sorbitana (INS 494), conservador ácido sórbico (INS 200) e fermentos químicos: Pirofosfato dissódico (INS 450i), bicarbonato de sódio (INS 500ii) e fosfato moocálcico (INS 341i), água, margarina, biscoito coberto com chocolate ao leite, gema de ovo, chocolate em pó, amido modificado, leite em pó, óleo vegetal parcialmente.\r\nCONTÉM GLÚTEN.', '1434262', 100, 50, 100, '0', '30.00', '37.25', 50, 17, 13),
(60, 'Pó para Manjar de Coco com Calda de Ameixa Dr. OET', 'imgs/produtos/manjar.jpg', 'Ingredientes do Manjar:\r\nAçúcar, amido, coco ralado, sal, espessante carragena e aromatizante.\r\n\r\nCalda:\r\nAçúcar, amido modificado, polpa de ameixa, sal, espessante carragena e goma guar, aromatizantes e corantes tartazina, amarelo crepúsculo, Bordeaux S, caramelo IV e azul brilhante FCF.\r\n\r\nNÃO CONTÉM GLÚTEN.', '3362938', 100, 50, 100, '0', '5.00', '7.95', 47, 17, 13),
(61, 'Kit com 3 Leite Condensado PIRACANJUBA 395g Cada', 'imgs/produtos/CONDENSADO.png', 'Leite Condensado PIRACANJUBA 395g	', '99001017', 100, 50, 100, '0', '5.30', '8.97', 51, 17, 13),
(62, 'Creme de Castanha de Caju Orgânico Cajuella CHOKOL', 'imgs/produtos/creme de caju.jpg', 'Creme de Castanha de Caju Orgânico Cajuella CHOKOLAH 120g', '1109811', 100, 50, 100, '0', '10.00', '19.99', 52, 17, 13),
(63, 'Leite Condensado NILZA 395g', 'imgs/produtos/leite condensado.jpg', 'Leite Condensado NILZA 395g', '1119109', 100, 50, 100, '0', '2.00', '4.29', 53, 17, 13),
(64, 'Sabonete JOHNSON´S Mel e Linhaça 90g', 'imgs/produtos/SABONETE.jpg', 'Sabonete JOHNSON´S Mel e Linhaça 90g\r\n', '1099657', 100, 50, 100, '0', '1.00', '1.49', 21, 2, 13),
(66, 'Frango com Creme de Milho e Arroz SEARA Rotisserie', 'imgs/produtos/frango.jpg', 'Frango com Creme de Milho e Arroz SEARA Rotisserie 350g', '1150611', 100, 50, 100, '0', '8.99', '14.99', 54, 9, 13),
(68, 'Tekitos Pedaços de Frango SEARA Caixa 300g', 'imgs/produtos/tekitos.jpg', 'Ingredientes:\r\nCarne de frango, farinha de rosca, água, carne de peru, pele de frango, gordura vegetal hidrogenada, proteína texturizada de soja, farinha de arroz, farinha de trigo enriquecida com ferro e ácido folico, amido, amido modificado, proteína de soja, sal, molho de soja fermentado (soja, trigo integral, sal e aromas naturais), vinagre, leite em pó, proteínas vegetal hidrolisada, ovo em pó, condimento natural, estabilizante polifosfato de sódio (INS 452i), antioxidante eritorbato de sódio (INS 316), aromas naturais e de pimenta branca, realçador de sabor glutamato monossódico (INS 621), espessante goma guar (INS 412).\r\nCONTÉM GLÚTEN.Informação Adicional:\r\nNão possui informação com relação a preparo no microondas.', '3854877', 100, 50, 100, '0', '4.00', '7.09', 54, 9, 13),
(70, 'Escova Dental JOHNSON''S Professional Média Nº 40', 'imgs/produtos/escova.jpg', 'Escova Dental JOHNSON''S Professional Média Nº 40\r\n', '0791106', 100, 50, 100, '0', '7.00', '11.50', 21, 10, 13),
(71, 'Iogurte com Polpa de Morango DANONE 540g', 'imgs/produtos/DANONE.png', 'ngredientes:\r\nLeite integral e/ou leite integral reconstituído, açúcar líquido, preparado de fruta (água, frutose, polpa de morango, amido modificado, espessante goma xantana, aromatizante, acidulante ácido cítrico, conservador sorbato de potássio e corante artificial azorrubina), leite em pó desnatado, amido modificado, frutose, fermento lácteo e estabilizante pectina.\r\nCONTÉM GLÚTEN. ', '1008177', 100, 50, 100, '0', '4.00', '6.25', 56, 17, 13),
(72, 'Iogurte Grego Sabor Fondue Chocolate e Morango DAN', 'imgs/produtos/GREGO.png', 'Iogurte Grego Sabor Fondue Chocolate e Morango DANONE 100g', '1097793', 100, 50, 100, '0', '0.99', '1.99', 56, 17, 13),
(73, 'Iogurte Líquido com Polpa de Vitaminas DANONE 900g', 'imgs/produtos/FRUTAS.png', 'Leite integral e/ou leite integral reconstituído, xarope de açúcar preparado de vitamina (água, açúcar, polpa de banana, polpa de maçã, polpa de mamão, amido modificado, aromatizantes, corantes naturais caroteno e carmim cochonilha, acidulante ácido cítrico, espessantes goma xantana e carboximetilcelulose e conservador sorbato de potássio), amido modificado e fermentado lácteo.\r\nCONTÉM GLÚTEN. Pode conter traços de castanha de caju.', '1008194', 100, 50, 100, '0', '6.00', '8.49', 56, 17, 13),
(75, 'Enxaguante Bucal COLGATE Plax Ice Glacial 500ml Pr', 'imgs/produtos/enxaguante.jpg', 'Enxaguante Bucal COLGATE Plax Ice Glacial 500ml Promo Pague 350ml', '1113490', 100, 50, 100, '0', '8.99', '16.50', 57, 10, 13),
(76, 'Iogurte Líquido com Polpa de Morango Tamanho Famíl', 'imgs/produtos/MORANGO.png', 'Iogurte Líquido com Polpa de Morango Tamanho Família DANONE Garrafa 1,35kg\r\n', '1029425', 100, 50, 100, '0', '11.48', '14.48', 56, 17, 13),
(77, 'Requeijão Cremoso Tradicional DANONE 200g', 'imgs/produtos/DANONEREQUEIJAO.png', 'Requeijão Cremoso Tradicional DANONE 200g\r\n', '1035645', 100, 50, 100, '0', '4.35', '6.35', 56, 13, 13),
(78, 'Steak de Frango SEARA 100g', 'imgs/produtos/STEAK.jpg', 'Carne mecanicamente recuperada de frango, água, pele de frango, fécula de mandioca, gordura vegetal hidrogenada, proteína vegetal de soja, farinha de milho, farinha de trigo, estabilizante tripolifosfato de sódio, sal, antioxidante eritorbato de sódio, especiarias naturais (cebola, pimenta, alho, pimenta-branca), suco de limão, realçador de sabor glutamato monossódico, açúcar e espessante carragena.\r\nCONTÉM GLÚTEN.', '1399165', 100, 50, 100, '0', '1.00', '1.55', 54, 13, 13),
(79, 'Fio Dental GUM ortodôntico 22,9m', 'imgs/produtos/fio dental.jpg', 'Fio Dental GUM ortodôntico 22,9m', '2490533', 100, 50, 100, '0', '10.00', '21.25', 58, 10, 13),
(80, 'Pizza de Mussarela SEARA 440g', 'imgs/produtos/PIZA.jpg', 'Farinha de trigo adicionada de ferro, ácido fólico, tiamina, riboflavina e niacina, queijo mussarela (leite, fermento lácteo, sal e coalho), água, tomate, azeitona preta, óleo vegetal de girassol, sal, açúcar, orégano, alho e antioxidantes: mistura concentrada de tocoferóis e alfa-tocoferol.\r\n', '4332565', 100, 50, 100, '0', '9.90', '12.90', 54, 13, 13),
(81, 'Escova Dental COLGATE Extra Clean Média 1un', 'imgs/produtos/escova.png', 'Com limpador de língua suave que ajuda a remover cuidadosamente as bactérias use causam mal hálito. Tem cerdas multinível que alcançam os dentes do fundo e limpam as áreas difíceis de alcançar.\r\n\r\nInstrução de uso:\r\nEscove seus dentes sempre após as refeições e antes de dormir ou conforme orientação do seu dentista.\r\nDentistas recomendam a troca da escova a cada 3 meses.', '0977005', 100, 50, 100, '0', '3.00', '6.95', 57, 10, 13),
(82, 'Pizza de 4 Queijos SEARA 460g', 'imgs/produtos/PIZZA SEARA.jpg', 'Farinha de trigo adicionada de ferro, ácido fólico, tiamina, riboflavina e niacina, água, queijo mussarela, queijo provolone, queijo fundido sabor roquefort, queijo dambo, tomate, queijo fundido sabor port-salut, óleo vegetal de girassol, sal, açúcar, orégano, alho e antioxidantes: mistura concentrada de tocoferóis e alfa-tocoferol.\r\n\r\nCONTÉM GLÚTEN.', '4332466', 100, 50, 100, '0', '10.00', '12.90', 54, 13, 13),
(84, 'Mortadela Defumada Fatiada SADIA Soltíssimo Bandej', 'imgs/produtos/MORTADELA.jpg', 'Mortadela Defumada Fatiada SADIA Soltíssimo Bandeja 200g', '1050350', 100, 50, 100, '0', '4.00', '5.39', 59, 12, 13),
(85, 'Queijo Mussarela Fatiada SADIA Soltíssimo Bandeja ', 'imgs/produtos/queijosadia.jpg', 'Queijo Mussarela Fatiada SADIA Soltíssimo Bandeja 200g', '1399035', 100, 50, 100, '0', '7.00', '9.99', 59, 12, 13),
(86, 'Presunto Cozido Magro Fatiado SADIA Soltíssimo Ban', 'imgs/produtos/presunto.jpg', 'Presunto Cozido Magro Fatiado SADIA Soltíssimo Bandeja 200g\r\n', '1050338', 100, 50, 100, '0', '7.00', '9.15', 59, 12, 13),
(88, 'Abacaxi Hawai Unidade', 'imgs/produtos/ABACAXI.jpg', 'NÃO CONTÉM GLÚTEN.\r\n', '2173597', 100, 50, 100, '0', '4.99', '6.99', 60, 8, 13),
(91, 'Abacate Bandeja com 2 Unidades', 'imgs/produtos/abacate.jpg', 'Abacate.\r\nNÃO CONTÉM GLÚTEN.', '0247023', 100, 50, 100, '0', '7.00', '8.39', 61, 8, 13),
(92, 'Banana Nanica 1kg', 'imgs/produtos/banananica.jpg', 'Banana nanica.\r\nNÃO CONTÉM GLÚTEN.', '0250399', 100, 50, 100, '0', '2.19', '4.19', 61, 8, 13),
(93, 'Banana Terra 1kg', 'imgs/produtos/bananaterra.jpg', 'Banana Terra.\r\nNÃO CONTÉM GLÚTEN.', '0258548', 100, 50, 100, '0', '6.96', '8.96', 61, 8, 13),
(94, 'Coco Seco Unidade', 'imgs/produtos/coco.jpg', 'Coco seco.\r\nNÃO CONTÉM GLÚTEN.', '0258630', 100, 50, 100, '0', '5.00', '7.73', 61, 8, 13),
(95, 'Laranja Pera 1kg', 'imgs/produtos/laranjapera.jpg', 'Laranja pêra.\r\nNÃO CONTEM GLUTÉN.', '0247399', 100, 50, 100, '0', '2.00', '3.39', 61, 8, 13),
(96, 'Melancia Unidade', 'imgs/produtos/MELANCIA.jpg', 'Peso Aproximadamente 15kg.\r\n', '0238045', 100, 50, 100, '0', '20.00', '25.05', 61, 8, 13),
(97, 'Pera WILLIANS Bandeja com 4 Unidades', 'imgs/produtos/PERA.jpg', 'Pêra willians.\r\nNÃO CONTÉM GLÚTEN.', '0248037', 100, 50, 100, '0', '7.00', '10.77', 62, 8, 13),
(102, 'Pimentão Vermelho 500g', 'imgs/produtos/VERMELHHO.jpg', 'Pimentão Vermelho 500g\r\n', '1099914', 100, 50, 100, '0', '4.00', '5.75', 61, 8, 13),
(103, 'Batata Palito Pré Frita Congelada EASY FRIES Pacot', 'imgs/produtos/BATATA FRITA.jpg', 'Natural com sabor caseiro.\r\nMANTER CONGELADO.', '1096523', 100, 50, 100, '0', '10.90', '12.90', 63, 9, 13),
(108, 'Tentáculos de Polvo Congelado QUALIMAR Bandeja 250', 'imgs/produtos/POLVO.png', 'Tentáculos de Polvo Congelado QUALIMAR Bandeja 250g\r\n', '5426591', 100, 50, 100, '0', '39.00', '44.00', 64, 9, 13),
(109, 'Mandioca Congelada Supreme SEARA Pacote 600g', 'imgs/produtos/MANDIOCA.jpg', 'Mandioca Congelada Supreme SEARA Pacote 600g\r\n', '1084588', 100, 50, 100, '0', '11.00', '14.25', 54, 9, 13),
(110, 'Ervilha Congelada TAEQ Pacote 300g', 'imgs/produtos/ERVILHA.jpg', 'Ervilha Congelada TAEQ Pacote 300g\r\n', '1045630', 100, 50, 100, '0', '3.00', '4.19', 65, 9, 13),
(111, 'Vinho Brasileiro Branco Colheita Tardia AURORA Gar', 'imgs/produtos/VINHO.png', 'Tipo:\r\nVinho Brasileiro Branco.\r\nELABORAÇÃO\r\nPaís de Origem:\r\nBrasil.\r\nRegião:\r\nBento Gonçalves-RS.\r\nProdutor:\r\nAurora.\r\nUva(s):\r\nSemillon e Malvasia.\r\nTeor Alcoólico:\r\n12,5%.\r\n\r\nCARACTERÍSTICAS\r\nVisual:\r\nColoração amarelo ouro.\r\nOlfativa:\r\nAroma de nozes castanhas, flores brancas e mel.\r\nGustativa:\r\nSuave e aveludado.\r\nHarmonização:\r\nIdeal com sobremesas como fondue de chocolate, mousse de maracujá, torta de limão, Tiramisu e suflê de baunilha. Muito bom também com queijos de mofo azul, como Roquefor e Gorgonzola.\r\nTemperatura.\r\n10°C - 12°C.\r\n\r\nNÃO CONTÉM GLÚTEN.', '2382760', 100, 50, 100, '0', '28.00', '31.90', 66, 14, 13),
(112, 'Farinha de Mandioca Grossa YOKI Pacote 1kg', 'imgs/produtos/YOKI.jpg', 'Farinha de Mandioca Grossa YOKI Pacote 1kg\r\n', '7233876', 100, 50, 100, '0', '8.25', '10.25', 67, 16, 13),
(115, 'Farinha de Milho em Flocos Kimilho YOKI Pacote 500', 'imgs/produtos/kimilho.png', 'Farinha de milho enriquecida com ferro e ácido fólico.\r\n\r\nCONTÉM GLÚTEN.', '0790543', 100, 50, 100, '0', '2.00', '3.89', 67, 16, 13),
(116, 'Aveia em Flocos Regulares NESTLÉ Caixa 170g', 'imgs/produtos/aveiaemflocos.jpg', 'Aveia em flocos, farinha de trigo enriquecida com ferro e acido folico( da qual 53% é farinha integral), acucar, maltodextrina, inulina, aromatizantes, antiumectante carbonato de calcio e regulador de acides folsfato dissodico.\r\n\r\nCONTÉM GLÚTEN. \r\n\r\nModo de Preparo:\r\nMisture 4 colheres de sopa (28g) de NESFIT Aveia Instantânea com 150ml de leite morno e está pronto! MINGAU: Misture 4 colheres de sopa (28g) de NESFIT Aveia Instantânea com 100ml de leite morno e está pronto!', '1076503', 100, 50, 100, '0', '2.65', '4.65', 24, 16, 13),
(117, 'Kit com 3 Pipocas para Microondas Manteiga YOKI 10', 'imgs/produtos/pipocas.jpg', 'Pipoca para Microondas Manteiga YOKI 100g	', '9901756', 100, 50, 100, '0', '3.50', '5.55', 67, 16, 13),
(118, 'Farinha de Aveia Integral TAEQ Caixa 200g', 'imgs/produtos/aveia.jpg', 'Farinha de aveia.\r\nCONTÉM GLÚTEN.', '7846298', 100, 50, 100, '0', '1.19', '2.19', 65, 16, 13),
(119, 'Grão de Bico YOKI Pacote 500g', 'imgs/produtos/graodebico.png', 'Grão de bico.\r\n\r\nNÃO CONTÉM GLÚTEN.', '1123265', 100, 50, 100, '0', '10.75', '12.75', 67, 16, 13),
(120, 'Café Torrado em Grão OCTAVIO Pacote 500g', 'imgs/produtos/cafeotavio.png', 'Café Torrado em Grão OCTAVIO Pacote 500g\r\n', '1008403', 100, 50, 100, '0', '29.90', '34.90', 68, 16, 13),
(121, 'Pão Integral Grão Sabor Freekeh e Noz-Pecã WICKBOL', 'imgs/produtos/WICKBOLD.png', 'Pão Integral Grão Sabor Freekeh e Noz-Pecã WICKBOLD 400g\r\n', '1097903', 100, 50, 100, '0', '7.15', '9.15', 69, 16, 13),
(122, 'Licor Alemão 700ml - Jägermeister', 'imgs/produtos/LICOR.png', 'Licor Alemão 700ml - Jägermeister', '4319382', 100, 50, 100, '0', '129.90', '100.00', 71, 14, 13),
(123, 'Cerveja STELLA ARTOIS Garrafa 275ml - Caixa com 12', 'imgs/produtos/stela.jpg', 'Cerveja STELLA ARTOIS Garrafa 275ml	 \r\nQuantidade: 12', '9900906', 100, 50, 100, '0', '37.00', '41.88', 72, 14, 13),
(124, 'Espumante Nacional Meio Doce SALTON Garrafa 660ml', 'imgs/produtos/ESPUMANTE.jpg', 'Espumante meio doce.\r\n\r\nElaboração\r\nPaís de Origem:\r\nBrasil.\r\nRegião:\r\nSerra Gaúcha.\r\nProdutor:\r\nSalton.\r\nUva (s):\r\nMoscato e Saint Émillion.\r\nTeor Alcoólico:\r\n11%.\r\n\r\nCaracterísticas:\r\nVisual:\r\nBrilhante de coloração amarelo palha, perlage abundante de pequenas borbulhas, que produzem uma fina espuma branca.\r\nOlfativa:\r\nAroma de flores e frutas cítricas, pêra e maçã verde.\r\nGustativa:\r\nSabor suave, macio, cremoso e harmônico. .\r\nCorpo::\r\nLeve\r\nHarmonização:\r\nComo aperitivo, com doces, pudim, tortas, cremes doces, peixes e frutos do mar.\r\nTemperatura Ideal de Consumo:\r\n6° - 8°C. \r\n\r\nNÃO CONTÉM GLÚTEN.', '1708691', 100, 50, 100, '0', '23.00', '27.75', 73, 14, 13),
(125, 'Cerveja ESTRELLA GALICIA sem Álcool Garrafa 250ml', 'imgs/produtos/SESTRELLA.png', 'Cerveja ESTRELLA GALICIA sem Álcool Garrafa 250ml\r\n', '1045911', 100, 50, 100, '0', '1.89', '3.89', 74, 14, 13),
(127, 'Kit com 2 Cervejas HEINEKEN Barril 5 Litros', 'imgs/produtos/BARRIL.jpg', 'Cerveja HEINEKEN Barril 5 Litros	', '9901931', 100, 50, 100, '0', '115.80', '123.80', 40, 14, 13),
(128, 'Coxão Mole Resfriado DO CHEF Bandeja 290g', 'imgs/produtos/DOCHEF.jpg', 'Coxão Mole Resfriado DO CHEF Bandeja 290g\r\n', '0164986', 100, 50, 100, '0', '9.40', '11.40', 75, 7, 13),
(129, 'Carne Seca Bovina Traseiro Jerk Beef FRIBOI 400g', 'imgs/produtos/CARNE SECA.jpg', 'Carne Seca Bovina Traseiro Jerk Beef FRIBOI 400g\r\n', '1113296', 100, 50, 100, '0', '13.00', '16.39', 42, 7, 13),
(130, 'Coração da Alcatra Resfriada Maturatta FRIBOI 1,2k', 'imgs/produtos/ALCATRA.jpg', 'Miolo de alcatra. \r\nNÃO CONTÉM GLÚTEN', '0029643', 100, 50, 100, '0', '27.00', '31.09', 42, 7, 13),
(131, 'Carne Moída Dianteiro DO CHEF Bandeja 500g', 'imgs/produtos/CARNE MOIDA.jpg', 'Carne Moída Dianteiro DO CHEF Bandeja 500g\r\n', '1080934', 100, 50, 100, '0', '9.00', '13.99', 75, 7, 13),
(132, 'Fraldinha Bovina Resfriada FRIBOI 1,2kg', 'imgs/produtos/FRALDINHA.jpg', 'Fraldinha Bovina Resfriada FRIBOI 1,2kg\r\n', '0131612', 100, 50, 100, '0', '21.00', '26.39', 42, 7, 13),
(134, 'Costela Suína Especial Line SEARA 700g', 'imgs/produtos/COSTELA.jpg', 'Costela Suína Especial Line SEARA 700g\r\n', '0167444', 100, 50, 100, '0', '13.00', '17.11', 54, 7, 13),
(135, 'Filé de Peito de Frango Assa Fácil com Ervas SEARA', 'imgs/produtos/FILE.jpg', 'Filé de Peito de Frango Assa Fácil com Ervas SEARA Pacote 800g\r\n', '1070561', 100, 50, 100, '0', '9.00', '12.59', 54, 7, 13),
(136, 'Bife de Filé Mignon Bovino Resfriado DO CHEF Bande', 'imgs/produtos/BIFE CO CHEF.jpg', 'Bife de Filé Mignon Bovino Resfriado DO CHEF Bandeja 290g\r\n', '0165242', 100, 50, 100, '0', '14.00', '18.90', 75, 7, 13),
(141, 'Linguiça de Frango Defumada SADIA 480g', 'imgs/produtos/frangocarnefrango.jpg', 'Linguiça de Frango Defumada SADIA 480g\r\n', '1057093', 100, 50, 100, '0', '10.00', '15.90', 59, 7, 13),
(142, 'Lã de Aço BOMBRIL Pacote 60g com 8 Unidades', 'imgs/produtos/BOMBRIL.jpg', 'Composição:\r\nAço carbono.\r\n\r\n\r\nInformação Adicional:\r\nEvitar o uso em superfícies polidas, pintada, antiaderentes e acrílicas. Não utilizar em locais por onde passa corrente elétrica.', '0249874', 100, 50, 100, '0', '0.95', '1.95', 77, 4, 13),
(143, 'Kit com 6 Detergente Líquido YPÊ de Coco 500ml', 'imgs/produtos/YPE.jpg', 'Detergente Líquido YPÊ de Coco 500ml	', '9901918', 100, 50, 100, '0', '8.10', '11.10', 78, 4, 13),
(144, 'Detergente Líquido LIMPOL Neutro 500ml', 'imgs/produtos/LIMPOL.png', 'Tensoativos aniônicos, Glicerina, coadjuvante, preservantes, sequestrante, espessantes, corantes e veículo. Componente ativo; linear alquilbenzeno sulfanato de sódio. Contém tensoativo biodegradável.\r\n\r\n\r\nInformação Adicional:\r\nFormulado com uma composição equilibrada de detergente que aumentam a sua eficiência na remoção de gorduras de louças, talheres e panelas.', '0253437', 100, 50, 100, '0', '0.75', '1.75', 79, 4, 13),
(145, 'Kit RECKITT Limpeza Total Poderosos da Casa com 4 ', 'imgs/produtos/RECKITT.jpg', 'Odorizador de Ambientes BOM AR Air Wick Lavanda Aerossol 360ml Grátis 20%  - 1\r\n\r\nInseticida SBP Noites Tranquilas 270ml	1\r\nLimpador Multi - Uso VEJA Gold Original 500ml - 1\r\n\r\nLustra Móveis Lavanda POLIFLOR Frasco 200ml - 1', '9901975', 100, 50, 100, '0', '25.00', '33.28', 80, 4, 13),
(146, 'Água Sanitária SUPER CANDIDA 2 Litros', 'imgs/produtos/SUPER CANDIA.png', 'hipoclorito de sódio, hidróxido de sódio, cloreto de sódio e água. Teor de cloro ativo: 2,0% a 2,5% p/p. PRODUTO À BASE DE CLORO.\r\n\r\ninformação Adicional:\r\nPara lavagem de roupas, remoção de manchas, limpeza de banheiros e pias, limpeza de vidros, louças, porcelanas, mármores, plásticos e cerâmicas, vasos sanitários e ralos, desinfecção de frutas, verduras e legumes.', '3197158', 100, 50, 100, '0', '2.00', '4.25', 81, 4, 13),
(147, 'Creme Dental Branqueador COLGATE Luminous White 70', 'imgs/produtos/COLGATE.jpg', 'Creme Dental Colgate LUMINOUS WHITE 90G.\r\n\r\nCaracterísticas e Benefícios: \r\nColgate ® Luminous White com micro-cristais que aceleram o branqueamento, contém ingredientes semelhantes aos usados pelos dentistas. Remove manchas com segurança e previne a formação de tártaro para te ajudar a obter um tom mais branco em uma semana.\r\n\r\nIngredientes Ativos: \r\nFluoruro de Sodio 0,32% (1450 ppm de Flúor), Triclosano 0,3%. Aqua / Agua, Sorbitol, Hydrated Silica / Sílica Hidratada, Sodium Lauryl Sulfate / Laurilsulfato de Sodio, PVM/MA Copolymer / Copolímero PVM/MA, Aroma / Sabor Carragenina.\r\n\r\nInstruções de Uso: \r\nEscove os dentes adequadamente após cada refeição, três vezes ao dia ou segundo a recomendação de seu dentista. Enxágue completamente depois da escovação.', '4804031', 100, 50, 100, '0', '2.99', '5.99', 57, 10, 13),
(148, 'Papel Higiênico Folha Dupla Neutro Compacto NEVE P', 'imgs/produtos/NEVE.png', 'Composição:\r\n100% fibra celulósicas, picotado e gofrado, produto não perecível.\r\n\r\nInformação Adicional\r\nContém 8 rolos de 30mx10cm', '4847434', 100, 50, 100, '0', '9.90', '13.90', 82, 10, 13),
(149, 'Papel Higiênico Folha Dupla Neutro PERSONAL Vip Le', 'imgs/produtos/PERSONALL.jpg', 'Papel Higiênico Folha Dupla Neutro PERSONAL Vip Leve 12 Pague 11 Rolos de 30m Cada\r\n', '1028238', 100, 50, 100, '0', '13.00', '17.57', 83, 10, 13),
(150, 'Desodorante Roll On REXONA Men Motionsense Antibac', 'imgs/produtos/rexona.jpg', 'Desodorante Roll On REXONA Men Motionsense Antibacterial + Invisible 50ml', '1121005', 100, 50, 100, '0', '5.00', '9.35', 84, 3, 13),
(151, 'Creme Dental Infantil TANDY Tutti-Frutti 50g - Com', 'imgs/produtos/TANDY.jpg', 'Creme Dental Infantil COLGATE TANDY Tutti Frutti Gel 50g	', '9901469', 100, 50, 100, '0', '12.00', '16.77', 85, 10, 13),
(152, 'Aparelho Recarregável Feminino VENUS Breeze Gillet', 'imgs/produtos/venus.png', 'Gillette Venus Breeze é a novidade revolucionária da Gillette Venus! \r\n\r\nCaracterísticas: \r\nPossui 3 lâminas e barras de gel integradas, que liberam lubrificantes em contato com a água, eliminando assim a necessidade de usar sabonete ou qualquer gel de depilação.\r\nBarras de gel integradas\r\n3 lâminas da Gillette Venus\r\ncabeça móvel\r\ncabo anti-deslizante especialmente desenvolvido para as mulheres\r\n', '1062870', 100, 50, 100, '0', '20.00', '29.99', 86, 3, 13),
(153, 'Kit Higiene Bucal COLGATE - Com 4 Unidades', 'imgs/produtos/KIT HIGIENE BUCAL COLGATE.jpg', 'CONTÉM:\r\n\r\nCreme Dental Branqueador COLGATE \r\n\r\nLuminous White 70g\r\n\r\nFio Dental COLGATE Total 25\r\n\r\nEnxágue Bucal COLGATE Luminous White 500ml\r\n\r\nEscova Dental 360º Luminous White Colgate', '9901465', 100, 50, 100, '0', '45.35', '55.39', 57, 10, 13),
(154, 'Tapete Higiênico CHALESCO com 7 Unidades', 'imgs/produtos/CHALESCO.jpg', 'Composição:\r\nCelulose e gel absorvente.\r\n\r\nInformações Adicionais: \r\nO tapete higiênico Chalesco superabsorvente é destinado à criação e educação de cães. Possui uma eficiente capacidade de absorção, contando também com um atrativo canino exclusivo que facilita o aprendizado do cão. Prático pois contém fitas adesivas dupla-face que facilitam a sua colocação\r\n\r\nDimensões aproximadas do produto sem embalagem (AxLxP):\r\n60x90cm.', '1004190', 100, 50, 100, '0', '10.75', '20.75', 87, 10, 13),
(155, 'Kit Viagem EDEL WHITE', 'imgs/produtos/KIT VIAGEM.jpg', 'Kit Viagem EDEL WHITE\r\n', '1157763', 100, 50, 100, '0', '28.00', '34.75', 88, 10, 13),
(156, 'Desodorante Antitranspirante Aerosol Dove Men Sem ', 'imgs/produtos/DOVE.jpg', 'Desodorante Antitranspirante Aerosol Dove Men Sem Perfume 150ML\r\n\r\nDesodorante Antitranspirante Aerosol Dove Men Sem Perfume Seca instantaneamente.\r\nSem perfume e adequado para pele sensível.\r\nClinicamente testado.\r\nPoderosa proteção por 48 horas.\r\nContém tecnologia com ¼ de creme hidratante.\r\n0% de álcool etílico.\r\nPara uma fórmula sem perfume e sem álcool que é potente contra o suor e não irrita sua pele, escolha o Antitranspirante Dove Men+Care Aerosol Sem Perfume. O que faz de um antitranspirante o aliado perfeito para o dia a dia? Para nós, é a união entre potência e delicadeza. É por isso que a linha de antitranspirantes Dove Men+Care combina uma avançada fórmula, que contém ¼ de creme hidratante, com ingredientes que ajudam a proteger a pele, reduzindo o risco de irritações. Disponível em roll-on e aerossol, Dove Men+Care tem o que você precisa para se sentir sempre seguro e com uma agradável sensação de frescor que dura o dia inteiro. Dove Men+Care celebra uma nova definição de força masculina, em que o cuidado com o bem-estar do seu corpo é o centro de tudo. É por isso que Dove oferece a você uma linha completa de produtos, de antitranspirantes a tratamentos para os cabelos, desenvolvida com poderosos ingredientes pensados em cada uma das suas necessidades. O resultado é proteção e cuidado completos e duradouros. Experimente os desodorantes, sabonetes, shampoos, condicionadores e cremes para pentear de Dove Men+Care e conheça um novo jeito de se cuidar. Dove Men+Care celebra uma nova definição de força masculina, em que o cuidado com o bem-estar do seu corpo é o centro de tudo.\r\n\r\nCOMPOSIÇÃO: Butane/Isobutane/Propane, Aluminum Chlorohydrate, Cyclomethicone, Ppg-14 Butyl Ether, Disteardimonium Hectorite, Helianthus Annuus Seed Oil, C12-15 Alkyl Benzoate, Bht, Octyldodecanol, Dimethiconol, Propylene Carbonate, Tocopheryl Acetate.', '4877004', 100, 50, 100, '0', '13.00', '17.25', 23, 3, 13);
INSERT INTO `TB_PRODUTO` (`CD_INTERNO`, `NM_PRODUTO`, `DS_FOTO_PRODUTO`, `DS_DESCRIÇÃO`, `CD_BARRAS`, `QT_ESTOQUE`, `QT_ESTOQUE_MIN`, `QT_ESTOQUE_MAX`, `CD_NCM`, `VL_CUSTO`, `VL_PRODUTO`, `ID_FABRICANTE`, `ID_CATEGORIA`, `ID_USUARIO`) VALUES
(160, 'Amaciante Concentrado Downy Perfume Collections Ad', 'imgs/produtos/DOWNY.png', 'Amaciante concentrado para roupas, que traz perfume do dia até a noite! Graças a suas cápsulas de perfume que protegem suas roupas de maus odores e que se ativam a cada toque ou movimento. Vista-se de perfume o dia todo com Downy. \r\n- Perfume o dia todo\r\n- Protege de maus odores\r\n- Maciez incrível\r\n- Facilita o passar de roupas\r\n- Meia tampinha basta', '1096388', 100, 50, 100, '0', '17.00', '22.57', 89, 3, 13),
(161, 'Tapete Higiênico Perfumado KELDOG para Cães com 7 ', 'imgs/produtos/KELDOG.jpg', 'Tapete Higiênico Perfumado KELDOG para Cães com 7 Unidades\r\n', '1099569', 100, 50, 100, '0', '23.00', '27.25', 90, 3, 13),
(162, 'Protetor Diário CAREFREE Brisa sem Perfume com 60 ', 'imgs/produtos/CAREFREE.jpg', 'Composto por fribas de celulose, adesivo termoplástico, polipropileno, fibras de polipropileno com extrato de algodão, papel siliconado, componente neutralizador.\r\n', '5396368', 100, 50, 100, '0', '13.00', '17.95', 91, 3, 13),
(163, 'Fermento Instantâneo FLEISCHMANN Mauri Pacote 10g', 'imgs/produtos/fermento.jpg', 'Saccharomces cerevisioe e monoestearato de sorbitania.\r\nNÃO CONTÉM GLÚTEN.\r\nNÃO CONTÉM CONSERVANTE.', '1030752', 100, 50, 100, '0', '0.65', '1.25', 92, 16, 13),
(164, 'Pipoca para Microondas YOKI México Sabor Nacho Pic', 'imgs/produtos/pipoca yoki.jpg', 'Pipoca para Microondas YOKI México Sabor Nacho Picante 100g\r\n', '1148076', 100, 50, 100, '0', '0.99', '1.99', 67, 16, 13),
(165, 'Refrigerante SUKITA Uva Lata 350ml', 'imgs/produtos/sukita.jpg', 'Ingredientes:\r\nÁgua gaseificada, açúcar, suco de uva concentrado, aroma idêntico ao natural de uva, acidulante ácido cítrico, conservador benzoato de sódio, sequestrante edta cálcio dissódico, corantes artificiais bordeaux S e azul brilhante FCF, corante caramelo tipo IV.\r\nNÃO CONTÉM GLÚTEN.', '5897575', 100, 50, 100, '0', '1.00', '2.55', 36, 6, 13),
(166, 'Água Mineral com Gás MINALBA Garrafa 1,5 Litros - ', 'imgs/produtos/minalva.jpg', 'Água Mineral com Gás MINALBA Garrafa 1,5 Litros', '9901437', 100, 50, 100, '0', '20.00', '37.08', 95, 6, 13),
(167, 'Chantilly Chanty MIX AMÉLIA Tradicional 1 Litro', 'imgs/produtos/chantily.jpg', 'Ingredientes:\r\nÁgua, óleo de palmiste hidrogenado, açúcar, sal, umectante sorbitol, estabilizantes caseinato de sódio, celulose microcristalina, carboximetilcelulose, lecitina de soja, citrato trissódico, fosfato dissódico, emulsificantes éster de ácido graxo de mono e diglicerídeos, monodiglicerideos, ésteres de mono e diglicerídeos de ácidos graxos com ácido diacetil tartárico, aroma artificial de creme e corante natural urucum e cúrcuma.\r\nNÃO CONTÉM GLÚTEN', '4071709', 100, 50, 100, '0', '21.00', '26.75', 94, 13, 13),
(168, 'Refrigerante COCA COLA Sem Açúcar Garrafa 2 Litros', 'imgs/produtos/559280.png', 'Água gaseificada, extrato de noz de cola, cafeína, aroma natural, corante caramelo IV, acidulante ácido fosfórico, edulcorantes ciclamato de sódio (27mg), acessulfame de potássio (15mg) e aspartame (12mg) por 100ml, conservador benzoato de sódio e regulador de acidez citrato de sódio.\r\n', '4346968', 100, 50, 100, '0', '3.00', '5.99', 96, 6, 13),
(169, 'Fagottini com Recheio de Carne MASSA LEVE 350g', 'imgs/produtos/MASSA LEVE.jpg', 'Ingredientes:\r\nFarinha de trigo enriquecida com ferro e ácido fólico, água, farinha de rosca, proteínas texturizada de soja, caldo de carne, sal, gordura vegetal hidrogenada, ovos, glúten, carne bovina, proteína vegetal hidrolisada, açúcar, cebola, manjericão, alho, conservador INS 282 propionato de cálcio, INS 202, sorbato de potássio, realçador de sabor INS 631 inosinato dissódico, INS 621 glutamato monossódico, corante natural INS 160 betacaroteno. \r\nCONTÉM GLÚTEN.', '4679080', 100, 50, 100, '0', '6.00', '9.89', 97, 13, 13),
(170, 'Pack com 6 unidades - Refrigerante COCA COLA Plus ', 'imgs/produtos/555958.jpg', 'Refrigerante COCA COLA Plus Café Espresso Lata 220ml	', '9901294', 100, 50, 100, '0', '5.00', '11.34', 96, 6, 13),
(171, 'Nhoque Caseiro DONA THEREZA 500g', 'imgs/produtos/DONA THEREZA.jpg', 'Nhoque Caseiro DONA THEREZA 500g\r\n', '8705372', 100, 50, 100, '0', '8.90', '12.90', 98, 13, 13),
(172, 'Refrigerante COCA COLA Garrafa 3 Litros', 'imgs/produtos/555773.jpg', 'Água gaseíficada, açúcar, extrato de noz de cola, cafeína, corante caramelo IV, acidulante INS 338 e aroma natural.\r\n', '1232837', 100, 50, 100, '0', '5.00', '9.29', 96, 6, 13),
(173, 'Massa para Pastel Rolo MEZZANI 1kg', 'imgs/produtos/MEZANNI.png', 'Massa para Pastel Rolo MEZZANI 1kg\r\n', '4235002', 100, 50, 100, '0', '7.50', '11.50', 99, 13, 13),
(174, 'Refrigerante COCA COLA Garrafa 1,5 Litros', 'imgs/produtos/555775.jpg', 'Água gaseíficada, açúcar, extrato de noz de cola, cafeína, corante caramelo IV, acidulante INS 338 e aroma natural.\r\n', '4493457', 100, 50, 100, '0', '3.00', '6.49', 96, 6, 13),
(175, 'Pacotinni de Presunto e Queijo MEZZANI 400g', 'imgs/produtos/MEZANNI 2.png', 'Ingredientes:\r\nFarinha de trigo enriquecida com ferro e ácido fólico, ovo em pó pasteurizado, queijo mussarela, presunto, farinha de rosca, sal refinado, betacaroteno, realçador de sabor, glutamato monossódico, conservantes, sorbato de potássio e propionato de cálcio.\r\nCONTÉM GLÚTEN.', '5977499', 100, 50, 100, '0', '4.75', '7.25', 99, 13, 13),
(176, 'Refrigerante PEPSI Garrafa 1,5 Litros - com 3 Unid', 'imgs/produtos/506519.jpg', 'Refrigerante PEPSI Garrafa 1,5 Litros	', '9901555', 100, 50, 100, '0', '10.00', '17.97', 19, 6, 13),
(178, 'Refrigerante PEPSI Lata 269ml - Caixa com 15 Unida', 'imgs/produtos/504141.jpg', 'Refrigerante PEPSI Lata 269ml	', '9901422', 100, 50, 100, '0', '10.00', '18.75', 19, 6, 13),
(179, 'KIT FANTA GUARANÁ + COCA COLA - 2 Litros Cada.', 'imgs/produtos/547772.png', 'Refrigerante FANTA Guaraná Garrafa 2 Litros /\r\nRefrigerante COCA COLA Garrafa 2 Litros', '9902020', 100, 50, 100, '0', '10.00', '13.68', 96, 6, 13),
(180, 'Patê de Atum Tradicional COQUEIRO 170g', 'imgs/produtos/PATE.jpg', 'Ingredientes:\r\nMolho tipo maionese (água, óleo de soja, ovo, vinagre, amido, sal, açúcar, suco de limão, emulsificante goma xantana, realçador de sabor glutamato monossódico, acidulante ácido lático e aroma natural de mostarda), atum, cebola, alho, salsa e pimenta do reino.\r\n\r\nNÃO CONTÉM GLÚTEN.', '1598339', 100, 50, 100, '0', '9.75', '12.75', 100, 13, 13),
(181, 'Suco Vermelho Detox Integral TAEQ 1 Litro', 'imgs/produtos/503155.jpg', 'Suco Vermelho Detox Integral TAEQ 1 Litro\r\n', '1094194', 100, 50, 100, '0', '5.00', '9.99', 101, 6, 13),
(182, 'Massa para Pizza de Frigideira MASSA LEVE 250g com', 'imgs/produtos/pizza.jpg', 'Ingredientes:\r\nFarinha de trigo especial, água, gordura vegetal, leite em pó, sal e fermento. Contém conservante propionato de cálcio e sorbato de potássio. CONTÉM GLUTÉN.', '3363263', 100, 50, 100, '0', '6.89', '9.89', 55, 13, 13),
(183, 'Suco de Laranja Misto Detox NATURAL ONE 900ml', 'imgs/produtos/565199.png', 'Suco de Laranja Misto Detox NATURAL ONE 900ml\r\n', '1050331', 100, 50, 100, '0', '5.00', '13.75', 102, 6, 13),
(184, 'Energético BAD BOY Garrafa 1 Litro', 'imgs/produtos/565347.png', 'Água gaseificada, açúcar, taurina (800mg/200ml), glucoronolactona (480ml/200ml), cafeína (64mg/200ml), inositol (40mg/200ml), vitaminas (B3,B5,B2,B6,B12),aromatizante aroma artificial de tutti-frutti, corante caramelo INS 150d, acidulante ácido cítrico, estabilizante citrato de sódio, conservadores benzoato de sódio e sorbato de potássio.\r\n', '1035443', 100, 50, 100, '0', '5.00', '10.50', 103, 6, 13),
(185, 'Refresco em Pó TANG de Laranja Docinha 25g', 'imgs/produtos/551836.jpg', 'Refresco em Pó TANG de Laranja Docinha 25g\r\n', '1129725', 100, 50, 100, '0', '0.50', '1.09', 104, 6, 13),
(186, 'Queijo Tipo Emmental SERRABELLA Fracionado 150g', 'imgs/produtos/QUEIJO.jpg', 'Queijo Tipo Emmental SERRABELLA Fracionado 150g\r\n', '0189965', 100, 50, 100, '0', '10.99', '14.99', 105, 12, 13),
(187, 'Goma de Mascar Sabor Menta TRIDENT 25,2g com 14 Un', 'imgs/produtos/539022.jpg', 'Goma de Mascar Sabor Menta TRIDENT 25,2g com 14 Unidades\r\n', '1061282', 100, 50, 100, '0', '2.00', '5.69', 106, 15, 13),
(189, 'Queijo Cottage DANUBIO 200g', 'imgs/produtos/DANUBIO.png', 'Queijo Cottage DANUBIO 200g\r\n', '1097907', 100, 50, 100, '0', '6.85', '9.85', 107, 12, 13),
(190, 'Bala de Gelatina Beijos Sabor Morango FINI Pacote ', 'imgs/produtos/548337.jpg', 'Glucose, açúcar, água, dextrose, gelificantes: Gelatina e pectina; Acidulantes: Ácido cítrico e ácido lático; Regulador de acidez: Lactato sódico; Aromas: Morango e nata; Corantes: E-129 (vermelho 40) e E171 (dióxido de titânio).\r\n', '8793003', 100, 50, 100, '0', '2.00', '4.99', 109, 15, 13),
(191, 'Bala de Gelatina Amoras FINI Pacote 100g', 'imgs/produtos/548339.jpg', 'Açúcar, xarope de glicose, água, dextrina, dextrose, glicose em pó, cacau em pó, gelificantes: gelatina e pectina, acidulantes: ácido cítrico e ácido láctico, corante natural: carvão vegetal, corante artificial: vermelho 40, aromatizante, antioxidante: lactato de sódio e glaceante: cera de carnaúba.\r\n', '8809650', 100, 50, 100, '0', '2.00', '4.99', 109, 15, 13),
(193, 'Goma de Mascar Herbal Fresh TRIDENT 32g Pacote com', 'imgs/produtos/556523.jpg', 'Goma base, edulcorantes naturais, sorbitol, manitol, umectante: glicerina e tricetina; aromatizantes: estabilizante, lecitina de soja, edulcorantes artificiais: acesulfame-k e aspartame, c corante artificial: azul brilhante.\r\n', '3505991', 100, 50, 100, '0', '4.00', '8.45', 106, 15, 13),
(194, 'Queijo Carmenbert PRESIDENT Caixa 125g', 'imgs/produtos/queijo23232.jpg', 'Ingredientes:\r\nLeite pasteurizado, fermento lácteo, coalho de origem animal, sal, enzimas, penicilium.\r\nNÃO CONTÉM GLÚTEN.', '2148540', 100, 50, 100, '0', '21.00', '27.50', 111, 12, 13),
(195, 'Drops de Morango HALLS 34g', 'imgs/produtos/540995.jpg', 'Drops de Morango HALLS 34g\r\n', '0344524', 100, 50, 100, '0', '1.00', '1.49', 112, 15, 13),
(196, 'Queijo Mussarela Lanche Light BALKIS Pedaço 450g', 'imgs/produtos/BALKIS.jpg', 'Ingredientes:\r\nLeite pasteurizado, sal, coalho e fermento lático.\r\nNÃO CONTÉM GLÚTEN.', '0238625', 100, 50, 100, '0', '20.00', '25.71', 113, 12, 13),
(197, 'Queijo Provolone Caciottello SORESINA 350g', 'imgs/produtos/SORESINA.jpg', 'Queijo Provolone Caciottello SORESINA 350g\r\n', '4861300', 100, 50, 100, '0', '39.40', '44.50', 115, 12, 13),
(198, 'Goma de Mascar Sabor Menta Verde Sem Açúcar MENTOS', 'imgs/produtos/489852.jpg', 'Goma base, edulcorantes: maltitol, manitol, sorbitol, aspartame, acessulfame k e sucralose, umectante: glicerina, aromatizantes e extrato de chá verde, espessantes: goma arábica e carboximetilcelulose, emulsificante: ésteres graxos de sacarose, corantes: dióxido de titânio, azul brilhante e amarelo tartrazina, glaceantes: goma laca e cera de carnaúba, contém fenilalanina.\r\n', '4883319', 100, 50, 100, '0', '7.00', '13.50', 114, 15, 13),
(199, 'Confeitos Sortidos Beats MENTOS 45g', 'imgs/produtos/540862.jpg', 'Confeitos Sortidos Beats MENTOS 45g\r\n', '1128072', 100, 50, 100, '0', '1.00', '2.85', 114, 15, 13),
(200, 'Confeitos Sabor Frutas Sortidas Raimbow MENTOS 114', 'imgs/produtos/540877.jpg', 'Açúcar, xarope de glicose, gordura vegetal, fécula de mandioca, acidulante ácido cítrico, aromatizantes, gelificantes: goma arábica e goma gelana, emulsificante: ésteres graxos de sacarose, corantes: cúrcuma, carmim, clorofila, vermelho de beterraba, beta caroteno e páprica, glaceante: cera de carnaúba.\r\n', '8749307', 100, 50, 100, '0', '3.00', '6.85', 114, 15, 13),
(201, 'Drops Cereja HALLS Mini 15g', 'imgs/produtos/558857.jpg', 'Drops Cereja HALLS Mini 15g\r\n', '1076369', 100, 50, 100, '0', '1.00', '2.85', 112, 15, 13),
(203, 'Presunto Cru Serrano Fatiado CASINO 100g', 'imgs/produtos/presunto cru.jpg', 'Presunto Cru Serrano Fatiado CASINO 100g\r\n', '1056854', 100, 50, 100, '0', '18.25', '22.25', 116, 12, 13),
(206, 'Salgadinho de Milho Sabor Parmesão CHEETOS Lua 140', 'imgs/produtos/557073.png', 'Salgadinho de Milho Sabor Parmesão CHEETOS Lua 140g\r\n', '5099405', 100, 50, 100, '0', '5.00', '7.59', 119, 15, 13),
(207, 'Salaminho Italiano SADIA Peça 220g', 'imgs/produtos/salaminho.jpg', 'Ingredientes:\r\nCarne suína, toucinho, leite em pó, sal, carne bovina, caseínato de sódio, vinho branco, açucar, pimentas: Preta e branca, condimentos naturais, aroma de fumaça, acidulante glucona - delta - lactona , antioxidante ácido eritórbico  e conservador nitrato de sódio.', '0044158', 100, 50, 100, '0', '11.16', '16.18', 59, 12, 13),
(210, 'Mostarda SALSARETTI Squeeze 380g', 'imgs/produtos/MOSTARDA.png', 'Mostarda SALSARETTI Squeeze 380g\r\n', '1110532', 100, 50, 100, '0', '10.00', '13.90', 120, 11, 13),
(211, 'Molho Xadrez MASTERFOODS Vidro 340g', 'imgs/produtos/FOODSMASTER.jpg', 'Ingredientes:\r\nÁgua, molho de soja, açúcar, amido modificado, vinagre, cebola, pimentão verde, broto de feijão, pimentão vermelho, abacaxi, sal, alho, gengibre, canela, cravo da índia e fenogrego. Pode conter derivados de leite.\r\nNÃO CONTÉM GLÚTEN.', '7005985', 100, 50, 100, '0', '8.00', '11.25', 121, 11, 13),
(212, 'Ketchup HEINZ Jalapeño 397g', 'imgs/produtos/KETCHUPHEINZ.jpg', 'Informações do produto\r\n\r\nA Heinz uniu uma das pimentas mais famosas ao ketchup 1 do mundo, formando uma combinação irresistível para os amantes do sabor apimentado. Nosso gosto marcante vem dos ingredientes de alta qualidade e cuidadosamente selecionados. Mais sabor e qualidade para seus hambúrgueres, batatas fritas, pizzas e salgados. Ninguém faz melhor que Heinz!\r\n', '1092940', 100, 50, 100, '0', '5.00', '7.85', 122, 11, 13),
(213, 'Ketchup HELLMANNS Adoçado com Mel Squeeze 380g', 'imgs/produtos/KETCHUPHELLMANS.jpg', 'Ketchup HELLMANNS Adoçado com Mel Squeeze 380g\r\n', '1144633', 100, 50, 100, '0', '10.00', '15.50', 123, 11, 13),
(214, 'Azeite Espanhol de Oliva Extra Virgem Arbequina PO', 'imgs/produtos/AZEITE.jpg', 'Azeite Espanhol de Oliva Extra Virgem Arbequina PONS Vidro 500ml\r\n', '1189858', 100, 50, 100, '0', '18.00', '23.90', 124, 11, 13),
(215, 'Maionese Clássica TASTE & CO 470g', 'imgs/produtos/MAIONESE.jpg', 'Maionese Clássica TASTE & CO 470g', '1131210', 100, 50, 100, '0', '10.00', '13.90', 125, 11, 13),
(217, 'Molho para Salada Ervas Finas MASTERFOODS 234ml', 'imgs/produtos/masterfoodsmolho.jpg', 'Água, óleo de soja refinado, vinagre, açúcar, sal, alho, orégano, cebola, pimenta-do-reino preta, manjericão, manjerona, pimenta-do-reino branca, pimenta calabresa, alecrim, estabilizante goma xantana, acidulante ácido cítrico, conservador sorbato de potássio, antioxidantes BHA e BHT e sequestrante EDTA cálcio dissódico.Pode conter derivados de leite.\r\nNÃO CONTÉM GLÚTEN.', '4238454', 100, 50, 100, '0', '4.00', '6.59', 121, 11, 13),
(218, 'Azeitona Verde Recheada Anchova VALE FÉRTIL Vidro ', 'imgs/produtos/azeitona.jpg', 'Azeitona Verde Recheada Anchova VALE FÉRTIL Vidro 335g', '1098100', 100, 50, 100, '0', '8.25', '11.25', 127, 11, 13),
(219, 'Maionese com Limão HELLMANNS 500g', 'imgs/produtos/maionesecomlimao.jpg', 'Sabor e cremosidade incomparáveis com toque de limão.Perfeito para sanduíches, wraps, hambúrgueres, preparar molhos e saladas.Não talha, faça pratos quentes deliciosos.Com Hellmann''s você transforma seus lanches e refeições em deliciosos momentos.--Há mais de 100 anos adicionando sabor e cremosidade à sua história. Embalagem reciclável. Hellmann''s, melhor não tem! \r\nIngredientes:\r\nÁgua, óleo vegetal, vinagre, amido modificado, ovos pasteurizados, açúcar, sal, suco de limão, acidulante ácido lático, espessante goma xantana e goma alfarroba, conservador ácido sórbico, sequestrante EDTA, cálcio dissódico, corante páprica, aromatizante (aroma natural de mostarda e aroma idêntico ao natural de limão) e antioxidantes ácido cítrico, BHT e BHA.\r\nNÃO CONTÉM GLÚTEN.\r\n\r\nInformação Adicional:\r\nSe a maionese Hellmann''s já é fantástica, imagina combinar com um toque de limão? Hellmann''s limão é ideal para servir aos convidados com petiscos ou até mesmo para um lanche rápido na tarde. Uma delícia!', '0790857', 100, 50, 100, '0', '4.00', '6.59', 123, 11, 13),
(220, 'Molho Americano Burger HEINZ 220g', 'imgs/produtos/MOLHOAMERICANOHEINZ.jpg', 'Molho Americano Burger HEINZ 220g\r\n', '1005560', 100, 50, 100, '0', '13.00', '16.75', 122, 11, 13),
(221, 'Camomila KITANO 10g', 'imgs/produtos/CAMOMILA.jpg', 'Camomila KITANO 10g\r\n', '1943184', 100, 50, 100, '0', '1.19', '3.19', 128, 11, 13),
(223, 'Catchup Picante QUERO Tradicional 400g', 'imgs/produtos/QUERO.jpg', 'Catchup Picante QUERO Tradicional 400g\r\n', '3537114', 100, 50, 100, '0', '2.19', '4.19', 129, 11, 13),
(224, 'Bombom Especialidades NESTLÉ Caixa 300g', 'imgs/produtos/BOMBOM.jpg', 'Bombom Especialidades NESTLÉ Caixa 300g\r\n', '1096755', 100, 50, 100, '0', '4.99', '7.99', 24, 15, 13),
(225, 'Fralda Pampers Confort Sec G 60 unidades', 'imgs/produtos/PAMPERS.jpg', 'Experimente a NOVA Pampers confort sec com canais de ar! Que permitem que o ar circule livremente dentro da fralda, para o bumbum ficar menos abafado, e a pele arejada e sequinha durante a noite. \r\n\r\nAté 2X mais seco* e arejado * vs fraldas comuns.\r\nCanais de Ar: Permitem que o ar circule livremente dentro da fralda, para o bumbum ficar menos abafado, e a pele arejada e sequinha durante a noite.\r\nGel Mágico que absorve e retém a umidade no interior da fralda para noites mais sequinhas\r\nCamada ultra absorvente:absorve rapidamente a umidade mantendo a pele do bebê sequinha.\r\nBarreiras Anti Vazamento: se adaptam suavemente ao redor das pernas do seu bebê.\r\nAjuste cômodo e flexível para dar uma proteção anti vazamentos todas as noites.\r\nLoção hipoalergênica: ajuda a prevenir irritações.', '1105347', 100, 50, 100, '0', '46.50', '76.50', 46, 2, 13),
(226, 'Fraldas Pampers Supersec - G 26 Unidades', 'imgs/produtos/fraldasssssss.jpg', 'Quando meu bebê está sequinho, ele tem uma boa noite de sono tranquilo e, por isso, quando acorda está feliz e quer brincar comigo. Eu adoro ter este momento para mimar e brincar com ele ao invés de sair correndo para trocar sua fralda. \r\n\r\nCaracterísticas \r\n- Sistema de Absorção de 4 Camadas com Gel superabsorbente que evita que o xixi entre em contato com a pele do seu bebê; \r\n- Cobertura suave como tecido. Oferece mais conforto ao seu bebê para uma maior comodidade; \r\n- Barreiras Duplas Antivazamento. Ajustam-se suavemente entre as pernas do seu bebê, ajudando a evitar que a fralda vaze; \r\n- Fitas Reajustáveis Gruda e desgruda. Permitem verificar quantas vezes você quiser sem danificar a fralda, melhorando o ajuste.\r\n- Com Dermacrem para menos irritações. Unicas com dermacrem, exclusiva loção que dá maior proteção a seu bebê. ', '1085517', 100, 50, 100, '0', '18.90', '24.90', 46, 2, 13),
(227, 'Kit de Shampoo + Condicionador HEAD & SHOULDERS Pr', 'imgs/produtos/head e shoulders.jpg', 'Kit de Shampoo + Condicionador HEAD & SHOULDERS Proteção Contra Queda 200ml Cada\r\n', '9900649', 100, 50, 100, '0', '28.00', '36.25', 46, 10, 13),
(228, 'Arroz Agulhinha Tipo 1 TIO JOÃO Pacote 5kg', 'imgs/produtos/tio joao.jpg', 'Informações do produto\r\nIngredientes:\r\nArroz.\r\nNÃO CONTÉM GLÚTEN.', '0132817', 100, 50, 100, '0', '13.00', '18.50', 4, 1, 5),
(229, 'Arroz Agulhinha Tipo 1 BLUE VILLE Pacote 5kg', 'imgs/produtos/BLUEVILLE.jpg', 'NÃO CONTÉM GLÚTEN.\r\n', '2200859', 100, 50, 100, '0', '8.50', '11.90', 130, 1, 5),
(230, 'Arroz Integral Tipo 1 TIO JOÃO Pacote 500g', 'imgs/produtos/integral.jpg', 'Arroz.\r\nNÃO CONTÉM GLÚTEN.', '4485308', 100, 50, 100, '0', '1.35', '1.45', 4, 1, 5),
(231, 'Arroz Agulhinha Tipo 1 PRATO FINO Pacote 1kg', 'imgs/produtos/ARROZFINO.png', 'Informações do produto\r\nIngrediente:\r\nArroz.\r\nNÃO CONTÉM GLÚTEN.', '4550280', 100, 50, 100, '0', '1.89', '3.89', 131, 1, 5),
(232, 'Arroz Parboilizado Tipo 1 Original UNCLE BEN''S Pac', 'imgs/produtos/UNCLE.jpg', 'Ingrediente:\r\nArroz parboilizado.\r\nNÃO CONTÉM GLÚTEN.', '0154109', 100, 50, 100, '0', '3.49', '5.59', 132, 1, 5),
(233, 'Arroz Integral RARIS Express com Quinua 220g', 'imgs/produtos/RARIS.jpg', 'Arroz Integral RARIS Express com Quinua 220g\r\n', '1146517', 100, 50, 100, '0', '4.09', '8.09', 133, 1, 5),
(234, 'Feijão Vermelho Tipo 1 SUPER MAXIMO Pacote 500g', 'imgs/produtos/SUPER MAXIMO.jpg', 'Feijão Vermelho Tipo 1 SUPER MAXIMO Pacote 500g\r\n', '4663232', 100, 50, 100, '0', '3.19', '5.19', 135, 1, 5),
(235, 'Feijão Carioca Tipo 1 KICALDO Pacote 1kg', 'imgs/produtos/KICALDOFEIJAOKK.jpg', 'Ingrediente:\r\nFeijão.\r\nNÃO CONTÉM GLÚTEN.', '0221146', 100, 50, 100, '0', '1.15', '3.15', 136, 1, 5),
(236, 'Feijão Carioca PANTERA Pacote 1kg', 'imgs/produtos/pant.jpg', 'Feijão Carioca PANTERA Pacote 1kg\r\n', '2155883', 100, 50, 100, '0', '1.19', '3.39', 134, 1, 5),
(237, 'Feijão Branco CAMIL Pacote 500g', 'imgs/produtos/camilfeijao.jpg', 'Ingrediente:\r\nFeijão branco.\r\nNÃO CONTÉM GLÚTEN.', '0393829', 100, 50, 100, '0', '2.99', '4.99', 1, 1, 5),
(238, 'Feijão Pronto para Temperar Carioca Cozido CAMIL 4', 'imgs/produtos/feijaocamilpronto.jpg', 'Feijão Pronto para Temperar Carioca Cozido CAMIL 490g\r\n', '1010300', 100, 50, 100, '0', '2.85', '4.85', 1, 1, 5),
(239, 'Feijão Carioca Cozido a Vapor VAPZA Caixa 500g', 'imgs/produtos/FEIJAOVAPZA.jpg', 'Ingredientes:\r\nFeijão carioca, água, sal, cebola, alho e louro desidratados.Não contém conservantes.\r\n>\r\nNÃO CONTÉM GLÚTEN.', '1297676', 100, 50, 100, '0', '5.59', '10.59', 137, 1, 5),
(240, 'Feijão Branco BONDUELLE Lata 250g', 'imgs/produtos/23627-6.jpg_2.jpg', 'Ingredientes:\r\nFeijão branco, água, sal, aromatizantes naturais (aipo).\r\nContém: extrato natural, pimenta e de cebola.\r\nNÃO CONTÉM GLÚTEN.', '0287111', 100, 50, 100, '0', '6.75', '10.75', 138, 1, 5),
(241, ' Óleo de Canola SUAVIT Pet 900ml', 'imgs/produtos/suavit.jpg', 'Ingredientes:\r\nÓleo vegetal de canola e antioxidantes TBHQ e ácido cítrico.', '0404488', 100, 50, 100, '0', '3.00', '6.99', 139, 1, 3),
(242, 'Óleo Composto OLIVIA Sabor Ervas Finas 500ml', 'imgs/produtos/563278.png', 'Óleo Composto OLIVIA Sabor Ervas Finas 500ml\r\n', '1131134', 100, 50, 100, '0', '3.00', '6.92', 140, 1, 3),
(243, 'Sal Refinado CISNE Pacote 1kg', 'imgs/produtos/454632.jpg', 'Sal refinado extra, iodato de potássio. Antiumectantes: ferrocianeto de sódio e dióxido de silício. NÃO CONTÉM GLÚTEN.', '0778183', 100, 50, 100, '0', '1.00', '2.45', 141, 1, 3),
(244, 'Sal para Churrasco Himalaia Tradicional BR SPICES ', 'imgs/produtos/556181.jpg', 'Sal para Churrasco Himalaia Tradicional BR SPICES 300g\r\n', '1161333', 100, 50, 100, '0', '5.00', '9.89', 142, 1, 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_PRODUTO_COMPRA`
--

CREATE TABLE IF NOT EXISTS `TB_PRODUTO_COMPRA` (
  `CD_PRODUTO_COMPRA` int(11) NOT NULL AUTO_INCREMENT,
  `QT_PRODUTO` int(11) NOT NULL,
  `VL_UNITARIO` int(11) NOT NULL,
  `ID_COMPRA` int(11) NOT NULL,
  `ID_PRODUTO` int(11) NOT NULL,
  PRIMARY KEY (`CD_PRODUTO_COMPRA`),
  KEY `ID_COMPRA` (`ID_COMPRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `TB_PRODUTO_FABRICANTE`
--
CREATE TABLE IF NOT EXISTS `TB_PRODUTO_FABRICANTE` (
`FABRICANTE` varchar(80)
,`NOME DO PRODUTO` varchar(50)
);
-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_USUARIO`
--

CREATE TABLE IF NOT EXISTS `TB_USUARIO` (
  `CD_USUARIO` int(11) NOT NULL AUTO_INCREMENT,
  `NM_USUARIO` varchar(20) NOT NULL,
  `NM_SOBRENOME` varchar(40) DEFAULT NULL,
  `DS_EMAIL` varchar(80) NOT NULL,
  `DS_SEXO` char(1) NOT NULL,
  `NR_CPF` char(14) DEFAULT NULL,
  `DT_NASCIMENTO` date DEFAULT NULL,
  `NM_ENDERECO` varchar(45) DEFAULT NULL,
  `NM_BAIRRO` varchar(20) DEFAULT NULL,
  `NM_CIDADE` varchar(20) DEFAULT NULL,
  `CD_CEP` char(9) DEFAULT NULL,
  `SG_ESTADO` char(2) DEFAULT NULL,
  `NM_PONTO_REFERENCIA` varchar(45) DEFAULT NULL,
  `NR_TELEFONE` char(15) DEFAULT NULL,
  `NR_CELULAR` char(16) DEFAULT NULL,
  `DS_NIVEL` char(3) DEFAULT 'USU',
  `DS_FOTO` varchar(80) DEFAULT NULL,
  `VL_SALDO` decimal(14,2) NOT NULL DEFAULT '0.00',
  `DS_STATUS` varchar(8) DEFAULT 'Ativo',
  `DS_SENHA` varchar(50) NOT NULL,
  PRIMARY KEY (`CD_USUARIO`),
  UNIQUE KEY `DS_EMAIL` (`DS_EMAIL`),
  UNIQUE KEY `CD_USUARIO` (`CD_USUARIO`),
  UNIQUE KEY `NR_CPF` (`NR_CPF`),
  UNIQUE KEY `NR_CELULAR` (`NR_CELULAR`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Fazendo dump de dados para tabela `TB_USUARIO`
--

INSERT INTO `TB_USUARIO` (`CD_USUARIO`, `NM_USUARIO`, `NM_SOBRENOME`, `DS_EMAIL`, `DS_SEXO`, `NR_CPF`, `DT_NASCIMENTO`, `NM_ENDERECO`, `NM_BAIRRO`, `NM_CIDADE`, `CD_CEP`, `SG_ESTADO`, `NM_PONTO_REFERENCIA`, `NR_TELEFONE`, `NR_CELULAR`, `DS_NIVEL`, `DS_FOTO`, `VL_SALDO`, `DS_STATUS`, `DS_SENHA`) VALUES
(1, 'Raniel', 'Santos Silva', 'ranielsnts@hotmail.com', 'M', '123.456.789-09', '1994-11-01', 'Rua Maximino Nunes Barreto, 36', 'Jardim Oasis', 'Itanhaém', '11740-000', 'SP', 'Primeira esquerda depois do mercado Oasis', '', '(13) 99726-7744', 'GES', 'imgs/imgp/IMG_20180928_222520429.jpg', '50.00', 'Ativo', 'b90e85d16348af3bdec10e7d9424f369'),
(2, 'João', 'Vitor', 'joao@joao.com', 'M', '601.572.938-40', '2000-05-30', 'Av.Benedito Ribeiro,960', 'Nova Itanhaém', 'Itanhaém', '11740-000', 'SP', 'Rua Do Instituto Botequida', '', '(12) 34567-891', 'GES', 'imgs/imgp/hqdefault.jpg', '0.00', 'Ativo', '202cb962ac59075b964b07152d234b70'),
(3, 'Eduardo', 'Selymes Selmes Santos', 'edu.selymes@gmail.com', 'M', '000.000.000-00', '1996-07-13', 'Rua Arlindo Bétio, 75', 'Belas artes', 'Itanhaém', '11740-000', 'SP', 'Prox. ao Casarão', '(13) 3427-5777', '(13) 99135-532', 'ADM', 'imgs/imgp/540995.jpg', '0.00', 'Ativo', '0b24e3c24df48a3dc9dfea70e5d02868'),
(5, 'Nícolas ', 'Cardoso', 'nicolas.cardoso01@etec.sp.gov.br', 'M', '469.420.548-01', '2000-05-08', 'Rua Colombia, 539', 'Cibratel 2', 'Itanhaém', '11740-000', 'SP', 'Próximo ao Colégio Bernardino', '(13) 3426-9669', '(13) 99718-0520', 'ADM', 'imgs/imgp/896ac6e7-bc13-4b89-bd64-3ee2b957d20b.jpg', '0.00', 'Ativo', '457cf1399ff8bdf57db53551bdddb701'),
(8, 'Roseane', 'Franco', 'roseane.francoba@gmail.com', 'F', NULL, '2017-12-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '(13) 99618-3886', 'USU', 'imgs/imgp/mulher.png', '0.00', 'Ativo', '9a6a530d5368da240a58a25321c7aa51'),
(9, 'jussimar', 'leal', 'jussimar.leal@etec.sp.gov.br', 'M', NULL, '1989-06-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '(13) 99716-2097', 'USU', 'imgs/imgp/frame.png', '0.00', 'Ativo', '204fdb2b2f416c1838e5286282cba556'),
(10, 'Ana', 'Santos', 'ana@gmail.com', 'F', NULL, '2018-10-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '(13) 98158-6349', 'USU', 'imgs/imgp/mulher.png', '0.00', 'Ativo', '827ccb0eea8a706c4c34a16891f84e7b'),
(11, 'Wes', 'Wes', 'wes@wes.com', 'M', NULL, '2018-10-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '(13) 79397-6266', 'USU', 'imgs/imgp/asd.png', '0.00', 'Ativo', '013de0c99e66d589b96d74eb85d44c58'),
(12, 'Alan Victor dos', 'Santos', 'alan.victor.ti@gmail.com', 'M', '450.861.108-74', '1997-01-31', 'Rua Doutor João Atalla', 'Ruínas', 'Peruíbe', '11750-000', 'SP', 'Automaton Materiais de Construção', '(13) 3458-3940', '(13) 99641-8581', 'USU', 'imgs/imgp/347-andrew-garfield-214x214-2.jpg', '0.00', 'Ativo', '4eac4e048459d3d659f56821964a7b74'),
(13, 'Padrão', 'Tester', 'n@n.com', 'M', '222.222.222-22', '2000-05-03', 'Rua', 'Bairro', 'Cidade', '11111-111', 'SP', '236', '', '(99) 99999-9999', 'USU', 'imgs/imgp/homem.png', '0.00', 'Ativo', '202cb962ac59075b964b07152d234b70'),
(14, 'Camila', 'Decker', 'milasz43@gmail.com', 'F', '493.478.188-95', '1998-07-15', 'Rua vereador josé santino de souza, 427', 'savoy 2', 'itanhaém', '11740000', 'SP', 'rua da escola carlos braga', '1334266377', '(13) 99609-3433', 'USU', 'imgs/imgp/mulher.png', '0.00', 'Ativo', '1a4f3038a1243484867615824a90f566'),
(16, 'Miriã', 'Oliveira', 'mimi.buguel@gmail.com', 'F', NULL, '1996-01-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '(13) 99609-6307', 'USU', 'imgs/imgp/mulher.png', '0.00', 'Ativo', 'dba72514a20a07bf21d9e59d19a65770'),
(17, 'SOYA', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'USU', 'imgs/imgp/homem.png', '0.00', 'Ativo', 'c99f1621ddb8d08a4cac6ee4b6989349'),
(18, 'Matheus', 'Oliveira', 'matheus.08221@gmail.com', 'M', NULL, '2001-02-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13996932459', 'USU', 'imgs/imgp/ed9a34198f255bb15202d448ec2bc116.jpg', '0.00', 'Ativo', '21de45ef17330b8fc99246773be6cb60'),
(19, 'Cassio', 'Lara', 'cassiolara10@gmail.com', 'M', NULL, '1996-05-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13981774477', 'USU', 'imgs/imgp/homem.png', '0.00', 'Ativo', 'd25a10989aeb94e5cf600ba713cc7a85'),
(20, 'Ester', 'Oliveira', 'esteroliveira2083@gmail.com', 'F', NULL, '1999-03-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '(13) 98875-2206', 'USU', 'imgs/imgp/IMG_20181206_011028.jpg', '0.00', 'Ativo', '45a21b8ba1d873fc46c46c02119c55c6'),
(21, 'Vinicius', 'Santos Silva', 'vinisnts03@hotmail.com', 'M', NULL, '2002-06-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '(13) 99659-1910', 'USU', 'imgs/imgp/homem.png', '0.00', 'Ativo', 'a09e7df487f4d33d6c6cf0557655f268'),
(22, 'teste', 'teste', 'teste@teste1.com', 'M', NULL, '0001-02-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '(11) 11111-1111', 'USU', 'imgs/imgp/Jellyfish.jpg', '0.00', 'Ativo', 'b90e85d16348af3bdec10e7d9424f369'),
(23, 'jao', 'jao', 'joao@test.com', 'M', NULL, '2000-05-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '(12) 32312-4231', 'USU', 'imgs/imgp/homem.png', '0.00', 'Ativo', 'defd55e19673914ff04f7e4cc2cedee8'),
(24, 'jaoajoajo', 'sjdoajdo', 'testtest@yoopmail.com', 'M', NULL, '2000-03-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '(23) 34234-2311', 'USU', 'imgs/imgp/homem.png', '0.00', 'Ativo', '4f56c2f69d772d7ef2844fc6d8ce5ee1'),
(25, 'Josué ', 'castro', 'jc1612756@gmail.com', 'M', '450.439.638-67', '2001-03-12', 'eng. José de barros saraiva', 'nova Itanhaém', 'Itanhaém', '11740-000', 'SP', 'Próximo ao mercado pratico ', '', '(13) 99701-9506', 'USU', 'imgs/imgp/Green Day_108946.png', '0.00', 'Ativo', 'ecdb0c90f3347c07f448794a99e51fea'),
(26, 'Mariluzia', 'de Souza Santos Silva', 'msouzasantossilva@gmail.com', 'F', NULL, '1975-05-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '(13) 98172-5921', 'USU', 'imgs/imgp/mulher.png', '0.00', 'Ativo', 'b90e85d16348af3bdec10e7d9424f369'),
(27, 'RODOLFO', 'ARAUJO', 'rodolfop.araujo@gmail.com', 'M', NULL, '1989-02-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '(13) 99634-0208', 'ADM', 'imgs/imgp/homem.png', '0.00', 'Ativo', '449977705b5208d07a4ad68da3ff6ac5'),
(28, 'Brandon Henrique', 'Silva Reis', 'brandonhenrique902@gmail.com', 'M', NULL, '1996-08-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '(13) 99748-9605', 'USU', 'imgs/imgp/homem.png', '0.00', 'Ativo', '21b292e732ac7d255adaf498b2c9248e'),
(29, 'cleber', 'torres', 'cleberst2015@gmail.com', 'M', NULL, '2001-04-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '(13) 98765-4324', 'USU', 'imgs/imgp/homem.png', '0.00', 'Ativo', '65ded5353c5ee48d0b7d48c591b8f430'),
(30, 'matheus', 'santos ', 'matheus_itanhaem@hotmail.com', 'M', NULL, '2017-12-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '(13) 99695-4878', 'USU', 'imgs/imgp/homem.png', '0.00', 'Ativo', 'cae8d6e648b3cf830f695d56fb25691f'),
(31, 'bruna', 'cristina', 'brusouza1400@gmail.com', 'F', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '(13) 99785-0197', 'USU', 'imgs/imgp/mulher.png', '0.00', 'Ativo', '25f9e794323b453885f5181f1b624d0b'),
(32, 'Jhonatan', 'santos', 'jdc_jdc@outlook.com', 'M', NULL, '1993-02-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '(13) 99999-9999', 'USU', 'imgs/imgp/homem.png', '0.00', 'Ativo', 'ff0685bd9b8074aaf04b68150f3a2a6f');

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `TB_USUARIO_CARRINHO`
--
CREATE TABLE IF NOT EXISTS `TB_USUARIO_CARRINHO` (
`CD` int(11)
,`USUARIO` int(11)
,`CODIGO` int(11)
,`PRODUTO` varchar(50)
,`FOTO` varchar(80)
,`QUANTIDADE DO PRODUTO` int(11)
,`DESCRICAO DO PRODUTO` longtext
,`VALOR DO PRODUTO` decimal(10,2)
);
-- --------------------------------------------------------

--
-- Estrutura para view `TB_PRODUTO_FABRICANTE`
--
DROP TABLE IF EXISTS `TB_PRODUTO_FABRICANTE`;

CREATE ALGORITHM=UNDEFINED DEFINER=`xtranx`@`%` SQL SECURITY DEFINER VIEW `TB_PRODUTO_FABRICANTE` AS select `F`.`NM_FABRICANTE` AS `FABRICANTE`,`P`.`NM_PRODUTO` AS `NOME DO PRODUTO` from (`TB_PRODUTO` `P` join `TB_FABRICANTE` `F`) where (`P`.`ID_FABRICANTE` = `F`.`CD_FABRICANTE`) group by `P`.`NM_PRODUTO`;

-- --------------------------------------------------------

--
-- Estrutura para view `TB_USUARIO_CARRINHO`
--
DROP TABLE IF EXISTS `TB_USUARIO_CARRINHO`;

CREATE ALGORITHM=UNDEFINED DEFINER=`xtranx`@`%` SQL SECURITY DEFINER VIEW `TB_USUARIO_CARRINHO` AS select `C`.`CD_CARRINHO` AS `CD`,`C`.`ID_USUARIO` AS `USUARIO`,`C`.`ID_INTERNO` AS `CODIGO`,`P`.`NM_PRODUTO` AS `PRODUTO`,`P`.`DS_FOTO_PRODUTO` AS `FOTO`,`C`.`QT_PRODUTO` AS `QUANTIDADE DO PRODUTO`,`P`.`DS_DESCRIÇÃO` AS `DESCRICAO DO PRODUTO`,`P`.`VL_PRODUTO` AS `VALOR DO PRODUTO` from (`TB_PRODUTO` `P` join `TB_CARRINHO` `C`) where (`C`.`ID_INTERNO` = `P`.`CD_INTERNO`);

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `TB_CARRINHO`
--
ALTER TABLE `TB_CARRINHO`
  ADD CONSTRAINT `TB_CARRINHO_ibfk_1` FOREIGN KEY (`ID_INTERNO`) REFERENCES `TB_PRODUTO` (`CD_INTERNO`),
  ADD CONSTRAINT `TB_CARRINHO_ibfk_2` FOREIGN KEY (`ID_USUARIO`) REFERENCES `TB_USUARIO` (`CD_USUARIO`);

--
-- Restrições para tabelas `TB_COMPRA`
--
ALTER TABLE `TB_COMPRA`
  ADD CONSTRAINT `TB_COMPRA_ibfk_1` FOREIGN KEY (`ID_USUARIO`) REFERENCES `TB_USUARIO` (`CD_USUARIO`),
  ADD CONSTRAINT `TB_COMPRA_ibfk_2` FOREIGN KEY (`ID_FORMA_PGTO`) REFERENCES `TB_FORMA_PGTO` (`CD_FORMA_PGTO`);

--
-- Restrições para tabelas `TB_LISTA`
--
ALTER TABLE `TB_LISTA`
  ADD CONSTRAINT `TB_LISTA_ibfk_1` FOREIGN KEY (`ID_USUARIO`) REFERENCES `TB_USUARIO` (`CD_USUARIO`);

--
-- Restrições para tabelas `TB_PRODUTO`
--
ALTER TABLE `TB_PRODUTO`
  ADD CONSTRAINT `TB_PRODUTO_ibfk_1` FOREIGN KEY (`ID_FABRICANTE`) REFERENCES `TB_FABRICANTE` (`CD_FABRICANTE`),
  ADD CONSTRAINT `TB_PRODUTO_ibfk_2` FOREIGN KEY (`ID_CATEGORIA`) REFERENCES `TB_CATEGORIA` (`CD_CATEGORIA`),
  ADD CONSTRAINT `TB_PRODUTO_ibfk_3` FOREIGN KEY (`ID_USUARIO`) REFERENCES `TB_USUARIO` (`CD_USUARIO`);

--
-- Restrições para tabelas `TB_PRODUTO_COMPRA`
--
ALTER TABLE `TB_PRODUTO_COMPRA`
  ADD CONSTRAINT `TB_PRODUTO_COMPRA_ibfk_1` FOREIGN KEY (`ID_COMPRA`) REFERENCES `TB_COMPRA` (`CD_COMPRA`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
