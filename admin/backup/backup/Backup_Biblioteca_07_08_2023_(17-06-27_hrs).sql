SET FOREIGN_KEY_CHECKS=0;

CREATE DATABASE IF NOT EXISTS bibliotecauni;

USE bibliotecauni;

DROP TABLE IF EXISTS administrador_biblioteca;

CREATE TABLE `administrador_biblioteca` (
  `id_bibliotecario` int(10) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `ape` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `ced` int(12) NOT NULL,
  `user` varchar(40) NOT NULL,
  `pass` varchar(150) NOT NULL,
  `id_extreme` varchar(50) NOT NULL,
  PRIMARY KEY (`id_bibliotecario`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO administrador_biblioteca VALUES("15","Kevin Hernado","Chicaiza Cepeda","503026874","agt","9ae30da0aae20c0563db53bfce73ed3f035e1166","");
INSERT INTO administrador_biblioteca VALUES("16","Daniela Lisbeth","Pillajo Collaguazo","1727641290","dani","8cb2237d0679ca88db6464eac60da96345513964","");
INSERT INTO administrador_biblioteca VALUES("17","admin","admin","999999999","admin","d033e22ae348aeb5660fc2140aec35850c4da997","");
INSERT INTO administrador_biblioteca VALUES("18","kevin","chicaiza","503026874","kevin","8cb2237d0679ca88db6464eac60da96345513964","");



DROP TABLE IF EXISTS categorias;

CREATE TABLE `categorias` (
  `id_categoria` int(10) NOT NULL AUTO_INCREMENT,
  `nombre_categoria` varchar(50) NOT NULL,
  `id_subcategoria` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_categoria`),
  KEY `id_subcategoria` (`id_subcategoria`),
  CONSTRAINT `categorias_ibfk_1` FOREIGN KEY (`id_subcategoria`) REFERENCES `subcategorias` (`id_subcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO categorias VALUES("25","Administracion Financiera ","");
INSERT INTO categorias VALUES("26","Desarrollo de Software","");
INSERT INTO categorias VALUES("27","Gastronomia","");
INSERT INTO categorias VALUES("28","Marketing Digital","");
INSERT INTO categorias VALUES("29","Contabilidad","");
INSERT INTO categorias VALUES("30","Seguridad e Higiene del Trabajo","");
INSERT INTO categorias VALUES("31","Ingles","");
INSERT INTO categorias VALUES("32","Cultura General","");



DROP TABLE IF EXISTS comentarios;

CREATE TABLE `comentarios` (
  `id_comentario` int(10) NOT NULL AUTO_INCREMENT,
  `remitente` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `asunto` varchar(50) NOT NULL,
  `mensaje` varchar(250) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id_comentario`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO comentarios VALUES("9","Kevin","vitoligista108@gmail.com","0990173274","dgeaagarge","2023-07-27");
INSERT INTO comentarios VALUES("13","Kevin Chicaiza","vitoligista108@gmail.com","0990173274","Anatomia-Biologica","2023-08-07");



DROP TABLE IF EXISTS inventario;

CREATE TABLE `inventario` (
  `id_inventario` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(200) NOT NULL,
  `ISBN` varchar(100) NOT NULL,
  `libro` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `autor` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `descripcion` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `fila` varchar(100) NOT NULL,
  `categoria` int(100) NOT NULL,
  `estante` int(100) NOT NULL,
  `estado` int(200) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id_inventario`)
) ENGINE=InnoDB AUTO_INCREMENT=683 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO inventario VALUES("127","ISTVL-CONT-APGINIIF 01"," 978-9942-13-776-0","Analisis Practico y Guia de Implementacion de NIIF","Jorge E. Zapata L.","Ediciones Abya - Yala","Ecuador","2014","4","4","2023-08-07");
INSERT INTO inventario VALUES("128","ISTVL-CONT-AG 02"," 9978-44-774-1","Auditoria de Gestion","Milton K. Maldonado E.","Ediciones Abya - Yala","Ecuador","2014","4","4","2023-08-07");
INSERT INTO inventario VALUES("129","ISTVL-CONT-NIIFPIYMES 03"," 978-1-907026-34-8","NIIF para las Peque?as y Medianas Entidades","Consejo de Normas Internacionales de Contabilidad","IASCF","Reino Unido","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("130","ISTVL-CONT-CF 04"," 978-970-817-151-9","Contabilidad Financiera","Miguel A. Segura Aguilar","Grupo Editoral Patria","M?xico","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("131","ISTVL-CONT-CS 05"," 978-970-24-1029-4","Contabilidad de Sociedades","Joaqu?n Moreno Fern?ndez","Grupo Editoral Patria","M?xico","2014","3","0","0000-00-00");
INSERT INTO inventario VALUES("132","ISTVL-CONT-EDE 06"," 978-607-32-1834-4","Evoluci?n y Diagnostico Empresarial","Enrique Benjam?n Franklin","Pearson","M?xico","2014","3","0","0000-00-00");
INSERT INTO inventario VALUES("133","ISTVL-CONT-ACI 07"," 84-8055-890-9","Auditoria y Control Interno","Grupo Cultural","Cultural S.A.","Espa?a","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("134","ISTVL-CONT-CG 08"," 978-99-42-01-071-1","Contabilidad General","Jos? Vicente V?sconez Arroyo","Imprenta Mariscal","Ecuador","2014","3","0","0000-00-00");
INSERT INTO inventario VALUES("135","ISTVL-CONT-CG 14 "," 9978-41-636-6","Contabilidad General","Mercedes Bravo Valdivieso","Editora Escobar","Ecuador","2014","10","0","0000-00-00");
INSERT INTO inventario VALUES("136","ISTVL-CONT-ICRCDM 11 "," 9978-43-285-X","Introduccu?n a la Contabilidad Redacci?n Comercial y Documentacion Mercantil","Jos? Vicente V?sconez Arroyo","Imprenta Mariscal","Ecuador","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("137","ISTVL-CONT-CI 12"," 9978-41-2x8-x","Contabilidad Intermedia","Jos? Vicente V?sconez Arroyo","Imprenta Mariscal","Ecuador","2014","3","0","0000-00-00");
INSERT INTO inventario VALUES("138","ISTVL-CONT-MEPEF 13"," 978-9942-03-296-6","Manual para la Elaboraci?n y Presentaci?n de Estados Financieros","Nelson G. Aguirre S.","Grafitext","N/N","2014","2","0","0000-00-00");
INSERT INTO inventario VALUES("139","ISTVL-CONT-CC 15 "," 978-9978-45-849-5","Contabilidad de Costos","Mercedes Bravo Valdivieso, Carmita Ubidia Tapia","Editora  Nuevod?a","Ecuador","2014","2","0","0000-00-00");
INSERT INTO inventario VALUES("140","ISTVL-CONT-CC  16"," 9978 41 636 6","Contabilidad de Costos","Jos? Vicente V?sconez Arroyo","Imprenta Mariscal","Ecuador","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("141","ISTVL-CONT-CCTE 17"," 978-9942-14-251-1","Contabilidad de Costos-Teor?a y ejercicios","Ing. Molina Antonio","Jorase","Ecuador","2014","5","0","0000-00-00");
INSERT INTO inventario VALUES("142","ISTVL-SOFT- GEIOP2-39","S/N","Ordenadores Personales II","Ediciones Nueva Lente","S/N","S/N","0","0","0","0000-00-00");
INSERT INTO inventario VALUES("143","ISTVL-CONT-PE20"," 978-9942-30-336-3","Presupuestos Empresariales","Dra. Myriam Hidalgo, McAIng. ?ngel Villaroel, McA. Ing. Milton Hidalgo, MSc.","Imprenta Tallpa","Ecuador","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("144","ISTVL-CONT-CTD 21"," 978-958-762-796-1","Contabilidad para la toma de decisiones","Uriel Guillermo Angulo Guiza","Ediciones de la U","Colombia","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("145","ISTVL-CONT-MCC22"," 978-9972-209-79-6","Manual de Contabilidad de Costos","Lexus","Editorial de Lexus Editores","Espa?a","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("146","ISTVL-CONT-CCCAMSTC23"," 84-89436-21-5","Contabilidad de costos 1Contabilidad anal?tica-M?todos y sistemas-Tipos de costos","Dr. Juan M. Aguirre Ormaechea, D?a. Marta Prieto Guerrero, D. Juan Antonio Escamilla L?pez","Cultural de Ediciones, S.A.","Espa?a","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("147","ISTVL-CONT-CCGCPCGFC24"," 84-89436-22-3","Contabilidad de costos II Gesti?n y Control presupuestario-Control de Gesti?n. La funci?n del Contro","Dr. Juan M. Aguirre Ormaechea, D?a. Marta Prieto Guerrero, D. Juan Antonio Escamilla L?pez","Cultural de Ediciones, S.A.","Espa?a","2014","2","0","0000-00-00");
INSERT INTO inventario VALUES("148","ISTVL- CONT-AINTCIPTOP25"," 84-89436-06-1","Auditor?a I Normas t?cnicas, control interno, planificaci?n del trabajo, objetivos y procedimientos.","D. Juan M. Aguirre Ormaechea, D. Juan Antonio Escamilla L?pez","Cultural de Ediciones, S.A.","Espa?a","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("149","ISTVL-CONT-MAAECS26"," 0-618-29358-2","Matem?ticas aplicadas a la administraci?n, econom?a y ciencias sociales","HarshbargerReynolds","Mc Graw Hill Interamericana","M?xico","2014","7","0","0000-00-00");
INSERT INTO inventario VALUES("150","ISTVL-CONT-ACI27"," 84-8055-870-9","Auditor?a y control interno","Dr. Juan Aguirre","Cultural Ediciones, S.A.","Espa?a","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("151","ISTVL-CONT-ESBUMFDT28"," 958-28-0413-0","Enciclopedia Superior para el Bachillerato y la Universidad- Matem?ticas, F?sica, Dibujo T?cnico","Francisco Rubio, Jos? Mar?a Ferrer, Amador P?rez","Editorial Printer Latinoamericana Ltda.","Colombia","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("152","ISTVL-CONT-CCS29"," 9978-82-787-0-95-07-27","Contabilidad comercial y de servicios","Marcelo Naranjo, Joselito Naranjo","M.E.C","Ecuador","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("153","ISTVL-CONT-CCOP30","9978-95-056-7-(96-05-22)","Contabilidad de costos por ?rdenes de producci?n","Marcelo Naranjo, Joselito Naranjo","ECOP","Ecuador","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("154","ISTVL-CONT-CGTPALN31"," S/N","Contabilidad GeneralTeor?a y practica aplicada a la legislaci?n nacional","Dr. Jos? Orozco Cadena","Emanuel Editores","Ecuador","2014","4","0","0000-00-00");
INSERT INTO inventario VALUES("155","ISTVL-CONT-CG32","978-9942-03-705-3","Contabilidad General","Mercedes Bravo Valdivieso","Editora Escobar","Ecuador","2014","10","0","0000-00-00");
INSERT INTO inventario VALUES("156","ISTVL-CONT-CGBNIIF33"," 978-958-778.213-4","Contabilidad General con Base en Normas Internacionales de Informai?n Financiera","Pedro Zapata S?nchez","Alfaomega","Colombia","2014","8","0","0000-00-00");
INSERT INTO inventario VALUES("157","ISTVL-CONT-CG34"," 978-9978-09-980-3","Contabilidad General","Lupe Beatriz Espejo Jaramillo","EDILOJA","Ecuador","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("158","ISTVL-CONT-CGNIIF35"," 978-958-41-0420-5","Contabilidad General Con Base en las Normas Internacionales de Informaci?n Financiera","Pedro Zapata S?nchez","McGraw Hill","Colombia","2014","7","0","0000-00-00");
INSERT INTO inventario VALUES("159","ISTVL-CONT-PAPO37"," 978-958-778-554-8","Presupuestos aplicaci?n pr?ctica en las organizaciones","Cralos Alberto Montes, Cristian Andrey Vallejo, Omar Montilla","Alfaomega","Colombia","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("160","ISTVL-CONT-CICEF39","978-607-744-575-3","Contabilidad Intermedia Conceptos de los Estados Financieros","V?ctor Manuel Garc?a Padilla","Grupo Editorial Patria","M?xico","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("161","ISTVL-CONT-MDT40"," 978-9942-10-143-3","Manual de Derecho Tributario","Jos? Vicente Troya Jaramillo","Cep Corporaci?n","Ecuador","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("162","ISTVL-CONT-LCDAYCELEPYS-44","978-9942-13-854-5","LAS COOPERATIVAS DE AHORRO Y CR?DITO EN LA ECONOMPIA POPULAR Y SOLIDARIA","LUIS HUMBERTO CHIRIBOGA ROSALES","IMPREFEPP","Ecuador","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("163","ISTVL-CONT-DEB-46","9789978409596,00","DICCIONARIO ECON?MICO-B?SICO","PATRICIO MART?NEZ","ARTES GR?FICAS SILVA","Ecuador","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("164","ISTVL-CONT-DFYDEPYS-47","978-9942-20-010-5","DICCIONARIO FINANCIERO Y DE ECONOM?A POPULAR Y SOLIDARIA","LUIS ALBERTO CHIRIBOGA ROSALES","IMPREFEPP","Ecuador","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("165","ISTVL-CONT-DTFE-48","9978-41-641-2","DICCIONARIO T?CNICO FINANCIERO ECUATORIANO","LUIS ALBERTO CHIRIBOGA ROSALES","PUBLIGR?FICAS JOKAMA","Ecuador","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("166","ISTVL-CONT-EPDMDELP-49","978-84-17024-33-8","EL PLAN DE MARKETING DIGITAL EN LA PR?CTICA","JOSE MAR?A SAINZ DE VICU?A ANCIN","ESIC EDITORIAL","ESPA?A","2014","2","0","0000-00-00");
INSERT INTO inventario VALUES("167","ISTVL-CONT-LPEDLDDE-50","978-84-15735-95-3","LOS PRINCIPIOS EXITOSOS DE LA DIRECCI?N DE EMPRESAS","ERIC VIARDOT","PROFIT EDITORIAL","ESPA?A","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("168","ISTVL-CONT-DDEDTLYM-51","978-84-92980-14-7","DIRECCI?N DE EQUIPOS DE TRABAJO: LIDERAZGO Y MOTIVACI?N","ICB EDITORES","ICB EDITORES","ESPA?A","2014","2","0","0000-00-00");
INSERT INTO inventario VALUES("169","ISTVL-CONT-LEER-52","ISBN N? 978-9978-17-494-4","LA ECONOM?A EN RESUMEN","PABLO ZAMBRANO PONT?N","EDITORIAL JURIDICA DEL ECUADOR","ECUADOR","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("170","ISTVL-CONT-PDM-53","978-958-762-093-1","PRINCIPIOS DE MARKETING","JORGE E. MALDONADO PINTO","EDICIONES DE LA U","COLOMBIA","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("171","ISTVL-CONT-MEEPDV-54","978-84-17024-34-5","MARKETING EN EL PUNTO DE VENTA","RICARDO PALOMARES BORJA","ESIC EDITORIAL","ESPA?A","2014","3","0","0000-00-00");
INSERT INTO inventario VALUES("172","ISTVL-CONT-RYVO-55","978-987-45708-1-9","RESILENCIA Y VALOR ORGANIZACIONAL","GUSTAVO TAPIA","LIBRYCO","ARGENTINA","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("173","ISTVL-CONT-CPEEU-56","978-84-16383-62-7","CLAVES PARA EL ?XITO UNIVERSITARIO","MAR?A MARTA ZAPATA","EDIBERUM","ESPA?A","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("174","ISTVL-CONT-DTTD-57","978-84-17024-73-4","DESARROLLA TU TALENTO DIGITAL","DAVID VILLASECA MORALES","ESIC EDITORIAL","ESPA?A","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("175","ISTVL-CONT-CTPE-58","978-84-16115-98-3","CONECTAR TALENTO, PROYECTAR EFICACIA","ALICIA POMARES","PROFIT EDITORIAL","ESPA?A","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("176","ISTVL-CONT-PM-59","978-84-16115-91-4","PRODUCT MANAGER","STEVEN HAINES","PROFIT EDITORIAL","ESPA?A","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("177","ISTVL-CONT-MDDDUDC-60","978-84-16383-83-2","MANUAL DE DIRECCI?N DE UN DEPARTAMENTO COMERCIAL","LUIS MANUEL CERD? SU?REZ","EDIBERUM","ESPA?A","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("178","ISTVL-CONT-CHUPDE-61","978-84-16115-29-7","COMO HACER UN PLAN DE EMPRESA","JOSE MANUEL MART?  THIERRY CASILLAS","PROFIT EDITORIAL","ESPA?A","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("179","ISTVL-CONT-MPP-62","978-84-15781-42-4","MARCA PERSONAL PROFESIONAL","MAR?A CLAUDIA LONDO?O","FC EDITORIAL","ESPA?A","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("180","ISTVL-CONT-IALAEYE-63","978-84-283-3811-0","INICIACI?N A LA ACTIVIDADEMPRENDEDORA Y EMPRESARIAL","JAVIER PELAYO GONZ?LEZ  FRANCISCO JAVIER RODR?GUEZ LAGU?A","","ESPA?A","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("181","ISTVL-DG-CMRT-025","","CONOCIMIENTO DE MATERIALES PARA RADIO Y TELEVISI?N","A. ALASTRUE","BIBLIOTECA PROFESIONAL","ZARAGOZA","1962","1","0","0000-00-00");
INSERT INTO inventario VALUES("182","ISTVL-ADFI-ECONO01"," 970-10-5381","Econom?a","Samuelson Nordhaus","Mc Graw Hill","Colombia","2006","18","0","0000-00-00");
INSERT INTO inventario VALUES("183","ISTVL-ADFI-TGADMI02"," 978-970-817-087-1","Teor?a General de la Administraci?n","Zavar?as Torres Hern?ndez","Grupo Editorial Patria","M?xico","2007","1","0","0000-00-00");
INSERT INTO inventario VALUES("184","ISTVL-ADFI-FADFI03"," 978-970-24-0039-4","Fundamentos de Administraci?n Financiera","Eugene f. Brigham y Joel F. Houston","Grupo Editorial Patria","M?xico","2011","8","0","0000-00-00");
INSERT INTO inventario VALUES("185","ISTVL-ADFI-PLANFI04"," 978-607-438-216-7","Planeaci?n Financiera","Arturo Morales Castro y Jos? Antonio Morales Castro","Grupo Editorial Patria","M?xico","2010","1","0","0000-00-00");
INSERT INTO inventario VALUES("186","ISTVL-ADFI-FINA05"," 978-607-438-055-2","Finanzas","Jos? Antonio Morales Castro","Grupo Editorial Patria","M?xico","2009","1","0","0000-00-00");
INSERT INTO inventario VALUES("187","ISTVL-ADFI-EFEM06"," 978-607-438-203-7","Estrateg?as Financieras Empresariales","Alberto Garc?a Nava y Ludgar Meling Paredes Hern?dez","Grupo Editorial Patria","M?xico","2010","1","0","0000-00-00");
INSERT INTO inventario VALUES("188","ISTVL-ADFI-ESFICON07"," 978-938-648-555-5","Estados Financieros Consolidados","?ngel Mar?a Fierro Mart?nez","Ecoe Ediciones Ltda.","Colombia","2010","2","0","0000-00-00");
INSERT INTO inventario VALUES("189","ISTVL-ADFI-OBINT08"," 978-958-643-522-7","Operaciones Bancarias Internacionales","Robert Marcuse","Ecoe Ediciones Ltda.","Colombia","2007","5","0","0000-00-00");
INSERT INTO inventario VALUES("190","ISTVL-ADFI-GEPR09"," 978-958-762-165-5","Gesti?n de Proyectos","Raquel Campo Arraz, Mar?a del Campo Dom?nguez","Ediciones de la U","Colombia","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("191","ISTVL-ADFI-MF10","978-958-778-511-1","Matem?ticas Financiera ","Armando Mora Zambrano","Alfaomega Colombiana","Colombia","2019","5","0","0000-00-00");
INSERT INTO inventario VALUES("192","ISTVL-ADFI-MF11","968-422-160-6","Matem?ticas Financiera ","Frank Ayres, Jr.","McGRAW-HILL","M?xico","1997","1","0","0000-00-00");
INSERT INTO inventario VALUES("193","ISTVL-ADFI-AEN12","0-324-02002-3","An?lisis y Evaluaci?n de Negocios","Palepu, Healy, Bernard","Thompson Learning","M?xico","2002","2","0","0000-00-00");
INSERT INTO inventario VALUES("194","ISTVL-ADFI-ACPN13","958-41-0038-6","An?lisis Cuantitativo para los Negocios","Bonini. Hausman, Bierman","McGRAW-HILL","M?xico","2000","9","0","0000-00-00");
INSERT INTO inventario VALUES("195","ISTVL-ADFI-MCPN14","970-686-372-9","M?todos Cunatitativos para los Negocios","Anderson, Sweeney, Williams","Thompson Learning","M?xico","2004","9","0","0000-00-00");
INSERT INTO inventario VALUES("196","ISTVL-ADFI-GVDE15","84-205-4010-2","Gu?a de Valoraci?n de Empresas","Sanjurjo Reiniso","Prentice Hall","Madrid","2003","2","0","0000-00-00");
INSERT INTO inventario VALUES("197","ISTVL-ADFI-CDLO16","84-8086-258-0","Comportramiento de las Organizaciones","Kreitner/Kinicki","Irwin","Espa?a","1996","3","0","0000-00-00");
INSERT INTO inventario VALUES("198","ISTVL-ADFI-SDSPAI17","970-24-0843-1","Simulaci?n de Sistemas para la Administraci?n e Ingenier?a","Francisco Garc?a, Jorge Sierra, Virginia Guzm?n","DECSA","M?xico","2005","1","0","0000-00-00");
INSERT INTO inventario VALUES("199","ISTVL-ADFI-LCPE18","84-267-0693-2","L a Capacidad permannete en la Empresa","Francesc Castanyer Figueras","Alfaomega Colombiana","Bogot?","1999","0","0","0000-00-00");
INSERT INTO inventario VALUES("200","ISTVL-ADFI-EC19","968-23-0249-8","El Capital","Friedrich Engels","Siglo XXI editores","Colombia","1986","6","0","0000-00-00");
INSERT INTO inventario VALUES("201","ISTVL-ADFI-CIE20","978-9942-35-904-9","Control Interno Empresarial","Jorge R. Ayala Molina","El Telegrafo","Ecuador","2020","1","0","0000-00-00");
INSERT INTO inventario VALUES("202","ISTVL-ADFI-COPFP21","978-9978-86-948-2","Codigo Org?nico de Planificac?on Y finanzas Publicas","Legislac?on Codificada","Cep","Ecuador","2017","1","0","0000-00-00");
INSERT INTO inventario VALUES("203","ISTVL-ADF-RCE22"," 970-707-15-1193-5","Redacci?n Comercial Estructurada ","Dem?stemes Rojas Risco ","Mc GRAW HILL Education","M?xico","2014","6","0","0000-00-00");
INSERT INTO inventario VALUES("204","ISTVL-ADF-PDE23","978-958-648-541-8","Principios de Desarrollo Econ?mico","Ignacio Aguilar Zuluaga","ECOE","COLOMBIA","2014","2","0","0000-00-00");
INSERT INTO inventario VALUES("205","ISTVL-ADF-VA24"," 978-84-83-22-594-3","Valoraci?n ","Sheridan Titman, Jhon D. Martin ","PEARSON PRENTICE HALL","Espa?a","2009","1","0","0000-00-00");
INSERT INTO inventario VALUES("206","ISTVL-ADF-RSE25"," 978-607-32-0940-3","Responsabildad Social y Empresarial","Emanuel Raufflet","PEARSON PRENTICE HALL","M?xico","2012","1","0","0000-00-00");
INSERT INTO inventario VALUES("207","ISTVL-ADF-PFPS26"," SN","Planificaci?n de las Finanzas Populares y Solidarias ","Enrique Orellana ","SOCIAL NODOS ","Ecuador","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("208","ISTVL-ADF-AI27"," 0-03-02-1161-1","An?lisis Instrumental","Douglas A. Skoog","Mc GRAW-HILL","M?xico","1992","2","0","0000-00-00");
INSERT INTO inventario VALUES("209","ISTVL-ADFI-IFGMFI28"," 84-481-1854-5","Ingeneria Financiera","Luis D?ez de Castro/ Juan Mascarenas","Mc GRAW-HILL","Espa?a","1987","2","0","0000-00-00");
INSERT INTO inventario VALUES("210","ISTVL-ADFI-AO29"," 968-24-3700-8","Adminitraci?n por objetivos","Anthony P. Raia","TRILLAS","M?xico","1995","2","0","0000-00-00");
INSERT INTO inventario VALUES("211","ISTVL-ADFI-AUPG30"," 970-10-3949-1","Administraci?n de una perspectiva global","Harold Koontz","McGRAW-HILL","M?xico","0","12","0","0000-00-00");
INSERT INTO inventario VALUES("212","ISTVL-ADFI-SF31"," 978-9978-45-909-6","Sistema Financiero","Luis Alberto Chiriboga","Jokama","Ecuador","2002","1","0","0000-00-00");
INSERT INTO inventario VALUES("213","ISTVL-ADFI-DPTEF35"," 978-9942-01-784-0","Diccionario practico de terminos Economicos Financieros","Patricio Mart?nez","Grafitex","Ecuador","2003","1","0","0000-00-00");
INSERT INTO inventario VALUES("214","ISTVL-GAST-PMSG01"," 978-9978-22-818-0","Plantas Medicinales de Salinas de Guaranda","Monserrat Rios, Victor Yanchaliquin, otros","Abya-Yala","Ecuador","2009","1","0","0000-00-00");
INSERT INTO inventario VALUES("215","ISTVL-GAST-ERC02"," 978-9942-11-745-8","El Repertorio de la Cocina","Louis Saulnier","Octupuslab","Ecuador","2012","1","0","0000-00-00");
INSERT INTO inventario VALUES("216","ISTVL-GAST-EPA03"," 978-958-8789-74-5","El Poder del Alimento","Boris Cham?s","Nomos ","Bogot?","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("217","ISTVL-GAST-INE04"," 0-8213-7042-1 ISBN 13: 978-0-8213-7042-1","Insuficiencia Nutricional en el Ecuador","Banco Mundial","Copyright","Estados Unidos","2007","1","0","0000-00-00");
INSERT INTO inventario VALUES("218","ISTVL-GAST-LCP05"," 978-9972-62-552-7","La Cocina Peruana","Lexus Editores","Lexus","Espa?a","2012","1","0","0000-00-00");
INSERT INTO inventario VALUES("219","ISTVL-GAST-P06"," 978-1-40-75-2716-1","Pasta","Christine France","Parragon Books","China","2008","1","0","0000-00-00");
INSERT INTO inventario VALUES("220","ISTVL-GAST-LPC07"," 978-9974-696-72-3","La Panaderia en Casa","Juan Mariano de Diego","Arquetipo Grupo Editorial","Uruguay","2012","1","0","0000-00-00");
INSERT INTO inventario VALUES("221","ISTVL-GAST-P08"," 978-607-404-255-9","Pollo","Chuck Williams ","Williamns-Sonoma","M?xico","2012","1","0","0000-00-00");
INSERT INTO inventario VALUES("222","ISTVL-GAST-S09"," 978-607-404-250-4","Sopas","Chuck Williams ","Williamns-Sonoma","M?xico","2012","1","0","0000-00-00");
INSERT INTO inventario VALUES("223","ISTVL-GAST-S10"," 978-607-404-252-8","Salsas","Chuck Williams ","Williamns-Sonoma","M?xico","2012","1","0","0000-00-00");
INSERT INTO inventario VALUES("224","ISTVL-GAST-AH11"," 978-607-404-243-6","Al Horno","Chuck Williams ","Williamns-Sonoma","M?xico","2012","1","0","0000-00-00");
INSERT INTO inventario VALUES("225","ISTVL-GAST-PA12"," 978-958-45-2275-7","Parrillada de Aves","M?nica Oviedo Torreblanca","Norma","Bogot?","2010","1","0","0000-00-00");
INSERT INTO inventario VALUES("226","ISTVL-GAST-PM13"," 978-1-454-0673-2","Pescado y Mariscos","Parragon","The Bridgewater Book Company Ltd.","Espa?a","2010","1","0","0000-00-00");
INSERT INTO inventario VALUES("227","ISTVL-GAST-PC14"," 978-9962-04-085-9","Pasteler?a Creativa","Juan Mariano de Diego","B.T International","China","2013","1","0","0000-00-00");
INSERT INTO inventario VALUES("228","ISTVL-GAST-B15"," 978-9972-625-91-6","Buffet","Lexus Editores","B.T International","China","2013","1","0","0000-00-00");
INSERT INTO inventario VALUES("229","ISTVL-GAST-LMRDR16"," 978-9962-04-037-8","Las Mejores Recetas de Reposteria","Lexus Editores","Grafos","Espa?a","2011","1","0","0000-00-00");
INSERT INTO inventario VALUES("230","ISTVL-GAST-E17"," 978-9972-209-96-3","Ensaladas","Lexus Editores","Egedsa","Espa?a","2012","1","0","0000-00-00");
INSERT INTO inventario VALUES("231","ISTVL-GAST-CH18"," 978-9972-625-70-1","Chifa","Lexus Editores","B.T International","China","2011","1","0","0000-00-00");
INSERT INTO inventario VALUES("232","ISTVL-GAST-CM19"," 978-9962-04-054-5","Cocina Mediterranea","Lexus Editores","B.T International","China","2012","1","0","0000-00-00");
INSERT INTO inventario VALUES("233","ISTVL-GAST-DT20"," 13-978-987-608-048-4","Decoraci?n de Tortas ","Lexus Editores","Egedsa","Espa?a","2013","1","0","0000-00-00");
INSERT INTO inventario VALUES("234","ISTVL-GAST-EFV31"," 978-9972-209-83-3","Escultura en Frutas y Verduras","Lexus Editores","Grafos","Espa?a","2009","1","0","0000-00-00");
INSERT INTO inventario VALUES("235","ISTVL-GAST-PMDT22"," 978-9972-209-75-8","Pastillaje lo Mejor en Decoraci?n de Tortas","Lexus Editores","B.T International","China","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("236","ISTVL-GAST-LCPL23"," -13:9780-71148-63719","La Cuchara de Plata","Michelle Lo","Phaidon","Italia","2007","1","0","0000-00-00");
INSERT INTO inventario VALUES("237","ISTVL-GAST-TPWP24"," 978-9974-8220-3-0","Todo a la Parrilla Work y Plancha","Jorge Oyenard","EME","Uruguay","2009","7","0","0000-00-00");
INSERT INTO inventario VALUES("238","ISTVL-GAST-PL25"," 978-9974-82-02-6-5","Parrilla Laight y Vegetariana","Jorge Oyenard","EME","Uruguay","2009","6","0","0000-00-00");
INSERT INTO inventario VALUES("239","ISTVL-GAST-AP26"," 978-958-45-2274-0","Acompa?amiento a la Parrilla","M?nica Oviedo Torreblanca","Norma","Bogot?","2010","1","0","0000-00-00");
INSERT INTO inventario VALUES("240","ISTVL-GAST-CRP27"," 978-958-45-2279-5","Comidas Rapidas a la Parrilla","M?nica Oviedo Torreblanca","Norma","Bogot?","2010","1","0","0000-00-00");
INSERT INTO inventario VALUES("241","ISTVL-GAST-V28"," 978-607-7965-33-0","Verduras","Marlena Spieler","Cordillera","Chile","2011","1","0","0000-00-00");
INSERT INTO inventario VALUES("242","ISTVL-GAST-EEQ29"," 978-974-709-52-2","Entradas y Ensaladas Queso","Camila Selves","EME","Uruguay","2012","1","0","0000-00-00");
INSERT INTO inventario VALUES("243","ISTVL-GAST-RC30","\"ISBN"," 978-612-300-206-0\"","Roscas y Croissants","Fabiana Artagaveytia","EME","0","2013","0","0000-00-00");
INSERT INTO inventario VALUES("244","ISTVL-GAST-EFL32"," 978-9974-709-51-5","Ensaladas Frescas y Light","Camila Selves","EME","Uruguay","2012","1","0","0000-00-00");
INSERT INTO inventario VALUES("245","ISTVL-GAST-GC33"," 978-612-300-203-9","Grisines y crocantes","Fabiana Artagaveytia","EME","Uruguay","2013","1","0","0000-00-00");
INSERT INTO inventario VALUES("246","ISTVL-GAST-AIF34","Ref.851-54","Atlas ilustrado de las frutas","Ana Doblado","Susaeta","Espa?a","0","0","0","0000-00-00");
INSERT INTO inventario VALUES("247","ISTVL-GAST-ACS35","978-9962-04-304-1","Ahumado, Curado y Secado","Turan T. Turan ","Lexus","Reino Unido ","2015","1","0","0000-00-00");
INSERT INTO inventario VALUES("248","ISTVL-GAST-ESC36"," 84-7137-765-9","Enciclopedia Salvat de la Cocina Tomo 1","Salvat, S.A.","Ediper","Spain","1984","1","0","0000-00-00");
INSERT INTO inventario VALUES("249","ISTVL-GAST-ESC37"," 84-7137-766-7","Enciclopedia Salvat de la Cocina Tomo 2","Salvat, S.A.","Ediper","Spain","1984","1","0","0000-00-00");
INSERT INTO inventario VALUES("250","ISTVL-GAST-ESC38"," 84-7137-767-5","Enciclopedia Salvat de la Cocina Tomo 3","Salvat, S.A.","Ediper","Spain","1984","1","0","0000-00-00");
INSERT INTO inventario VALUES("251","ISTVL-GAST-ESC39"," 84-7137-768-3","Enciclopedia Salvat de la Cocina Tomo 4","Salvat, S.A.","Ediper","Spain","1984","1","0","0000-00-00");
INSERT INTO inventario VALUES("252","ISTVL-GAST-ESC40"," 84-7137-769-1","Enciclopedia Salvat de la Cocina Tomo 5","Salvat, S.A.","Ediper","Spain","1984","1","0","0000-00-00");
INSERT INTO inventario VALUES("253","ISTVL-GAST-ESC41"," 84-7137-770-5","Enciclopedia Salvat de la Cocina Tomo 6","Salvat, S.A.","Ediper","Spain","1984","1","0","0000-00-00");
INSERT INTO inventario VALUES("254","ISTVL-GAST-ESC42"," 84-7137-771-3","Enciclopedia Salvat de la Cocina Tomo 7","Salvat, S.A.","Ediper","Spain","1984","1","0","0000-00-00");
INSERT INTO inventario VALUES("255","ISTVL-GAST-ESC43"," 84-7137-772-1","Enciclopedia Salvat de la Cocina Tomo 8","Salvat, S.A.","Ediper","Spain","1984","1","0","0000-00-00");
INSERT INTO inventario VALUES("256","ISTVL-GAST-ESC44"," 84-7137-773-X","Enciclopedia Salvat de la Cocina Tomo 9","Salvat, S.A.","Ediper","Spain","1984","1","0","0000-00-00");
INSERT INTO inventario VALUES("257","ISTVL-GAST-ESC45"," 84-7137-774-8","Enciclopedia Salvat de la Cocina Tomo 10","Salvat, S.A.","Ediper","Spain","1984","1","0","0000-00-00");
INSERT INTO inventario VALUES("258","ISTVL-GAST-ESC46"," 84-7137-775-6","Enciclopedia Salvat de la Cocina Tomo 11","Salvat, S.A.","Ediper","Spain","1984","1","0","0000-00-00");
INSERT INTO inventario VALUES("259","ISTVL-GAST-ESC47"," 84-7137-776-4","Enciclopedia Salvat de la Cocina Tomo 12","Salvat, S.A.","Ediper","Spain","1984","1","0","0000-00-00");
INSERT INTO inventario VALUES("260","ISTVL-GAST-ESC48"," 84-7137-777-2","Enciclopedia Salvat de la Cocina Tomo 13","Salvat, S.A.","Ediper","Spain","1984","1","0","0000-00-00");
INSERT INTO inventario VALUES("261","ISTVL-GAST-ESC49"," 84-7137-778-0","Enciclopedia Salvat de la Cocina Tomo 14","Salvat, S.A.","Ediper","Spain","1984","1","0","0000-00-00");
INSERT INTO inventario VALUES("262","ISTVL-GAST-ESC50"," 84-7137-779-9","Enciclopedia Salvat de la Cocina Tomo 15","Salvat, S.A.","Ediper","Spain","1984","1","0","0000-00-00");
INSERT INTO inventario VALUES("263","ISTVL-GAST-ESC51"," 84-7137-780-2","Enciclopedia Salvat de la Cocina Tomo 16","Salvat, S.A.","Ediper","Spain","1984","1","0","0000-00-00");
INSERT INTO inventario VALUES("264","ISTVL-GAST-ESC52"," 84-7137-781-0","Enciclopedia Salvat de la Cocina Tomo 17","Salvat, S.A.","Ediper","Spain","1984","1","0","0000-00-00");
INSERT INTO inventario VALUES("265","ISTVL-GAST-ESC53"," 84-7137-782-9","Enciclopedia Salvat de la Cocina Tomo 18","Salvat, S.A.","Ediper","Spain","1984","1","0","0000-00-00");
INSERT INTO inventario VALUES("266","ISTVL-GAST-ESC54"," 84-7137-783-7","Enciclopedia Salvat de la Cocina Tomo 19","Salvat, S.A.","Ediper","Spain","1984","1","0","0000-00-00");
INSERT INTO inventario VALUES("267","ISTVL-GAST-SDC55"," 978-1-4748-1058-6","Seduci?n de Chocolate","Love Food","Parragon Inc.","New York","2015","1","0","0000-00-00");
INSERT INTO inventario VALUES("268","ISTVL-GAST-CCAPD56"," 0-939763-07-9","Culinary Carving Decorating ","Harvvey and Jonatahn Rosen","International Culinary Consultant","U.S.A","0","1","0","0000-00-00");
INSERT INTO inventario VALUES("269","ISTVL-GAST-CMF57"," 978-84-662-3069-8","Cocina Molecular y fusi?n","Carmen Fern?ndez","Editorial Libsa","Madrid","2015","1","0","0000-00-00");
INSERT INTO inventario VALUES("270","ISTVL-GAST-ETAMH58"," 978-9978-68-041-4","Ecuador tradiciones de ayer para la mesa de hoy.","Ana Teresa Perez U.,Mauricio Cepeda V., Homero Mi?o O.","Imprenta Mariscal","Ecuador","2012","1","0","0000-00-00");
INSERT INTO inventario VALUES("271","ISTVL-GAST-ACEI-59","SN","Alimentos Ciencia e Ingenier?a","Universidad T?cnica de Ambato","CIBIA","Ecuador","2007","6","0","0000-00-00");
INSERT INTO inventario VALUES("272","ISTVL-GAST-TSCA63"," 978-84-16433-84-1","Calidad Alimentaria","Eugenia Rueda","iC Editorial","Spain","2005","1","0","0000-00-00");
INSERT INTO inventario VALUES("273","ISTVL-GAST-RTAAF62"," 978-84-283-3383-2","Recolecci?n, transporte,almacenamiento y acondicionmientode la fruta","Frenando Gil-Albert Velarde","Paraninfo","Spain","2012","1","0","0000-00-00");
INSERT INTO inventario VALUES("274","ISTVL-GAST-EGLCE64"," 958-602-295-1","El gran libro de la cocina ecuatoriana","Circulos de lectores","Lerner Ltda.","Ecuador","0","1","0","0000-00-00");
INSERT INTO inventario VALUES("275","ISTVL-GAST-EPMA67"," 950-573-959-2","El poder Medicinal de los Alimentos","Dr. Jorge Pamlona Roger","Safeliz","Argentina","2008","1","0","0000-00-00");
INSERT INTO inventario VALUES("276","ISTVL-GAST-CC68"," 84-241-8812-8","Cocina Completa","S/N","Everest","","0","0","0","0000-00-00");
INSERT INTO inventario VALUES("277","ISTVL-GAST-FDH69"," 978-84-9077-394-9","Fundamentos de Direcci?n hotelera","Pilar Tal?n Ballesteros","Sintesis","Sapain","2016","1","0","0000-00-00");
INSERT INTO inventario VALUES("278","ISTVL-GAST-AD70"," 84-486-0238-2","Alimentaci?n y Dietoterapia","P. Cervera ","Mc GRAW HILL Education","MEXICO","2004","4","0","0000-00-00");
INSERT INTO inventario VALUES("279","ISTVL-GAST-LCE71"," 9972-62561-3","La cocina Ecuatoriana paso a paso","Marta Riofrio Cevallos","Lexus","Spain","2003","1","0","0000-00-00");
INSERT INTO inventario VALUES("280","ISTVL-GAST-MRC73"," 1-55185-570-4","Manual de Remedios Caseros","John H. Renner","Consumerguide","USA","1993","0","0","0000-00-00");
INSERT INTO inventario VALUES("281","ISTVL-GAST-LBC74","84-8275-018-6","La buena cocina (Carnes y Huevos)","In?s Abello de M.","Edi. Dosmil","Ecuador","1980","1","0","0000-00-00");
INSERT INTO inventario VALUES("282","ISTVL-GAST-CVPPFN76"," 958-04-2119-6","Comida Verde","Dr. Vernon Coleman","Norma","Colombia","1993","1","0","0000-00-00");
INSERT INTO inventario VALUES("283","ISTVL-GAST-TMZV78"," 9978-82-593-2","Terapia Moderna de los Zumos Vivos","Dr. Jhonny Lovewisdom","AAA","Ecuador","1962","1","0","0000-00-00");
INSERT INTO inventario VALUES("284","ISTVL-GAST-RD79"," 84-253-0727-9","La revoluci?n Dietetica ","Dr. Robert Atkins","Grijalbo S.A.","Spain","1975","17","0","0000-00-00");
INSERT INTO inventario VALUES("285","ISTVL-GAST-SDMRCC81","978-84-92736-73-7","SABORES DEL MUNDO RECETAS DE LOS CINCO CONTINENTES","PAOLO PACI Y ROBERTO MOTTADELLI","LIBRER?A UNIVERSITARIA BARCELONA","ESPA?A","2011","1","0","0000-00-00");
INSERT INTO inventario VALUES("286","ISTVL-SOFT-PROLE01"," 978-9972-2951-4-0","Programaci?n con Lenguaje","Rub?n luna villavicencio","Servilibros","Per?","2007","1","0","0000-00-00");
INSERT INTO inventario VALUES("287","ISTVL-SOFT-ENCIAUDED02"," 84-494-0341-5","Enciclopedia Audiovisual-Educativa 1","Grupo edutorial oceano uno","Oceano uno","Espa?a","2001","1","0","0000-00-00");
INSERT INTO inventario VALUES("288","ISTVL-SOFT-ENCIAUDED203"," 84-494-0342-1","Enciclopedia Audiovisual-Educativa 2","Grupo edutorial oceano uno","Oceano uno","Espa?a","2001","2","0","0000-00-00");
INSERT INTO inventario VALUES("289","ISTVL-SOFT-ENCINFO04"," 84-8055-198-4","Enciclopedia de Informatica y Computaci?n","Cettico","Cultural s.a.","Espa?a","1997","1","0","0000-00-00");
INSERT INTO inventario VALUES("290","ISTVL-SOFT-DESASUS05"," 978-607-15-05-56-9","Desarrollo Sustentable","Reynold d?az couti?o","Mc. Graw hill","Mexico","2011","2","0","0000-00-00");
INSERT INTO inventario VALUES("291","ISTVL-SOFT-MATBALD406"," 978-956-311-209-2","Matem?tica Facil con Baldor 4 Algebra","S/n","S/n","S/n","2012","4","0","0000-00-00");
INSERT INTO inventario VALUES("292","ISTVL-SOFT-MATFBALD508"," 978-956-311-210-8","Matem?tica Facil con Baldor 5 Algebra","S/n","S/n","S/n","2012","0","0","0000-00-00");
INSERT INTO inventario VALUES("293","ISTVL-SOFT-MATFBALD209"," 978-956-311-213-9","Matem?tica Facil con Baldor 2 Aritm?tica","S/n","S/n","S/n","2012","0","0","0000-00-00");
INSERT INTO inventario VALUES("294","ISTVL-SOFT-SMPRO10","9978-54-043-1","Seri Matem?tica Progresiva","Nelson londo?o. Hernando bedoya","Norma","Ecuador","1997","2","0","0000-00-00");
INSERT INTO inventario VALUES("295","ISTVL-SOFT-MATFBALD611"," 978-956-311-711-5","Matem?tica Facil con Baldor 6 Algebra","S/n","S/n","S/n","2012","0","0","0000-00-00");
INSERT INTO inventario VALUES("296","ISTVL-SOFT-MATFBALD312"," 978-956-311-208-5","Matem?tica Facil con Baldor 3 Algebra","S/n","S/n","S/n","2012","0","0","0000-00-00");
INSERT INTO inventario VALUES("297","ISTVL-SOFT-VISB13"," 978-612-304-098-7","Visual Basic 2012","Lic. Manuel a. Torres remon","Macro","Per?","2013","1","0","0000-00-00");
INSERT INTO inventario VALUES("298","ISTVL-SOFT-LENPRO14"," 978-612-4034-49-7","Lenguaje de Programaci?n Java","Eric gustavo coronel castillo","Macro","Per?","2010","1","0","0000-00-00");
INSERT INTO inventario VALUES("299","ISTVL-SOFT-PHP15"," 978-612-4034-96-1","PHP Profesional","Eric gustavo coronel castillo","Macro","Peru","2010","1","0","0000-00-00");
INSERT INTO inventario VALUES("300","ISTVL-SOFT-SQLS16"," 978-612-304-084-0","SQL Server 2012","Lic. Manuel a. Torres remon","Macro","Per?","2012","1","0","0000-00-00");
INSERT INTO inventario VALUES("301","ISTVL-SOFT-DESAAPLI17"," 978-612-304-101-4","Desarrollo de Aplicaci?n Java","Lic. Manuel a. Torres remon","Macro","Per?","2013","1","0","0000-00-00");
INSERT INTO inventario VALUES("302","ISTVL-SOFT-HACRA18"," 978-612-304-114-4","Hacking & Cracking","Hegel broy de la cruz paisig","Macro","Per?","2013","1","0","0000-00-00");
INSERT INTO inventario VALUES("303","ISTVL-SOFT-DESAAPLI19"," 978-612-304-106-9","Desarrollo de Aplicaciones M?viles Android","Jorge nolasco valenzuela","Macro","Per?","2013","1","0","0000-00-00");
INSERT INTO inventario VALUES("304","ISTVL-SOFT-AUCAD20"," 978-612-304-189-2","Auto Cad 2014","Oscar carranza zabala","Macro","Per?","2013","1","0","0000-00-00");
INSERT INTO inventario VALUES("305","ISTVL-SOFT-REIP21"," 978-612-304-105-2","Retoque y Edite Im?genes con Photoshop CS6","Empresa edit. Macro eirl","Macro","Peru","2013","1","0","0000-00-00");
INSERT INTO inventario VALUES("306","ISTVL-SOFT-FUDIF22"," 978-612-304-086-4","Fundamentos de Dise?o Web Flash CS6","Empresa edit. Macro eirl","Macro","Per?","2012","1","0","0000-00-00");
INSERT INTO inventario VALUES("307","ISTVL-SOFT-CTEX23"," 978-612-304-128-1","Reconoce y Trabaja con Excel 2013","Empresa edit. Macro eirl","Macro","Per?","2013","1","0","0000-00-00");
INSERT INTO inventario VALUES("308","ISTVL-SOFT-CCNA24"," 978-612-4034-36-7","CCNA Exploration","Empresa edit. Macro eirl","Macro","Per?","2009","1","0","0000-00-00");
INSERT INTO inventario VALUES("309","ISTVL-SOFT-DISEAP25"," 978-612-304-124-3","Los Dispositivos Electr?nicos y sus Aplicaciones","Ing. Juan f. Tisza c.","Macro","Per?","2013","1","0","0000-00-00");
INSERT INTO inventario VALUES("310","ISTVL-SOFT-WINDU26"," 978-84-329-0077-8","Windows para Dummies 8","Andy rathbone","Planeta colombiana s.a.","Colombia","2013","1","0","0000-00-00");
INSERT INTO inventario VALUES("311","ISTVL-SOFT-ALEM27"," 9978-80-134-0","Algebra Elemental Moderna Vol.1","M.o. gonzalez /j.d. mancill","Libresa","Ecuador","2002","1","0","0000-00-00");
INSERT INTO inventario VALUES("312","ISTVL-SOFT-ALEM28"," 9978-80-136-7","Algebra Elemental Moderna Vol.2","M.o. gonzalez /j.d. mancill","Libresa","Ecuador","2001","2","0","0000-00-00");
INSERT INTO inventario VALUES("313","ISTVL-SOFT-COMPWI29"," 978-84-9899-452-0","Computer & Web Internet","Dizain, maria soler sola","Sol90","Espa?a","2010","1","0","0000-00-00");
INSERT INTO inventario VALUES("314","ISTVL-SOFT-COMPWW30"," 978-84-9899-444-5","Computer & Web Word","Dizain, maria soler sola","Sol90","Espa?a","2010","1","0","0000-00-00");
INSERT INTO inventario VALUES("315","ISTVL-SOFT-COMPW7APP31"," 978-84-9899-442-1","Computer & Web Windows 7 Aplicaciones para todos.","Dizain, maria soler sola","Sol90","Espa?a","2010","1","0","0000-00-00");
INSERT INTO inventario VALUES("316","ISTVL-SOFT-COMPW7OPB32"," 978-84-9899-451-3","Computer & Web Windows 7 Operaciones Basicas","Dizain, maria soler sola","Sol90","Espa?a","2010","1","0","0000-00-00");
INSERT INTO inventario VALUES("317","ISTVL-SOFT- EED33"," 978-84-7112-684-9","Educarse en la era digital","?ngel P?rez G?mez","Morata","Espa?a","2012","1","0","0000-00-00");
INSERT INTO inventario VALUES("318","ISTVL-SOFT- IITC34"," 9978-44-474-2","Infopodagog?a Integraci?n de las Tics al curriculo con sentido humano, soial y pedag?gico","Fabian Jaramillo Campa?a ","Colgio T?cnico Salesiano Don Bosco","Ecuador","2005","1","0","0000-00-00");
INSERT INTO inventario VALUES("319","ISTVL-SOFT- ACOEI40"," 84-86732-52-2","Aula Curso de Orientaci?n Escolar","S/N","Inmagrag","Espa?a","1996","1","0","0000-00-00");
INSERT INTO inventario VALUES("320","ISTVL-SOFT- EED-41"," 978-84-7112-683-2","Educarse en la Era Digital","?ngel I. P?rez G?mez","Morata","Espa?a","2012","1","0","0000-00-00");
INSERT INTO inventario VALUES("321","ISTVL-SOFT-GPC-42","968-880-482-7","Gr?ficas por Computadora","Donal Hearn / M. Pauline Baker","McGraw-Hill","M?xico","1994","2","0","0000-00-00");
INSERT INTO inventario VALUES("322","ISTVL-SOFT-GDA-43","0-07-882025-1","Gu?a de Autoense?anza","Herbert Schildt","McGraw-Hill","Espa?a","1995","1","0","0000-00-00");
INSERT INTO inventario VALUES("323","ISTVL-SOFT-IDS-44","84-481-1186-9","Ingenier?a del Software","Roger s. Pressman","McGraw-Hill","Espa?a","1998","4","0","0000-00-00");
INSERT INTO inventario VALUES("324","ISTVL-SOFT-DCDTI-45","84-283-2060-8","Diccionario Comentado de Terminolog?a Inform?tica","Guadalupe Aguado de Cea","Paraninfo","Espa?a","1993","1","0","0000-00-00");
INSERT INTO inventario VALUES("325","ISTVL-SOFT-EDCYC-46","0-13-036997-7","Estructura de datos con CYX++","Yedidyah Langsam, Moshe J. Augenstein, Aaron M. Tenenbaum","Prentice Hall","M?xico","1997","2","0","0000-00-00");
INSERT INTO inventario VALUES("326","ISTVL-SOFT-IA-47","84-481-1858-8","Inteligencia Artificial","Elaine Rich, Kevin Knight","McGraw-Hill","Espa?a","1994","2","0","0000-00-00");
INSERT INTO inventario VALUES("327","ISTVL-SOFT-RPT-48","0-672-3524-0","Redes para todos","Mark Gibbs","Prentice Hall","M?xico","1995","2","0","0000-00-00");
INSERT INTO inventario VALUES("328","ISTVL-SOFT-DBD-49","968-451-651","Dise?o de Bases de Datos","Gio Weiderhold","McGraw-Hill","M?xico","1994","2","0","0000-00-00");
INSERT INTO inventario VALUES("329","ISTVL-SOFT- ATSI-50"," 978-958-682-812-3","Auditoria de Tecnolog?a y Sistemas de Informaci?n","Mario Piatini Velthuis","ALFAOMEGA","M?xico","2008","1","0","0000-00-00");
INSERT INTO inventario VALUES("330","ISTVL-SOFT-MMAIS-51","978-1-119-00327-4","Matering Microsoft Azure Infrastructure Services","John Savill","SYBEX","Can?da","2015","1","0","0000-00-00");
INSERT INTO inventario VALUES("331","ISTVL-SOFT-ELEC-52","978-84-267-2349-9","Electr?nica","Jos? Dur?n","Marcombo","Espa?a","2017","1","0","0000-00-00");
INSERT INTO inventario VALUES("332","ISTVL-SOFT-AD253"," 0-672-30863-0","Aprendiendo Delphi 2","Dan Osier, Steve Grobman y Steve Batson","Prentice-Hall Hispanoamericana","Espa?a","1996","1","0","0000-00-00");
INSERT INTO inventario VALUES("333","ISTVL-SOFT-NBECE54","987-20416-5-2","NOCIONES B?SICAS ESTAD?STICAS CON EXCEL","MAR?A ELIZABETH CRIST?FOLI Y MAT?AS BELLIARD","EDICIONES MAURIMA","ARGENTINA","2003","1","0","0000-00-00");
INSERT INTO inventario VALUES("334","ISTVL-MARK-ITGA 01"," 978-607-15-0980-2","Introducci?n a la Teor?a General de la Administraci?n","Idalberto Chiavento","Mc Graw Hill","M?xico","2014","8","0","0000-00-00");
INSERT INTO inventario VALUES("335","ISTVL-MARK-NM 02"," 978-958-42-9171-9  958-42-4171-0","Neuro Marketing","Nestor Braidot","Gesti?n 2000","Colombia","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("336","ISTVL-MARK-IMP 03"," 9972-32-108-8","Imagen y Marketing Personal","Ra?l Carrizales N.","Palomino","Per?","2005","1","0","0000-00-00");
INSERT INTO inventario VALUES("337","ISTVL-MARK-GTH 04"," 978-970-10-7340-7","Gesti?n de Talento Humano","Idalberto Chiavento","Mc Graw Hill","M?xico","2009","3","0","0000-00-00");
INSERT INTO inventario VALUES("338","ISTVL-MARK-NRMV 05"," 978-958-45-4084-3","Las Nuevas Reglas del Marketing Verde","Jacquelyn Ottman","Norma","Colombia","2013","1","0","0000-00-00");
INSERT INTO inventario VALUES("339","ISTVL-MARK-AA 06"," 978-607-32-1833-7","Auditoria Administrativa","Enrique Benjam?n Franklin","Pearson","M?xico","2013","1","0","0000-00-00");
INSERT INTO inventario VALUES("340","ISTVL-MARK-IENE 07"," 978-607-438-329-4","Ingenier?a Econ?mica Nuevo Enfoque","Victor Manuel Alvarado V.","Grupo Editorial Patria","M?xico","2011","1","0","0000-00-00");
INSERT INTO inventario VALUES("341","ISTVL-MARK-IMFO 08"," 84-205-3386-6","Introducci?n a los Mercados de Futuros y Opciones","Jhon C. Hull ","Prentice Hall","Espa?a","2002","1","0","0000-00-00");
INSERT INTO inventario VALUES("342","ISTVL-MARK-CEPM 09"," 978-612-304-118-8","Como Elaborar un Plan de Marketing","Richard D?az Chuquipiondo","Macro","Per?","2013","1","0","0000-00-00");
INSERT INTO inventario VALUES("343","ISTVL-MARK-GCC-2 11"," 84-8086-199-1","Gesti?n Calidad y Competividad","John M. Ivancevich, Peter Lorenzu y Steven J. Skinner","Irwin","Espa?a","0","2","0","0000-00-00");
INSERT INTO inventario VALUES("344","ISTVL-MARK-PN 12"," 978-607-438-315-7","Plan de Negocios","Oscar Hugo Pedraza Rend?n","Grupo Editorial Patria, S.A. DE C.V.","M?xico","2011","1","0","0000-00-00");
INSERT INTO inventario VALUES("345","ISTVL-MARK-SR 13"," 978-607-438-515-1","Sistema Rain","Mike Schultz y John E. Doerr","Grupo Editorial Patria, S.A. DE C.V.","M?xico","2012","1","0","0000-00-00");
INSERT INTO inventario VALUES("346","ISTVL-MARK-SM 14"," 978-607-438-332-4","Shopper Marketing","Markus Stahlberg y Ville Maila","Grupo Editorial Patria, S.A. DE C.V.","M?xico","2012","1","0","0000-00-00");
INSERT INTO inventario VALUES("347","ISTVL-MARK-MIC 15"," 978-950-641-617-1","El M?todo de Innovaci?n Creativa","Aaron Sabbagh y Mat?as Mackinlay","Granica","Argentina","2012","1","0","0000-00-00");
INSERT INTO inventario VALUES("348","ISTVL-MARK-PTE 16"," 978-1-60955-250-0","El Poder del Trabajo en Equipo","John C. Maxewell","Lidere","Estados Unidos","2013","1","0","0000-00-00");
INSERT INTO inventario VALUES("349","ISTVL-MARK-MMC 17"," 84-494-0905-5","Marketing, Mercado y Competividad","Jos? Mar?a Ferr? Trenzano","Oceano","Espa?a","2003","1","0","0000-00-00");
INSERT INTO inventario VALUES("350","ISTVL-MARK-MTI 18"," 9978-43-235-3","M?todos y T?cnica de Investigaci?n","Msc. Jorge Luzuriaga","Propad","Ecuador","0","1","0","0000-00-00");
INSERT INTO inventario VALUES("351","ISTVL-MARK-DME 19"," 9978-43-164-0","Desarrollo de la Mentalidad Empresarial","Ing. Roberto P?ez N.","Propad","Ecuador","2006","1","0","0000-00-00");
INSERT INTO inventario VALUES("352","ISTVL-MARK-GPET 20"," 9978-345-26-4","Guia Practica para la Elaboraci?n de Tesis","Msc. Campo El?as Aguilar P.","Propad","Ecuador","2008","1","0","0000-00-00");
INSERT INTO inventario VALUES("353","ISTVL-MARK-SPANM 21"," 978-9972-239-229","Su Primer a?o en el Network Marketing","Mark Yarnell y Rene Re?d Yarnell","Time & Money Network Editions","Argentina","2001","1","0","0000-00-00");
INSERT INTO inventario VALUES("354","ISYVL-MARK-DPGEEML 22"," 978-9942-01-935-6","Dise?o de Proyectos de Gesti?n Educativa con Enfoque Marco L?gico","Patricio Baquero y Freddy Rdr?guez","","Ecuador","2009","0","0","0000-00-00");
INSERT INTO inventario VALUES("355","ISYVL-MARK-NLV23"," 978-970-817-070-3","El Nuevo Lenguaje de las Ventas","Terri L. Sjodin","Grupo Editorial Patria, S.A. DE C.V.","M?xico","2012","1","0","0000-00-00");
INSERT INTO inventario VALUES("356","ISTVL-MARK-CDEP 24"," 950-802-095-4","Como Dise?ar y Elaborar Proyectos","Enrique Palladino","Espacio","Argentina","1999","1","0","0000-00-00");
INSERT INTO inventario VALUES("357","ISTVL-MARK-DPTM 25"," 978-84-17244-84-2","Descubre tu Prop?sito para Triunfar en el Mundo","Carlos Eduardo Sarmiento Ladino","Mestas Ediciones","Espa?a","2018","1","0","0000-00-00");
INSERT INTO inventario VALUES("358","ISTVL-MARK-MFDCM 26"," 978-9942-13-438-7","Fundamentos de Direcci?n Comercial y Marketing","Enrique P?rez del Campo","Editext","Ecuador","2013","1","0","0000-00-00");
INSERT INTO inventario VALUES("359","ISTVL-MARK-LDCIMP 27"," 84-344-1983-1","La decisi?n del Consumidor y sus Implicaciones en Marketing y Publicidad","H. Theil, J.C.G","Ariel","Espa?a","1974","1","0","0000-00-00");
INSERT INTO inventario VALUES("360","ISTVL-MARK-EI-28","970-10-0445-0","Evaluaci?n Integral","Jack Fleitman","McGraw-Hill","M?xico","1994","1","0","0000-00-00");
INSERT INTO inventario VALUES("361","ISTVL-MARK-LCGCCIE-29"," 84-86582-16-4","La Comunicaci?n Global","Christian Regouby","Gesti? 2.000 S.A.","Espa?a","2000","1","0","0000-00-00");
INSERT INTO inventario VALUES("362","ISTVL-MARK-DE-30","84-7615-906-4","Direcci?n Estrategica ","Jose Carlos Jaramillo","McGraw-Hill","Espa?a","1992","2","0","0000-00-00");
INSERT INTO inventario VALUES("363","ISTVL-MARK-QCTC-31","958-04-4172-3","Qu? es el Control total de Calidad ?","Kaoru Ishikawa","Norma","Colombia","1988","1","0","0000-00-00");
INSERT INTO inventario VALUES("364","ISTVL-MARK-DHM-32","968-24-3258-8","Desarrollo de la habilidad mental","Kenneth. Keyes, Jr","Trillas","M?xico","1990","1","0","0000-00-00");
INSERT INTO inventario VALUES("365","ISTVL-MARK-LR-33"," 978-84-155-44-49-4","La Radio","Xos? Ram?n Pousa","SALAMANCA  ","Espa?a","2013","1","0","0000-00-00");
INSERT INTO inventario VALUES("366","ISTVL-MARK-PT-34"," 968-24-5670-1","Producci?n Televisiva","Carl Hersh","TRILIAS","M?xico","2011","1","0","0000-00-00");
INSERT INTO inventario VALUES("367","ISTVL-MARK-RI-35"," 10:958-41-0074-2","Relaciones Internacionales ","Frederic S. Pearson, J. Martin Rochester ","Mc GRAW HILL Education","M?xico","2000","4","0","0000-00-00");
INSERT INTO inventario VALUES("368","ISTVL-MARK-MD-36","978-958-509-8","Marketing Digital","In?s Cibri?n Brredo","Alfaomega","Colombia","2018","1","0","0000-00-00");
INSERT INTO inventario VALUES("369","ISTVL-MARK-CDPDN-37","978-987-1456-25-3","C?mo Dise?ar un Plan de Negocios","Graham Friend y Syefan Zehle","El Comercio","Per?","2008","1","0","0000-00-00");
INSERT INTO inventario VALUES("370","ISTVL-MARK-EM-38","978-607-526-415-8","Estrategia de Marketing","Michael. D. Hartline","CENGAGE Learning","M?xico","2018","6","0","0000-00-00");
INSERT INTO inventario VALUES("371","ISTVL-MARK-TDO-39","0-538-87902-5","Teor?a y Dise?o Organizacional","Richard L. Daft","THOMSON ","M?xico","1998","6","0","0000-00-00");
INSERT INTO inventario VALUES("372","ISTVL-SHT-AHFHG 01 "," 40-279-9","Anatomia Humana Fisiologia  e Higiene Generalidades","Marco Chiriboga Villaquir?n","Editora Panorama","Quito","2008","4","0","0000-00-00");
INSERT INTO inventario VALUES("373","ISTVL-SHT-DDMI 02"," 84-8174-255-4","Diagnostico Diferencial en Medicina Interna","Francisco Javier Laso Guzm?n","Harcourt Brace","Espa?a","1997","9","0","0000-00-00");
INSERT INTO inventario VALUES("374","ISTVL-SHT-TPR 03"," 9978-40-440-6","Teor?a y Problemas Resueltos","Profesores del curso proped?utico de la Escuela Polit?cnica Nacional","PrepoFis","Ecuador","2002","3","0","0000-00-00");
INSERT INTO inventario VALUES("375","ISTVL-SHT-Q2 04"," 958-04-0156-1","Quimica 2","Severiano Herrera, Aura Barreto, Ignacio Torres, Esperanza de Clavijo","Norma","Colombia","1958","1","0","0000-00-00");
INSERT INTO inventario VALUES("376","ISTVL-SHT-SHIGR 05"," 978-958-682-836-9","Seguridad e Higiene Industrial Gestion de Riesgos","Mario Mancera, Mar?a Mancera, Mario Ram?n y Juan Mancera","Alfaomega","Colombia","2013","2","0","0000-00-00");
INSERT INTO inventario VALUES("377","ISTVL-SHT-TPRA 06"," 978-84-7360-978-9","T?cnicas de Prevenci?n de Riesgos Laborables","Jos? Mar?a Cort?z D?az","T?bar","Espa?a","2012","10","0","0000-00-00");
INSERT INTO inventario VALUES("378","ISTVL-SHT-SIAS 07"," 978-607-442-940-4","Seguridad Industrial y Administraci?n de la Salud","C. Ray Asfahl y David W. Rieske","Pearson","M?xico","2010","6","0","0000-00-00");
INSERT INTO inventario VALUES("379","ISTVL-SHT-FSD 08"," 978-607-707-317-8","Fundamentos Sustentabilidad Dise?o","James R.Mihelcic  Julie Beth Zimmerman","Alfaomega","M?xico","2012","1","0","0000-00-00");
INSERT INTO inventario VALUES("380","ISTVL-SHT-ACH 09"," 84-994-3196-8","Atlas del Cuerpo Humano","Grupo Oc?ano","Oc?ano","Espa?a","2012","1","0","0000-00-00");
INSERT INTO inventario VALUES("381","ISTVL-SHT-AHDTF 10"," 84-311-0403-1","Anatomia Humana Descriptiva Topografica y Funcional","H. Rouviere  A. Delmas","Masson","Espa?a","1987","9","0","0000-00-00");
INSERT INTO inventario VALUES("382","ISTVL-SHT-SO 11"," 978-988-762-001-6","Salud Ocupacional","Francisco ?lvarez  Enriqueta Faizal ","Ediciones de la U","Colombia","2012","1","0","0000-00-00");
INSERT INTO inventario VALUES("383","ISTVL-SHT-SST 12"," 978-958-648-866-2","Seguridad Salud en el Trabajo","Fernando Henao Robledo","Ecoe Ediciones","Colombia","2013","3","0","0000-00-00");
INSERT INTO inventario VALUES("384","ISTVL-SHT-RTBRSM 13"," 978-9942-02-725-2","Reciclaje y Tratamiento Biologico de los Residuos","Luis F. D?az  Carmen Elena de Janon","Earthgreen","Ecuador","2010","1","0","0000-00-00");
INSERT INTO inventario VALUES("385","ISTVL-SHT-CAA 14"," 978-89-7360-480-2","Cuestionario de Autoevaluaci?n y Aprendizaje","Jos? Mar?a Cort?s D?az","T?bar","Espa?a","2012","4","0","0000-00-00");
INSERT INTO inventario VALUES("386","ISTVL-SHT-SO 15"," 978-958-648-575-3","Seguridad Ocupacional","Ra?l Felipe Trujillo Mej?a","Ecoe Ediciones","Colombia","2009","5","0","0000-00-00");
INSERT INTO inventario VALUES("387","ISTVL-SHT-PD  16"," 978-9942-02-781-8","Pie Diab?tico","Juan Francisco Belanc?zar Freire","Artegr?fico","Ecuador","2010","1","0","0000-00-00");
INSERT INTO inventario VALUES("388","ISTVL-SHT-DM 17"," 978-84-7101-886-1","Diccionario Medico","Harper Collins","Marb?n","Espa?a","2013","1","0","0000-00-00");
INSERT INTO inventario VALUES("389","ISTVL-SHT-MLC 18"," 84-89969-01-9","Monta?ismo la Libertad de las Cimas","NN","Deivel","NN","2001","3","0","0000-00-00");
INSERT INTO inventario VALUES("390","ISTVL-SHT-MPIAIL 19"," 978-84-92735-17-4","Manual Practico para la Investigaci?n de Accidentes e Incidentes Laborables","Luis Mar?a Azcu?naga Lizana","Fundaci?n Confemetal","Espa?a","2009","3","0","0000-00-00");
INSERT INTO inventario VALUES("391","ISTVL-SHT-GPIDPRA 20"," 978-84-92735-59-4","Guia para la Implantaci?n de un Sistema de Prevenci?n de Riesgos Laborales","Luis Mar?a Azcu?naga Lizana","Fundaci?n Confemetal","Espa?a","2010","4","0","0000-00-00");
INSERT INTO inventario VALUES("392","ISTVL-SHT-DEG 21"," 978-9998-385-30-2","Diccionario de Especialidades Gastroenterol?gicas","PLM","La Uni?n","Ecuador","2012","1","0","0000-00-00");
INSERT INTO inventario VALUES("393","ISTVL-SHT-FA 22"," 978-84-7101-551-8","Fracturas en el Adulto","Robert W. Bucholz  James D. Heckman","Rockwood and Greens","Espa?a","2007","5","0","0000-00-00");
INSERT INTO inventario VALUES("394","ISTVL-SHT-LIVSMA 23"," 978-958-762-187-7","Logistica Inversa y Verde Sostenibilidad y Medio Ambiente","Miguel Rojas  Julie P?rez  Luis Jim?nez","Ediciones de la U","Colombia","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("395","ISTVL- SHT-EEPT24","978-84-283-3267-5","Evaluaci?n Ergon?mica de Puestos de Trabajo","Sabina AsensioCuesta , M. Jos? BastanteCesa, Jos? Antonio DiegoM?s","Ediciones Paraninfo","Espa?a","2012","1","0","0000-00-00");
INSERT INTO inventario VALUES("396","ISTVL- SHT-SI 25"," 968-13-0202-8","Sicologia Industrial","Joseph Tiffin  Ernest J.  Mc. Cormick","Diana, S.A","M?xico","1959","1","0","0000-00-00");
INSERT INTO inventario VALUES("397","ISTVL- SHT-MHI 26"," 84-7100-224-8","Manual de Higiene Industrial","D. Jose Angel Fernando Pablo","Mapfre S.A.","Espa?a","1991","1","0","0000-00-00");
INSERT INTO inventario VALUES("398","ISTVL- SHT-MST 27"," 84-7100-987-0","Manual de Seguridad en el Trabjajo","D. Jose Angel Fernando Pablo","Mapfre S.A.","Espa?a","1992","2","0","0000-00-00");
INSERT INTO inventario VALUES("399","ISTVL- SHT-QG 28"," 968-451-882-X","Quimica General","Guillermo Garz?n G.","Editolaser S. en C","M?xico","1986","2","0","0000-00-00");
INSERT INTO inventario VALUES("400","ISTVL- SHT-MELSST 29"," 978-612-46884-1-6","Manual del Entrenador L?dico en Seguridad y Salud en el Trabajo","Pablo Pinto Ariza  Iv?n Lopez Enriquez  Juan Jose Torres Bucio  Joaquin Ruiz Bosch","APDR","Per?","2017","1","0","0000-00-00");
INSERT INTO inventario VALUES("401","ISTVL- SHT-IAOE 30"," 0-07-037214-4","Introducci?n a la Administraci?n y Organizaci?n de Empresas","Joel J. Lerner","Editolaser S. en C","M?xico","1990","2","0","0000-00-00");
INSERT INTO inventario VALUES("402","ISTVL- SHT-GR 31"," 84-7100-115-2","Gerencia de Riesgos","Erick Kauf","Mapfre S.A.","Espa?a","1982","2","0","0000-00-00");
INSERT INTO inventario VALUES("403","ISTVL- SHT-PPRTE 32"," 978-9978-16-271-2","Prevenci?n y Presentaci?n de Riesgos del Trabajo en el Ecuador ","Dr. Miguel Land?var Lara","Eskeletra","Ecuador","2017","1","0","0000-00-00");
INSERT INTO inventario VALUES("404","ISTVL- SHT-ACPLTDD 33"," 84-8086-273-4","An?lisis Cuantitativo para la Toma de Desiciones","Richard D. Irwin ","Clamades S. L.","Espa?a","1996","8","0","0000-00-00");
INSERT INTO inventario VALUES("405","ISTVL- SHT- IS 34"," 970-10-0054-4","Ingenier?a de Servicios ","Luis R. Picazo Manr?quez  Fabi?n Mart?nez Villegas","McGraw- Hill/Interamericana de M?xico","M?xico","1991","1","0","0000-00-00");
INSERT INTO inventario VALUES("406","ISTVL- SHT- PC 35"," 84-7.100-037-7","Prevenci?n de la Contaminaci?n ","R. M. E Diamant","Mapfre S.A.","Madrid","1974","1","0","0000-00-00");
INSERT INTO inventario VALUES("407","ISTVL- SHT- EPE 36"," 968-880-322-7","El Proceso  Estrat?gico ","Henry Mintzberg  James Brian Quinn","Programas Educativos S.A.","M?xico","1993","2","0","0000-00-00");
INSERT INTO inventario VALUES("408","ISTVL- SHT- MPCI 37"," 970-10-1889-3","Manual de Prevenci?n de la Contaminaci?n Industrial","Harry M. Freeman","McGraw- Hill/Interamericana de M?xico","M?xico","1998","1","0","0000-00-00");
INSERT INTO inventario VALUES("409","ISTVL- SHT- DRH 38"," 0-02-902390-4","Direcci?n de los Recursos Humano ","M. Beer  B. Spector  P.R. Lawrece  D.Q. Mills  R.E. Walton","","M?xico","1990","2","0","0000-00-00");
INSERT INTO inventario VALUES("410","ISTVL- SHT- IO 39"," 968-451-385-2","Investigaci?n de Operaciones ","Richard Bronson, Ph.D.","Publi-Mex S.A.","M?xico","1985","1","0","0000-00-00");
INSERT INTO inventario VALUES("411","ISTVL- SHT-  CER 41"," 84-329-5350-4","PREVENCI?N DE RIESGOS LABORALES Cuestionario de Evaluaci?n de Riesgos  ","Alejandro Aisa Merino  Ricardo Jorge Ruggero  Ram?n Junc? Torres","Grupo CEAC S.A.","Espa?a","2000","4","0","0000-00-00");
INSERT INTO inventario VALUES("412","ISTVL- SHT-  GP 42"," 84-329-5350-5","PREVENCI?N DE RIESGOS LABORALES Gesti?n de la Prevenci?n  ","Alejandro Aisa Merino  Ricardo Jorge Ruggero  Ram?n Junc? Torres","Grupo CEAC S.A.","Espa?a","2000","2","0","0000-00-00");
INSERT INTO inventario VALUES("413","ISTVL-SHT-HI43","978-84-9898-109-4","Higuiene Industrial","Fausto Menendez D?ez","Lex Nova","Espa?a","2009","11","0","0000-00-00");
INSERT INTO inventario VALUES("414","ISTVL-SHT-IBPAEGS44","92-7-532546-4","Indicadores B?sicos para el An?lisis de la Equidad de G?nero en Salud","Organizaci?n Panamericana de Salud","PALTEX","Washington D.C","2004","4","0","0000-00-00");
INSERT INTO inventario VALUES("415","ISTVL-SHT-IAF45","958-9013-24-4","Introducci?n a la F?sica ","Alonso / Acosta","Publicaciones Culturales","Colombia","1992","4","0","0000-00-00");
INSERT INTO inventario VALUES("416","ISTVL-DG-CMRT-025","","CONOCIMIENTO DE MATERIALES PARA RADIO Y TELEVISI?N","A. ALASTRUE","BIBLIOTECA PROFESIONAL","ZARAGOZA","1962","1","0","0000-00-00");
INSERT INTO inventario VALUES("417","ISTVL-SHT-ML47","978-9978-86-739-6","Medicina Legal","Dr.Pedro M. Carrillo Olmedo","CEP","Ecuador","2007","1","0","0000-00-00");
INSERT INTO inventario VALUES("418","ISTVL-SHT-CDT48"," 9978-86-286-2","C?digo del Trabajo","Coorporaci?n de Estudios y Publicaciones","Coorporaci?n de Estudios y Publicaciones","Ecuador","2009","1","0","0000-00-00");
INSERT INTO inventario VALUES("419","ISTVL-SHT-FV49","9978-52-017-1","F?sica Vectorial","Vallejo Zambrano","GraffitiOfssett","Ecuador","1993","1","0","0000-00-00");
INSERT INTO inventario VALUES("420","ISTVL-SHT-EFDP50"," 84-7087-157-9","El futuro del petr?leo","Domenico Tantillo","INDEX","Madrid","1984","1","0","0000-00-00");
INSERT INTO inventario VALUES("421","ISTVL-SHT-MABTF51","RA: 010774","Medio Ambiente Bosques y T?cnicas Forestales","Dr. Angel R?os Est?vez","CCE","Ecuador","0","2","0","0000-00-00");
INSERT INTO inventario VALUES("422","ISTVL-SHT-DPETFE52","958-682-447-0","Dise?o de puestos y espacios de trabajo  fundamentos de la ergonom?a ","Pedro R Mondelo, Enrique Gregori Torada","Alfaomega","M?xico","1994","1","0","0000-00-00");
INSERT INTO inventario VALUES("423","ISTVL-SHT-DPETCET53"," 970-15-0296-5","Dise?o de puestos y espacios de trabajo  Confort y estr?s t?rmico ","Pedro R Mondelo, Enrique Gregori Torada","Alfaomega","M?xico","1994","2","0","0000-00-00");
INSERT INTO inventario VALUES("424","ISTVL-SHT-DPETDPT54"," 958-682-634-1","Dise?o de puestos y espacios de trabajo  Dise?po de puestos de trabajo  ","Pedro R Mondelo, Enrique Gregori Torada","Alfaomega","M?xico","1994","3","0","0000-00-00");
INSERT INTO inventario VALUES("425","ISTVL-SHT-DPETTEO55","ISBN : 970-15-0782-7","Dise?o de puestos y espacios de trabajo  El trabajo en oficinas ","Pedro R Mondelo, Enrique Gregori Torada","Alfaomega","M?xico","1994","4","0","0000-00-00");
INSERT INTO inventario VALUES("426","ISTVL-SHT-FDEI56","N: 78-137983","Fundamentos de Dibujo en Ingenieria","Warren J. Luzadder","PRENTICE-HALL,INC","M?xico","1980","1","0","0000-00-00");
INSERT INTO inventario VALUES("427","ISTVL-DG-CMRT-025","","CONOCIMIENTO DE MATERIALES PARA RADIO Y TELEVISI?N","A. ALASTRUE","BIBLIOTECA PROFESIONAL","ZARAGOZA","1962","1","0","0000-00-00");
INSERT INTO inventario VALUES("428","ISTVL-DG-CMRT-025","","CONOCIMIENTO DE MATERIALES PARA RADIO Y TELEVISI?N","A. ALASTRUE","BIBLIOTECA PROFESIONAL","ZARAGOZA","1962","1","0","0000-00-00");
INSERT INTO inventario VALUES("429","ISTVL-DG-CMRT-025","","CONOCIMIENTO DE MATERIALES PARA RADIO Y TELEVISI?N","A. ALASTRUE","BIBLIOTECA PROFESIONAL","ZARAGOZA","1962","1","0","0000-00-00");
INSERT INTO inventario VALUES("430","ISTVL-SHT-FS60"," 958-24-0901-0","F?sica Santillana I","Bautista Ball?n, Mauricio","Santillana","Bogot?","2005","1","0","0000-00-00");
INSERT INTO inventario VALUES("431","ISTVL-SHT-ME1-61"," 9978-40-184-9","Matem?tica Estructurada N?1","Ing. Alfredo Mauricio Almeida Navarro","Edicumbre Editorial Corporativa","Ecuador","1997","1","0","0000-00-00");
INSERT INTO inventario VALUES("432","ISTVL-SHT-FV2-62"," 978-99421118-7","F?sica Vectorial 2","Vallejo Patricio, Jorge Zambrano","Ediciones RODIN","Ecuador","2015","2","0","0000-00-00");
INSERT INTO inventario VALUES("433","ISTVL-DG-CMRT-025","","CONOCIMIENTO DE MATERIALES PARA RADIO Y TELEVISI?N","A. ALASTRUE","BIBLIOTECA PROFESIONAL","ZARAGOZA","1962","1","0","0000-00-00");
INSERT INTO inventario VALUES("434","ISTVL-SHT-AA-64","IB: 958-9261-10-8","Atlas de Anatom?a","Xavier Crespo, Nuria Curell, Jordi Curell","Panamericana Formas e Impresos S.A","Colombia","1993","1","0","0000-00-00");
INSERT INTO inventario VALUES("435","ISTVL-DG-CMRT-025","","CONOCIMIENTO DE MATERIALES PARA RADIO Y TELEVISI?N","A. ALASTRUE","BIBLIOTECA PROFESIONAL","ZARAGOZA","1962","1","0","0000-00-00");
INSERT INTO inventario VALUES("436","ISTVL-DG-CMRT-025","","CONOCIMIENTO DE MATERIALES PARA RADIO Y TELEVISI?N","A. ALASTRUE","BIBLIOTECA PROFESIONAL","ZARAGOZA","1962","1","0","0000-00-00");
INSERT INTO inventario VALUES("437","ISTVL-DG-CMRT-025","","CONOCIMIENTO DE MATERIALES PARA RADIO Y TELEVISI?N","A. ALASTRUE","BIBLIOTECA PROFESIONAL","ZARAGOZA","1962","1","0","0000-00-00");
INSERT INTO inventario VALUES("438","ISTVL-DG-CMRT-025","","CONOCIMIENTO DE MATERIALES PARA RADIO Y TELEVISI?N","A. ALASTRUE","BIBLIOTECA PROFESIONAL","ZARAGOZA","1962","1","0","0000-00-00");
INSERT INTO inventario VALUES("439","ISTVL-SHT-IQ169"," 958-02-0175-7","Investiguemos Qu?mica 1","Miguel ?ngel G?mez, Consuelo Rodr?guez, Humberto Caicedo L?pez","Editorial Voluntad","Colombia","1991","1","0","0000-00-00");
INSERT INTO inventario VALUES("440","ISTVL-SHT-IQ270"," 958-02-0176-5","Investiguemos Qu?mica 2","Miguel ?ngel G?mez, Consuelo Rodr?guez, Humberto Caicedo L?pez","Editorial Voluntad","Colombia","1991","1","0","0000-00-00");
INSERT INTO inventario VALUES("441","ISTVL-SHT-SMPGAT71"," 958-04-0656-1","Serie Matem?tica Progresiva Geometr?a Anal?tica y Trigonometr?a","Nelson Londo?o, Hernando Bedoya","Grupo Editorial Norma","Colombia","1984","1","0","0000-00-00");
INSERT INTO inventario VALUES("442","ISTVL-DG-CMRT-025","","CONOCIMIENTO DE MATERIALES PARA RADIO Y TELEVISI?N","A. ALASTRUE","BIBLIOTECA PROFESIONAL","ZARAGOZA","1962","1","0","0000-00-00");
INSERT INTO inventario VALUES("443","ISTVL-SHT-OSGSST73"," 978-84-92735-72-3","Ohsas  Sistemas de Gesati?n de la Seguridad y Salud en el Trabajo","Antonio Enr?quez Palomino, Jos? Manuel S?nchez","Fundaci?n Confemetal  Editorial","Espa?a","2007","2","0","0000-00-00");
INSERT INTO inventario VALUES("444","ISTVL-SHT-MPAF74"," 978-958-709-954-6","Manual de Primeros Auxilios para la Familia","Carlos Florido Caicedo, Jaime Beltr?n G.","Intermedio","Colombia","2009","1","0","0000-00-00");
INSERT INTO inventario VALUES("445","ISTVL-SHT-FGES76"," 968-6034-35-8","F?sica General con Experimentos Sencillos","Beatriz Alvarencia, Antonio M?ximo","Harla","M?xico","1983","3","0","0000-00-00");
INSERT INTO inventario VALUES("446","ISTVL-SHT-EMMCTP177"," 84-7764-170-6","El Mundo de la Matem?tica Curso te?rico pr?ctico 1","Grupo Editorial Oc?ano","Editorial Clasa, S.A.","Espa?a","1988","1","0","0000-00-00");
INSERT INTO inventario VALUES("447","ISTVL-SHT-EMMCTP378"," 84-7764-172-2","El Mundo de la Matem?tica Curso te?rico pr?ctico 3","Grupo Editorial Oc?ano","Editorial Clasa, S.A.","Espa?a","1988","1","0","0000-00-00");
INSERT INTO inventario VALUES("448","ISTVL-SHT-EMMCTTP479"," 84-7764-173-0","El Mundo de la Matem?tica Curso te?rico pr?ctico 4","Grupo Editorial Oc?ano","Editorial Clasa, S.A.","Espa?a","1988","1","0","0000-00-00");
INSERT INTO inventario VALUES("449","ISTVL-SHT-CMA280"," 84-8055-134-8","Consultor Matem?tico ?lgebra 2","Lic. L. Gald?s","Cultural, S.A.","Espa?a","0","1","0","0000-00-00");
INSERT INTO inventario VALUES("450","ISTVL-SHT-CMGT381"," .84-8055-135-6","Consultor Matem?tico Geometr?a/Trigonometr?a 3","Lic. L. Gald?s","Cultural, S.A.","Espa?a","0","1","0","0000-00-00");
INSERT INTO inventario VALUES("451","ISTVL-SHT-CMIC482"," 84-8055-136-4","Consultor Matem?ticoIntroducci?n al C?lculo 4","Lic. L. Gald?s","Cultural, S.A.","Espa?a","0","1","0","0000-00-00");
INSERT INTO inventario VALUES("452","ISTVL-SHT-IMF83"," 978-84-283-3973-5","Introducci?n a la Mec?nica de Fluidos","Jos? Manuel Gordillo Arias, Guillaume Riboux, Juan Manuel Fern?ndez","Ediciones Parainfo, S.A.","Espa?a","2017","1","0","0000-00-00");
INSERT INTO inventario VALUES("453","ISTVL-SHT-UEEICE84"," 978-84-15994-29-9","Uf0566: Eficiencia Energ?tica en las Instalaciones de Climatizaci?n en los Edificios","Antonio Jes?s Mendoza Ram?rez","IC Editorial","Espa?a","2013","1","0","0000-00-00");
INSERT INTO inventario VALUES("454","ISTVL-SHT-UMPSAI85"," 978-84-16629-24-4","Uf2237: Mantenimiento Preventivo de Sistemas de Automatizaci?n Industrial","Fernando Jim?nez Raya","IC Editorial","Espa?a","2015","1","0","0000-00-00");
INSERT INTO inventario VALUES("455","ISTVL-SHT-DAE86"," 978-9978-81-101-6","Derecho Ambiental Ecuatoriano","Dr. Mario Larrea Andrade.","EDLE S.A.","ECUADOR","2008","1","0","0000-00-00");
INSERT INTO inventario VALUES("456","ISTVL-SHT-DI87"," 978-9978-86-757-0","Derecho de Integraci?n ","Maria Gioconda Saltos.","CEP","ECUADOR","2009","1","0","0000-00-00");
INSERT INTO inventario VALUES("457","ISTVL-SHT-TBC88"," 84-667-2614-4","Teoria Basica de Conjuntos","Victor Fern?ndez Laguna","GRUPO ANAYA","SPAIN","2003","1","0","0000-00-00");
INSERT INTO inventario VALUES("458","ISTVL-SHT-EJE89"," 978-9942-9980-3-3","Enciclopedia Juridica Ecuatoriana","Juan Larrea OlGuin","PPL Impresores","ECUADOR","2012","1","0","0000-00-00");
INSERT INTO inventario VALUES("459","ISTVL-SHT-IAL90"," 978-607-05-0290-3","Introducci?n Al Algebra Lineal","Howard Anton Chris Rorres ","LIMUSA WILEY","MEXICO","2013","1","0","0000-00-00");
INSERT INTO inventario VALUES("460","ISTVL-SHT-HSP91"," 970-17-0251-4","Historia Y Sistema de la Psicolog?a","James F. Brennan","PEARSON PRENTICE HALL","MEXICO","1999","5","0","0000-00-00");
INSERT INTO inventario VALUES("461","ISTVL-SHT-PAPE92"," 987-958-975-1","Pedagog?a Ambiental para el Planeta en Emergencia","Marcel Zimmermann","ECOE","COLOMBIA","2013","3","0","0000-00-00");
INSERT INTO inventario VALUES("462","ISTVL-SHT-DPEPM-65","9978-40-754-5","Diabetolog?a para el pr?ximo milenio","Clemente Orellana Saenz","Voluntad","Ecuador","1999","1","0","0000-00-00");
INSERT INTO inventario VALUES("463","ISTVL-DG-CMRT-025","","CONOCIMIENTO DE MATERIALES PARA RADIO Y TELEVISI?N","A. ALASTRUE","BIBLIOTECA PROFESIONAL","ZARAGOZA","1962","1","0","0000-00-00");
INSERT INTO inventario VALUES("464","ISTVL-DG-CMRT-025","","CONOCIMIENTO DE MATERIALES PARA RADIO Y TELEVISI?N","A. ALASTRUE","BIBLIOTECA PROFESIONAL","ZARAGOZA","1962","1","0","0000-00-00");
INSERT INTO inventario VALUES("465","ISTVL-SHT-GMDH1-68","5.747-67 I","Gu?a M?dica del Hogar","Dr. Adrian Vander","SINTES","Espa?a","1967","1","0","0000-00-00");
INSERT INTO inventario VALUES("466","ISTVL-SHT-GMDH2-69","5.747-67 II","Gu?a M?dica del Hogar","Dr. Adrian Vander","SINTES","Espa?a","1967","2","0","0000-00-00");
INSERT INTO inventario VALUES("467","ISTVL-SHT-GMDH3-70","5.747-67 III","Gu?a M?dica del Hogar","Dr. Adrian Vander","SINTES","Espa?a","1967","3","0","0000-00-00");
INSERT INTO inventario VALUES("468","ISTVL-SHT-SPT-71","11.723","Sanida para todos","H. Rodr?guez R.","La verdad presente ","Argentina","1702","3","0","0000-00-00");
INSERT INTO inventario VALUES("469","ISTVL-SHT-PEC-72","2.197-1972","Para evitar el c?ncer","Karl Heinrich Bauer","Mensajero","Espa?a","1972","1","0","0000-00-00");
INSERT INTO inventario VALUES("470","ISTVL-SHT-ABCDR-73","84-7166-647-2","ABC de la respiraci?n","Carola H. Speads","EMA","Espa?a","1980","1","0","0000-00-00");
INSERT INTO inventario VALUES("471","ISTVL-DG-CMRT-025","","CONOCIMIENTO DE MATERIALES PARA RADIO Y TELEVISI?N","A. ALASTRUE","BIBLIOTECA PROFESIONAL","ZARAGOZA","1962","1","0","0000-00-00");
INSERT INTO inventario VALUES("472","ISTVL-DG-CMRT-025","","CONOCIMIENTO DE MATERIALES PARA RADIO Y TELEVISI?N","A. ALASTRUE","BIBLIOTECA PROFESIONAL","ZARAGOZA","1962","1","0","0000-00-00");
INSERT INTO inventario VALUES("473","ISTVL-ENG-SHARC01"," 978-1-59966-165-0","Short articles for reading comprehesion","Ken methold","Compass publishing","Usa","2008","1","0","0000-00-00");
INSERT INTO inventario VALUES("474","ISTVL-ENG-NPFCTB02"," 978-960-443-736-8","New Plus","E. Moutssou s. Parker","Mmpublications","Usa","0","1","0","0000-00-00");
INSERT INTO inventario VALUES("475","ISTVL-ENG-ROSR03","978-89-5997-350-7","Readig Saurce 1","The core contents team","Build and grow","Korea","2009","1","0","0000-00-00");
INSERT INTO inventario VALUES("476","ISTVL-ENG-ROSR04","978-89-5997-351-4","Readig Saurce","The core contents team","Build and grow","Korea","2009","1","0","0000-00-00");
INSERT INTO inventario VALUES("477","ISTVL-ENG-ROSR05","978-89-5997-352-1","Readig Saurce","The core contents team","Build and grow","Korea","2009","1","0","0000-00-00");
INSERT INTO inventario VALUES("478","ISTVL-ENG-VGBS06"," 0-590-05502-7","Eating the Alphabet","Lois ehlert","Scholastic","Usa","1989","1","0","0000-00-00");
INSERT INTO inventario VALUES("479","ISTVL-ENG-SSDLPS07"," 978-0-545-04180-5","Don?t Let the Pigeon Stay un Late","Mo willems","Scholastic","Usa","2007","1","0","0000-00-00");
INSERT INTO inventario VALUES("480","ISTVL.ENG-SSGDI08"," 978-0-454-01977-4","Grumpy Bird","Jeremy tankard","Scholastic","Usa","2007","1","0","0000-00-00");
INSERT INTO inventario VALUES("481","ISTVL-ENG-SSMBAI09"," 978-0-545-05597-0","Maybe A bear ate it!","Robie h. Harris ","Orchard books","Usa","2008","1","0","0000-00-00");
INSERT INTO inventario VALUES("482","ISTVL-ENG-SSCHLL10"," O- 439-42644-8","Chiken Little","Laura rader","Scholastic","Usa","1998","1","0","0000-00-00");
INSERT INTO inventario VALUES("483","ISTVL-ENG-SSGCD11"," 0-439-53947-1","Giarafes Cant Dance","Purple enterprises","Scholastic","Usa","1999","1","0","0000-00-00");
INSERT INTO inventario VALUES("484","ISTVL-ENG-VGBS12"," 0-590-4530-1","Growing Vegetables Soup","Lois ehlert","Scholastic","Usa","1987","1","0","0000-00-00");
INSERT INTO inventario VALUES("485","ISTVL-ENG-FMAFRTRP13"," 078-0-19-481358-7","Family and Friends ","Oxford","American english","England","0","1","0","0000-00-00");
INSERT INTO inventario VALUES("486","ISTVL-ENG-FMAFRTRP14"," 978-0-19-481332-7","Family and Friends ","Oxford","American english","England","0","0","0","0000-00-00");
INSERT INTO inventario VALUES("487","ISTVL-ENG-LGR3X15"," 978-0-19-464220-0","Lets go 3","Oxford","Oxford","England","0","3","0","0000-00-00");
INSERT INTO inventario VALUES("488","ISTVL-ENG-LGR1X16"," 978-0-19-464200-2","Lets go 1","Oxford","Oxford","England","0","3","0","0000-00-00");
INSERT INTO inventario VALUES("489","ISTVL-ENG-LGR1X17"," 0978-019-464267-5","Lets go Begin","Oxford","Oxford","England","0","3","0","0000-00-00");
INSERT INTO inventario VALUES("490","ISTVL-ENG-HOWU18"," 13-978-0-739-949-8","History of our Word people, places, ","Hendry billings","Steck vaughn","Usa","2004","2","0","0000-00-00");
INSERT INTO inventario VALUES("491","ISTVL-ENG-FOCLB19"," 0-07398-9145-6","Focus on Science lebel B","Harcourt achieve","Harcourt achiave","Usa","2004","1","0","0000-00-00");
INSERT INTO inventario VALUES("492","ISTVL- ENG- SWL20","ISB: 0-590-4300-49-1","Swinmy Leo Lion","Leo lionni","Scholastic","Usa","1989","1","0","0000-00-00");
INSERT INTO inventario VALUES("493","ISTVL-ENG-BED21"," 978-1-4058-5259-3","Business English Dictionary","Longman","Oxford","England","2000","1","0","0000-00-00");
INSERT INTO inventario VALUES("494","ISTVL-ENG-FSF22"," 978-0-547-37260-0","Florida Science Fashion","Houghton mifflin","Harcourt achiave","Usa","2012","1","0","0000-00-00");
INSERT INTO inventario VALUES("495","ISTVL-ENG-VP23"," 13978-0-521-601-26-9","Vocabulary in Practice 6 ","Liz driscoll","Cambridge","England","2005","1","0","0000-00-00");
INSERT INTO inventario VALUES("496","ISTVL-ENG-VP24"," 13978-0-521-601-25-2","Vocabulary in Practice 5","Liz driscoll","Cambridge","England","2005","1","0","0000-00-00");
INSERT INTO inventario VALUES("497","ISTVL-ENG-VP25"," 0521-75375-9","Vocabulary in Practice 3","Glennis pye","Cambridge","England","2003","1","0","0000-00-00");
INSERT INTO inventario VALUES("498","ISTVL-ENG-TPOTO26"," 78-1-5-9066-325-8","The Plantom of the Opera","Gaston leroux","Compass publishing","Usa","2009","1","0","0000-00-00");
INSERT INTO inventario VALUES("499","ISTVL-ENG-NN27"," 978-59966--337-1","Nicholas Nickeby","Charles dickens","Compass publishing","Usa","2009","1","0","0000-00-00");
INSERT INTO inventario VALUES("500","ISTVL-ENG-TRCH28"," 978-1-59966-211-4","The Railway Children ","Edith nesbit","Compass publishing","Usa","2009","1","0","0000-00-00");
INSERT INTO inventario VALUES("501","ISTVL-ENG-GP29"," 978-0-521-66566-3","Grammar in Practice 2","Roger gower","Cambridge","England","2002","1","0","0000-00-00");
INSERT INTO inventario VALUES("502","ISTVL.ENG-E30"," 978-960-478-037-2","Excalibur ","H.q. mitchell","Mmpublications","Usa","2006","1","0","0000-00-00");
INSERT INTO inventario VALUES("503","ISTVL-ENG-E31"," 978-960-443-038-3","Excalibur ","H.q. mitchell","Mmpublications","Usa","2006","1","0","0000-00-00");
INSERT INTO inventario VALUES("504","ISTVL-ENG-E32"," 960-443-038-6","Excalibur ","H.q. mitchell","Mmpublications","Usa","2006","1","0","0000-00-00");
INSERT INTO inventario VALUES("505","ISTVL-ENG-TMR33"," 978-960-379-717-3","The Magic Ring","Moustsou and s. Parker","Mmpublications","Usa","2004","1","0","0000-00-00");
INSERT INTO inventario VALUES("506","ISTVL-ENG-TWOO34"," 978-960-478-163-8","The Wizard of Oz","L. Frank baum","Mmpublications","Usa","2004","1","0","0000-00-00");
INSERT INTO inventario VALUES("507","ISTVL-ENG-TLOTM35"," 978-960-379-735-7","The Last of the monicans ","J.f. cooper","Mmpublications","","2002","1","0","0000-00-00");
INSERT INTO inventario VALUES("508","ISTVL-ENG-AOGG36"," 978-1-59-66-220-6","Anne of green Gables","Lucy maud","Compass publishing","Usa","2009","1","0","0000-00-00");
INSERT INTO inventario VALUES("509","ISTVL-ENG-GIP37"," 978-0--52154042-1","Grammar in Practice 4","Roger gower","Cambridge","England","2005","1","0","0000-00-00");
INSERT INTO inventario VALUES("510","ISTVL-ENG-CGCH38"," 960-379-732-4","Capitan Grants Children ","Jules verne","Mmpublications","Usa","2004","1","0","0000-00-00");
INSERT INTO inventario VALUES("511","ISTVL-ENG-TMU39"," 960-7955-59-5","The mix UP ","H.q. mitchell","Mmpublications","Usa","1998","1","0","0000-00-00");
INSERT INTO inventario VALUES("512","ISTVL-ENG-DC40"," 078-960-573-140-3","David Copperfield","H.q. mitchell","Mmpublications","Usa","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("513","ISTVL-ENG-TCI41"," 978-960-509-096-8","The Coral Island","H.q. mitchell","Mmpublications","Usa","2012","1","0","0000-00-00");
INSERT INTO inventario VALUES("514","ISTVL-ENG-TCI42"," 978-960-509-097-5","The Coral Island","H.q. mitchell","Mmpublications","Usa","2012","1","0","0000-00-00");
INSERT INTO inventario VALUES("515","ISTVL-ENG-LINY43"," 978-960-443-658-3","Lisa in new York ","H.q. mitchell","Mmpublications","Usa","2009","1","0","0000-00-00");
INSERT INTO inventario VALUES("516","ISTVL-ENG-TT-44"," 978-960-443-482-4","The Tempest ","H.q. mitchell","Mmpublications","Usa","2008","1","0","0000-00-00");
INSERT INTO inventario VALUES("517","ISTVL-ENG-TT-45"," 978-960-443-483-1","The Tempest ","H.q. mitchell","Mmpublications","Usa","2008","1","0","0000-00-00");
INSERT INTO inventario VALUES("518","ISTVL-ENG TPOTO46"," 978-960-478-021-1","The Plantom of the Opera","Gaston leroux","Mmpublications","Usa","2005","1","0","0000-00-00");
INSERT INTO inventario VALUES("519","ISTVL-ENG-TMITIM47"," 978-960-478-041-9","The Man in the Iron Mask","Alexandre dumas","Mmpublications","Usa","2005","1","0","0000-00-00");
INSERT INTO inventario VALUES("520","ISTVL-ENG-OPRCTHS48","978-1-61352-736-8","On Point","Peggy anderson","Compass publishing","Usa","2015","1","0","0000-00-00");
INSERT INTO inventario VALUES("521","ISTVL-ENG-OPRCTHS49","978-1-61352-737-5","On Point","Peggy anderson","Compass publishing","Usa","2015","1","0","0000-00-00");
INSERT INTO inventario VALUES("522","ISTVL-ENG-OPRCTHS50","978-1-61352-738-2","On Point","Peggy anderson","Compass publishing","Usa","2015","1","0","0000-00-00");
INSERT INTO inventario VALUES("523","ISTVL-ENG-SSTATE51","0-03-043609-5","The Americas","Christoper l. Salter","Holt social studies","Usa","2007","1","0","0000-00-00");
INSERT INTO inventario VALUES("524","ISTVL-ENG-HTA52","978-0-547-48482-2","The Americas","Christoper l. Salter","Holt social studies","Usa","2012","2","0","0000-00-00");
INSERT INTO inventario VALUES("525","ISTVL-ENG-GRS53","978-0-19-436565-9","Grammar Sense","Susan keer bland","Oxford","England","2004","1","0","0000-00-00");
INSERT INTO inventario VALUES("526","ISTVL-ENG-GRSW54","978-0-19-436618-2","Grammar Sense","Tay lesley","Oxford","England","2004","1","0","0000-00-00");
INSERT INTO inventario VALUES("527","ISTVL-ENG-HAFLA55","0-7398-9218-5","Homes and families","Harcourt achieve","Ateck vaughn","Usa","2005","1","0","0000-00-00");
INSERT INTO inventario VALUES("528","ISTVL-ENG-SSIYMALL56","0-590-44725-4","Is you mama a llama ","Deborah guarina","Scholastic","Usa","1989","1","0","0000-00-00");
INSERT INTO inventario VALUES("529","ISTVL-ENG-RDPK57","978-89-5997-630-0","Reading Reak 1","Ruben mitchell","Build and grow","Usa","2011","1","0","0000-00-00");
INSERT INTO inventario VALUES("530","ISTVL-ENG-RDPK58","978-89-5997-631-7","Reading Reak 2","Angela lee","Build and grow","Usa","2011","1","0","0000-00-00");
INSERT INTO inventario VALUES("531","ISTVL-ENG-RDPK59","978-89-5997-630-4","Reading Reak 3","Hallie wells","Build and grow","Usas","2011","1","0","0000-00-00");
INSERT INTO inventario VALUES("532","ISTVL-ENG-TRTTHOS60"," 978-84-668-1593-2","The road through the hills and other stories","Rod smith","Richmond","Spain","2012","1","0","0000-00-00");
INSERT INTO inventario VALUES("533","ISTVL-ENG-TAOTS61","978-84-668-1603-8","The adventures of tom sawyer","Mark twain","Richmond","Spain","2012","1","0","0000-00-00");
INSERT INTO inventario VALUES("534","ISTVL-ENG-TBFY62"," 978-668-1589-5","The boy from yesterday","John davage","Richmond","Sapin","2012","1","0","0000-00-00");
INSERT INTO inventario VALUES("535","ISTVL-ENG-CGCH63","960-379-732-4","Captain Grant?s Children","Jules Verne","Mmpublications","","2004","1","0","0000-00-00");
INSERT INTO inventario VALUES("536","ISTVL-ENG- BB64"," 978-960-443-081-9","Beauty and the Beast","Charles Perrault","Mmpublications","Usa","2005","1","0","0000-00-00");
INSERT INTO inventario VALUES("537","ISTVL-ENG-LGL65"," 960-7955-58-7","Lisa Goes to London","H.Q. Mitchell","Mmpublications","Usa","1998","1","0","0000-00-00");
INSERT INTO inventario VALUES("538","ISTVL-ENG-THP66","ISBN-10: 960-379-723-5","The Happy Price","Oscar Wilde","Mmpublications","Usa","2001","1","0","0000-00-00");
INSERT INTO inventario VALUES("539","ISTVL-ENG-AZC67"," 209-033932-2","Alex et Zoe t Compagnie","Colette Samson","Cle International","France","2003","1","0","0000-00-00");
INSERT INTO inventario VALUES("540","ISTVL-DG-CMRT-025","","CONOCIMIENTO DE MATERIALES PARA RADIO Y TELEVISI?N","A. ALASTRUE","BIBLIOTECA PROFESIONAL","ZARAGOZA","1962","1","0","0000-00-00");
INSERT INTO inventario VALUES("541","ISTV-CG-DCSAOZ1"," 978-9978-29-491-8","DICCIONARIO DE CONSULTA- SIN?NIMOS Y ANT?NIMOSOASIS A ZURR?N","SERGIO SANCH?Z CEREZO, MERCEDES RUBIO CORDOV?S, ALBERTO MART?N BAR?","GRUPO SANTILLANA","ECUADOR","2009","1","0","0000-00-00");
INSERT INTO inventario VALUES("542","ISTVL-CG-DCSAPE 2"," 978-9978-29-489-5","DICCIONARIO DE CONSULTA- SIN?NIMOS Y ANT?NIMOSDE A PORTERIORI A EDUCAR","SERGIO SANCH?Z CEREZO, MERCEDES RUBIO CORDOV?S, ALBERTO MART?N BAR?","GRUPO SANTILLANA","ECUADOR","2009","1","0","0000-00-00");
INSERT INTO inventario VALUES("543","ISTVL-CG-DCSAE? 3"," 978-9978-29-490-1","DICCIONARIO DE CONSULTA- SIN?NIMOS Y ANT?NIMOSDE EDUCATIVO A ?O?O","SERGIO SANCH?Z CEREZO, MERCEDES RUBIO CORDOV?S, ALBERTO MART?N BAR?","GRUPO SANTILLANA","ECUADOR","2009","1","0","0000-00-00");
INSERT INTO inventario VALUES("544","ISTVL-CG-EPBP 4","978-9978-29-320-1","ESTRATEGIAS DE PUBLICIDAD PARA BAJOS PRESUPUESTOS","WILSON MARI?O","AGUILAR","ECUADOR","2010","1","0","0000-00-00");
INSERT INTO inventario VALUES("545","ISTVL-CG-NMIC 5"," 978-9978-44-868-7","NOCIONES DE METODOLOG?A DE INVESTIGACI?N CIENT?FICA","PROF. FRANCISCO LEIVA ZEA","EDICIONES MAYA","ECUADOR","2013","1","0","0000-00-00");
INSERT INTO inventario VALUES("546","ISTVL-CG-DV1-6"," 1390-826X","DEMOCRACIAS VOL.1","INSTITUTO DE LA DEMOCRACIA","EL TELEGR?FO","ECUADOR","2013","1","0","0000-00-00");
INSERT INTO inventario VALUES("547","ISTVL-CG-ISED-7"," 9978-345-34-5","INVESTIGACI?N SOCIAL EN EDUCACI?N Y DESARROLLO","MGSTR. ANDR?S ORTIZ LEMOS","ATOPOS","ECUADOR","2006","1","0","0000-00-00");
INSERT INTO inventario VALUES("548","ISTVL-DG-CMRT-025","","CONOCIMIENTO DE MATERIALES PARA RADIO Y TELEVISI?N","A. ALASTRUE","BIBLIOTECA PROFESIONAL","ZARAGOZA","1962","1","0","0000-00-00");
INSERT INTO inventario VALUES("549","ISTVL-CG-SP1MET-9"," 9978-40-975-0","SOLUCIONES PR?CTICAS 1 EL MISTERIO DEL ?XITO TOTAL","JUAN VILLAC?S VILLAC?S","GRAFICARE","ECUADOR","1999","1","0","0000-00-00");
INSERT INTO inventario VALUES("550","ISTVL-CG-SP2CTEN-10","9978-40-976-9","SOLUCIONES PR?CTICAS 2 EL CAMBIO TENAZ PARA EL ?XITO EN LOS NEGOCIOS","JUAN VILLAC?S VILLAC?S","GRAFICARE","ECUADOR","1999","2","0","0000-00-00");
INSERT INTO inventario VALUES("551","ISTVL-CG-SP3CS-11"," 9978-40-977-7","SOLUCIONES PR?CTICAS 3 LA CULTURA DEL SERVICIO","JUAN VILLAC?S VILLAC?S","GRAFICARE","ECUADOR","1999","3","0","0000-00-00");
INSERT INTO inventario VALUES("552","ISTVL-CG-SPALGRH-12"," 997840-978-5","SOLUCIONES PR?CTICAS 4  EL ABC DE LIDERAZGO, GERENCIA Y RECURSOS HUMANOS","JUAN VILLAC?S VILLAC?S","GRAFICARE","ECUADOR","1999","4","0","0000-00-00");
INSERT INTO inventario VALUES("553","ISTVL- CG-DES 26-38"," 84-345-4382-6","DICCIONARIO ENCICLOP?DICO SALVAT 26","SALVAT, S.A.","SALVAT EDITORES","ESPA?A","1983","1","0","0000-00-00");
INSERT INTO inventario VALUES("554","ISTVL- CG-DST-43"," 978-9978-09-011-4","DOCUMENTOS SELECCI?N DE TEXTOS","MAR?A JOS? RUBIO G?MEZ","EDILOJA C?A LTDA.","ECUADOR","2013","1","0","0000-00-00");
INSERT INTO inventario VALUES("555","ISTVL- CG-ELD-44"," 978-958-35-0843-1","ELEMENTOS DE L?GICA PARA EL DERECHO","LUIS E. GARC?A RESTREPO","TEMIS","BOGOT?","2013","3","0","0000-00-00");
INSERT INTO inventario VALUES("556","ISTVL- CG-DIC-45"," 958-602-123-8","DICCIONARIO ILUSTRADO DE LA COMPUTACI?N","KONRAD ZUSE","PRINTER COLOMBIA","COLOMBIA","1984","1","0","0000-00-00");
INSERT INTO inventario VALUES("557","ISTVL- CG-EOE-46"," 978-9942-00-622-6","EXPRESI?N ORAL Y ESCRITA","GALO GUERRERO JIM?NEZ","EDILOJA C?A LTDA.","ECUADOR","2013","1","0","0000-00-00");
INSERT INTO inventario VALUES("558","ISTVL-CG-NOMED-47"," 978-9942-00-602-8","NUEVAS ORIENTACIONES Y METODOLOG?A PARA LA EDUCACI?N A DISTANCIA","PH.D. MAR?A JOS? RUBIO G?MEZ","EDILOJA C?A LTDA.","ECUADOR","2013","1","0","0000-00-00");
INSERT INTO inventario VALUES("559","ISTVL-CG-OMED-48"," 9978-09-014-2","ORIENTACI?N Y METODOLOG?A PARA LA EDUCACI?N A DISTANCIA","MAR?A JOS? RUBIO G?MEZ","EDITORIAL DE LA UNIVERSIDAD T?CNICA PARTICULAR DE LOJA","ECUADOR","2005","1","0","0000-00-00");
INSERT INTO inventario VALUES("560","ISTVL-CG-ACESDE-49"," 978-9942-8685-3-4","ASEGURAMIENTO DE LA CALIDAD DE LA EDUCACI?N SUPERIOR  DEBATES Y EXPERIENCIAS","CACES VARIOS AUTORES","TALLPA PUBLICIDAD IMPRESA","ECUADOR","2019","1","0","0000-00-00");
INSERT INTO inventario VALUES("561","ISTVL-CG-EIUEP-51"," 978-9942-8685-0-3","EVALUACI?N INSTITUCIONAL DE UNIVERSIDADES Y ESCUELAS POLIT?CNICAS 2014","HOLGER CAPA SANTOS","EDITOGRAN-MEDIOS P?BLICOS","ECUADOR","2013","1","0","0000-00-00");
INSERT INTO inventario VALUES("562","ISTVL-CG-EMEM14-52"," 978-9942-07-536-9","ECUADOR EL MODELO DE EVALUACI?N DEL MANDATO 14","ARTURO VILLAVICENCIO VIVAR","CEAACES","ECUADOR","2013","1","0","0000-00-00");
INSERT INTO inventario VALUES("563","ISTVL-CG-ECUEEM14-53"," 978-9942-07-630-4","LA EVALUACI?N DE LA CALIDAD DE LA UNIVERSIDAD ECUATORIANALA EXPERIENCIA DEL MANDATO 14","ARTURO VILLAVICENCIO VIVAR, ERIKA SYLVA CHARVET,ANAL?A MINTEGUIAGA, MARIANA LIMA BAND?IRA","CEAACES","ECUADOR","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("564","ISTVL-CG- CACESCPES-54"," 978-9942-8685-2-7","CONSEJO DE ASEGURAMIENTO DE LA CALIDAD DE LA EDUCACI?N SUPERIOR","ERIKA SYLVA CHARVET","DIRECCI?N DE ESTUDIOS E INVESTIGACI?N","ECUADOR","2019","1","0","0000-00-00");
INSERT INTO inventario VALUES("565","ISTVL-CG-SFCCCUE-55"," 978-9942-07-521-5","SUSPENDIDA POR FALTA DE CALIDAD  EL CIERRE DE CATORCE UNIVERSIDADES EN ECUADOR","GUILLAUME LONG, LUCAS PACHECO, GINA CH?VEZ, CLAUDIA BALLAS, MAR?A LUISA GRANDA, LUIS MART?NEZ, ENRIQ","EDITORIAL INSTITUCIONAL","ECUADOR","2013","1","0","0000-00-00");
INSERT INTO inventario VALUES("566","ISTVL-DG-CMRT-025","","CONOCIMIENTO DE MATERIALES PARA RADIO Y TELEVISI?N","A. ALASTRUE","BIBLIOTECA PROFESIONAL","ZARAGOZA","1962","1","0","0000-00-00");
INSERT INTO inventario VALUES("567","ISTVL-DG-CMRT-025","","CONOCIMIENTO DE MATERIALES PARA RADIO Y TELEVISI?N","A. ALASTRUE","BIBLIOTECA PROFESIONAL","ZARAGOZA","1962","1","0","0000-00-00");
INSERT INTO inventario VALUES("568","ISTVL-CG-GEIC-58"," 84-226-2815-5","GRAN ENCICLOPEDIA ILUSTRADA CIRCULO","PABLO TANIGUCHI DIETRICH Y JUAN JOS? DEL VAL VINAD?","LITOGRAF?A ROS?S","ESPA?A","2016","1","0","0000-00-00");
INSERT INTO inventario VALUES("569","ISTVL-CG-ICOE-59"," 978-607-442-218-4","INTRODUCCI?N A LA COMUNICACI?N ORAL Y ESCRITA","CH?VEZ FONSECA PINEDA LEMUS","PEARSON","MEXICO","2009","1","0","0000-00-00");
INSERT INTO inventario VALUES("570","ISTVL-CG-PFEE-60"," 978-9942-07-521-10","PRINCIPIOS FUNDAMENTALES DE ECOLOG?A ECUATORIANA","R.D. GUEVARA","CODISLISI","ECUADOR","0","3","0","0000-00-00");
INSERT INTO inventario VALUES("571","ISTVL-CG-CDE-61"," 978-9962-8978-9-7","CONSULTOR DICCIONARIO ENCICLOP?DICO","TOM?S UBACH","LEXUS","ESPA?A","2012","1","0","0000-00-00");
INSERT INTO inventario VALUES("572","ISTVL-CG-DERHGPC-62"," 978-950-641-477-1","DIRECCI?N ESTRAT?GICA DE RECURSOSHUMANOS GESTI?N POR COMPETENCIAS","MARTHA ALLES","GRANICA","ARGENTINA","2012","1","0","0000-00-00");
INSERT INTO inventario VALUES("573","ISTVL-CG-LCE-63"," 950-724-777-7","LA COMUNICACI?N ECOL?GICA","JEROME K. LISS","LUMEN","ARGENTINA","0","1","0","0000-00-00");
INSERT INTO inventario VALUES("574","ISTVL-CG-LIAE-64"," 978-9589-089187","LA INVESTIGACI?N EN EL AULA Y EN LA ESCUELA","GUILLERMO BRIONES","CAB","","1988","2","0","0000-00-00");
INSERT INTO inventario VALUES("575","ISTVL-CG-LPI-65"," 958-709-159-0","LA PRIMERA IMPRESI?N","CHERI HUBER","INTERMEDIO EDITORES","COLOMBIA","2004","1","0","0000-00-00");
INSERT INTO inventario VALUES("576","ISTVL-CG-CEIP-66"," 958-28-1257-5","C?MO ELABORAR INFORMES PROFESIONALES","MICHELLE FAYET Y JEAN DENIS COMMEIGNES","INTERMEDIO EDITORES","COLOMBIA","2002","1","0","0000-00-00");
INSERT INTO inventario VALUES("577","ISTVL-CG-NANGDP-67"," 978-9978-339-03-9","SISTEMA NACIONAL DE NIVELACI?N Y ADMISI?N DESARROLLO DEL PENSAMIENTO","ALFREDO S?NCHEZ AMESTOY","CENTRO DIPCI ","ECUADOR","2012","1","0","0000-00-00");
INSERT INTO inventario VALUES("578","ISTVL-CG-NANGDPODP-68"," 978-9978-339-02-2","SISTEMA NACIONAL DE NIVELACI?N Y ADMISI?N DESARROLLO DEL PENSAMIENTO ORGANIZACI?N DEL PENSAMIENTO","ALFREDO S?NCHEZ AMESTOY","CENTRO DIPCI ","ECUADOR","2012","1","0","0000-00-00");
INSERT INTO inventario VALUES("579","ISTVL-CG-MIETE-69"," 84-494-0911-X","MENTOR INTERACTIVO ENCICLOPEDIA TEM?TICA ESTUDIANTIL","CARLOS GISPERT","OCEANO","ESPA?A","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("580","ISTVL-CG-DHDCEU-70"," 978-958-8897-12-7","DESARROLLO HUMANA, DID?CTICA Y CREATIVIDAD EN LA EDUCACI?N UNIVERSITARIA","ARACELLY QUI?ONEZ RODR?GUEZ","UD EDITORIAL","COLOMBIA","2015","1","0","0000-00-00");
INSERT INTO inventario VALUES("581","ISTVL-CG-MIECS-71"," 978-84-494-2115-0","MENTOR INTERACTIVO ENCICLOPEDIA DE CIENCIAS SOCIALES","CARLOS GISPERT","OCEANO","ESPA?A","0","1","0","0000-00-00");
INSERT INTO inventario VALUES("582","ISTVL-CG-DIODLE-72"," 84-494-0037-6","DICCIONARIO ILUSTRADO OCEANO DE LA LENGUA ESPA?OLA","CARLOS GISPERT","OCEANO","ESPA?A","0","1","0","0000-00-00");
INSERT INTO inventario VALUES("583","ISTVL-CG-DEIIE-73"," 84-494-0682-X","DICCIONARIO ESPA?OL-INGL?S INGL?S-ESPA?OL","CARLOS GISPERT","OCEANO","ESPA?A","0","1","0","0000-00-00");
INSERT INTO inventario VALUES("584","ISTVL-CG-DSA-74"," 84-494-0683-8","DICCIONARIO DE SIN?NIMOS Y ANT?NIMOS","CARLOS GISPERT","OCEANO","ESPA?A","0","1","0","0000-00-00");
INSERT INTO inventario VALUES("585","ISTVL-CG-EDCI-75"," 978-980-1248-43-4","ENCICLOPEDIA DEL CONOCIMIENTO INFINITO","OSCAR R. VALLE V.","RODVAC","ECUADOR","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("586","ISTVL-CG-DEF-76"," 978-9978-45-971-3","DICCIONARIO DE ESPECIALIDADES FARMAC?UTICAS","PLUTARCO NARANJO V.","THOMSON PLM","ECUADOR","2007","33","0","0000-00-00");
INSERT INTO inventario VALUES("587","ISTVL-DG-CMRT-025","","CONOCIMIENTO DE MATERIALES PARA RADIO Y TELEVISI?N","A. ALASTRUE","BIBLIOTECA PROFESIONAL","ZARAGOZA","1962","1","0","0000-00-00");
INSERT INTO inventario VALUES("588","ISTVL-CG-EOE-85"," 978-99-42-00-622-6","Expresi?n Oral y Escrita ","Galo Guerreo Jim?nez","UPL","ECUADOR","2012","1","0","0000-00-00");
INSERT INTO inventario VALUES("589","ISTVL-CG-MTI-86"," 978-607-17-0306-04","M?todos y T?cnicas de Investigaci?n","Lourdes Muich, Ernesto Angeles ","TRILIAS","MEXICO","2009","1","0","0000-00-00");
INSERT INTO inventario VALUES("590","ISTVL-CG-MTIJ-87"," 958-35-0222-7","M?todos y T?cnicas de Investigaci?n Jur?dica","Jacobo P?rez Escobar","TEMIS","COLOMBIA","2015","3","0","0000-00-00");
INSERT INTO inventario VALUES("591","ISTVL-CG-AE-88"," 978-9942-13-762-3","Administraci?n Educativa","Edgar Herrera Montalvo","Miraflores ","ECUADOR","2012","4","0","0000-00-00");
INSERT INTO inventario VALUES("592","ISTVL-CG-NOM-89"," 978-99-42-00-602-8","Nuevas Orientaciones y Metodolog?as","Mar?a Jos? Rubio","UPL","ECUADOR","2010","1","0","0000-00-00");
INSERT INTO inventario VALUES("593","ISTVL-CG-UI-90"," 978-607-05-02-52-1","Universo de la Inteligencia ","Isauro Blanco","LIMUSA WILEY","MEXICO","2016","1","0","0000-00-00");
INSERT INTO inventario VALUES("594","ISTVL-CG-PC-91"," 958-41-0358-X","Pedagog?a del Conocimiento","Rafael Flores","Mc GRAW HILL Education","MEXICO","1994","1","0","0000-00-00");
INSERT INTO inventario VALUES("595","ISTVL--CG-MTIJ-92"," 978-958-35-0222-7","METODOLOG?A Y T?CNICA DE LA INVESTIGACI?N JUR?DICA","JACOBO P?REZ ESCOBAR","TEMIS","COLOMBIA","2010","1","0","0000-00-00");
INSERT INTO inventario VALUES("596","ISTV-CG-ADLF-93"," 84-8088-092-9","AUDITOR?A DE LA FORMACI?N","PILAR PINEDA","EDICIONES GESTI?N 2000","ESPA?A","1995","1","0","0000-00-00");
INSERT INTO inventario VALUES("597","ISTVL-CG-VDC-94"," 978-18-4849-7","V?AS DE COMUNICACI?N","CARLOS CRESPO VILLALAZ","LIMUSA","MEXICO","1996","3","0","0000-00-00");
INSERT INTO inventario VALUES("598","ISTVL-CG-HPDC-95"," 958-600-226-8","HACIA UNA PEDAGOG?A DEL CONOCIMIENTO","RAFAEL FL?REZ OCHOA","MARTHA EDNA SU?REZ R.","COLOMBIA","2013","1","0","0000-00-00");
INSERT INTO inventario VALUES("599","ISTVL-CG-IALS-96"," 970-10-0811-1","INTRODUCCI?N A LA SOCIOLOG?A","RICHARD J. GELLES ANN LEVINE","Mc GRAW HILL Education","MEXICO","1996","5","0","0000-00-00");
INSERT INTO inventario VALUES("600","ISTVL-CG-APYA-97"," 84-481-1801-4","APRENDIZAJE PRINCIPIOS Y APLICACIONES","STEPHEN B. KLEIN","Mc GRAW HILL Education","ESPA?A","1994","3","0","0000-00-00");
INSERT INTO inventario VALUES("601","ISTVL-CG-EDL-98"," 968-422-846-5","ELEMENTOS DE L?GICA ","STEPHEN F. BARKER","Mc GRAW HILL Education","MEXICO","1994","3","0","0000-00-00");
INSERT INTO inventario VALUES("602","ISTVL-CG-GMMCDG-99"," 978-9942-01-415-3","GU?A METODOL?GICA MEJORANDO CAPACIDADES DE GESTI?N","?NGEL TIB?N","PRODECO","ECUADOR","2007","1","0","0000-00-00");
INSERT INTO inventario VALUES("603","ISTVL-CG-CHTMD-100"," 978-958-648-663-7","COMO HACER TESIS DE MAESTR?AS Y DOCTORADOS","MIGUEL ?NGEL G?MEZ MENDOZA","ECOE EDICIONES","COLOMBIA","2010","1","0","0000-00-00");
INSERT INTO inventario VALUES("604","ISTVL-ESR-CG-ESR-101"," 9978-44-450-5","ECUADOR SU REALIDAD","LOLA V?ZQUEZ S.","JOS? PERALTA","ECUADOR","2005","13","0","0000-00-00");
INSERT INTO inventario VALUES("605","ISTVL-DG-CMRT-025","","CONOCIMIENTO DE MATERIALES PARA RADIO Y TELEVISI?N","A. ALASTRUE","BIBLIOTECA PROFESIONAL","ZARAGOZA","1962","1","0","0000-00-00");
INSERT INTO inventario VALUES("606","ISTVL-CG--HCDQ-103"," 9978-45-463-2","HISTORIA DE LA CAMARA DE QUITO","BLASCO PE?AHERRERA","EDIECUTORIAL","ECUADOR","2006","1","0","0000-00-00");
INSERT INTO inventario VALUES("607","ISTVL-CG-EDLMB-104"," 84-7137-308-4","ENCICLOPEDIA DE LA MUJER BELLEZA","JUAN SALVAT","PAMPLONA","ESPA?A","1973","1","0","0000-00-00");
INSERT INTO inventario VALUES("608","ISTVL-CG-EDLMD-105"," 84-7137-310-6","ENCICLOPEDIA DE LA MUJER DECORACIONES","JUAN SALVAT","PAMPLONA","ESPA?A","1973","1","0","0000-00-00");
INSERT INTO inventario VALUES("609","ISTVL-CG-EDLMHYS-106"," 84-7137-311-4","ENCICLOPEDIA DE LA MUJER HIGIENE Y SALUD","JUAN SALVAT","PAMPLONA","ESPA?A","1973","1","0","0000-00-00");
INSERT INTO inventario VALUES("610","ISTVL-CG-EDLMVTL-107"," 84-7137-312-2","ENCICLOPEDIA DE LA MUJER VACACIONES Y TIEMPO LIBRE","JUAN SALVAT","PAMPLONA","ESPA?A","1973","1","0","0000-00-00");
INSERT INTO inventario VALUES("611","ISTVL-CG-EDLMLC-108"," 84-7137-313-0","ENCICLOPEDIA DE LA MUJER LA CASA","JUAN SALVAT","PAMPLONA","ESPA?A","1973","1","0","0000-00-00");
INSERT INTO inventario VALUES("612","ISTVL-CG-EDLMLF-109"," 84-7137-314-9","ENCICLOPEDIA DE LA MUJER LA FAMILIA","JUAN SALVAT","PAMPLONA","ESPA?A","1973","1","0","0000-00-00");
INSERT INTO inventario VALUES("613","ISTVL-CG-EDLMAP-110"," 84-7137-315-7","ENCICLOPEDIA DE LA MUJER ANIMALES Y PLANTAS","JUAN SALVAT","PAMPLONA","ESPA?A","1973","1","0","0000-00-00");
INSERT INTO inventario VALUES("614","ISTVL-CG-EDLMD--111"," 84-7137-316-5","ENCICLOPEDIA DE LA MUJER DERECHO","JUAN SALVAT","PAMPLONA","ESPA?A","1973","1","0","0000-00-00");
INSERT INTO inventario VALUES("615","ISTVL-CG-EDLMC-112"," 84-7137-317-3","ENCICLOPEDIA DE LA MUJER CULTURA","JUAN SALVAT","PAMPLONA","ESPA?A","1973","1","0","0000-00-00");
INSERT INTO inventario VALUES("616","ISTVL-CG-EDLMPDLM-113"," 84-7137-318-1","ENCICLOPEDIA DE LA MUJER PROYECCI?N DE LA MUJER","JUAN SALVAT","PAMPLONA","ESPA?A","1973","1","0","0000-00-00");
INSERT INTO inventario VALUES("617","ISTVL-CG-EDLML-114"," 84-7137-319-X","ENCICLOPEDIA DE LA MUJER LABORES","JUAN SALVAT","PAMPLONA","ESPA?A","1973","1","0","0000-00-00");
INSERT INTO inventario VALUES("618","ISTVL-CG-EDLMC115"," 84-7137-320-3","ENCICLOPEDIA DE LA MUJER COCINA","JUAN SALVAT","PAMPLONA","ESPA?A","1973","1","0","0000-00-00");
INSERT INTO inventario VALUES("619","ISTVL-CG-LHDDECB-116","978-84-8453-1920","LA HISTORIA DEFINITIVA DE EL CLUB BILDERBERG","DANIEL ESTULIN","PLANETA, S.A","ESPA?A","2008","1","0","0000-00-00");
INSERT INTO inventario VALUES("620","ISTVL-CG-DLLAB-117","978-9978-47-579-9","DE LA LUZ AL BESO","GUSTAVO ADOLFO B?CQUER","PROLIPA C?A.LTDA","ECUADOR","2019","1","0","0000-00-00");
INSERT INTO inventario VALUES("621","ISTVL-CG-ECV-118","9972-233-01-4","EDUCANDO CON VALORES","JOAQU?N GARC?A L.","MIRBET","PER?","2006","1","0","0000-00-00");
INSERT INTO inventario VALUES("622","ISTVL-CG-ACDOE-119"," 84-8055-055-4","AULA CURSO DE ORIENTACI?N ESCOLAR","DRA. PATRICIA ASPIAZU DE PA?Z EXDIRECTORA DEL DEPARTAMENTO DE GEOGRAF?A","CULTURAL,S.A","ESPA?A","1993","3","0","0000-00-00");
INSERT INTO inventario VALUES("623","ISTVL-CG-LMDC-120","9978-82-753-6","LA MUERTE DEL C?NDOR","JOS? MAR?A VARGAS VILA","TRAMASOCIAL","ECUADOR","2005","3","0","0000-00-00");
INSERT INTO inventario VALUES("624","ISTVL-CG-PYVGIPCLV-121","958-04-1764-4","PERSUADA Y VENDIDA GUIA ILUSTRADA PARA CERRAR LA VENTA","JOS? IGNACIO CASAS","GRUPO EDITORIAL NORMA","COLOMBIA","1992","1","0","0000-00-00");
INSERT INTO inventario VALUES("625","ISTVL-CG-LALET-122","ISBN 10: 1-607380-80-3","LA ACTITUD LO ES TODO","JEFF KELLER","TALLER DEL ?XITO","ECUADOR","0","1","0","0000-00-00");
INSERT INTO inventario VALUES("626","ISTVL-DG-CMRT-025","","CONOCIMIENTO DE MATERIALES PARA RADIO Y TELEVISI?N","A. ALASTRUE","BIBLIOTECA PROFESIONAL","ZARAGOZA","1962","1","0","0000-00-00");
INSERT INTO inventario VALUES("627","ISTVL-CG-EPPDMEYC"," 978-9942-07-270-2","EL PENSAMIENTO POL?TICO DE MONTALVO ENSAYOS Y CARTAS","FERNARNDO TINAJERO","MINISTERIO DE COORDINACI?N DE LA POL?TICA Y GOBIERNOS AUT?NOMOS D.","ECUADOR","2012","1","0","0000-00-00");
INSERT INTO inventario VALUES("628","ISTVL-DG-CMRT-025","","CONOCIMIENTO DE MATERIALES PARA RADIO Y TELEVISI?N","A. ALASTRUE","BIBLIOTECA PROFESIONAL","ZARAGOZA","1962","1","0","0000-00-00");
INSERT INTO inventario VALUES("629","ISTVL-DG-CMRT-025","","CONOCIMIENTO DE MATERIALES PARA RADIO Y TELEVISI?N","A. ALASTRUE","BIBLIOTECA PROFESIONAL","ZARAGOZA","1962","1","0","0000-00-00");
INSERT INTO inventario VALUES("630","ISTVL-DG-CMRT-025","","CONOCIMIENTO DE MATERIALES PARA RADIO Y TELEVISI?N","A. ALASTRUE","BIBLIOTECA PROFESIONAL","ZARAGOZA","1962","1","0","0000-00-00");
INSERT INTO inventario VALUES("631","ISTVL-DG-CMRT-025","","CONOCIMIENTO DE MATERIALES PARA RADIO Y TELEVISI?N","A. ALASTRUE","BIBLIOTECA PROFESIONAL","ZARAGOZA","1962","1","0","0000-00-00");
INSERT INTO inventario VALUES("632","ISTVL-DG-F-012","84-395-1801-3","FOTOGRAFIA TOMO 8","PLANETA AGOSTINI","AGOSTIN","BARCELONA","1991","1","0","0000-00-00");
INSERT INTO inventario VALUES("633","ISTVL-DG-EPF-014","84-345-3949-7","ENCICLOPEDIA PR?CTICA DE FOTOGRAF?A TOMO 8","PETER HALD","SALVAT ","ESPA?A","1979","1","0","0000-00-00");
INSERT INTO inventario VALUES("634","ISTVL-DG-TI-021","84-236-1205-8","TECNICAS DE IMPRESI?N ","F.CAPETTI","DON BOSCO","BARCELONA","1975","1","0","0000-00-00");
INSERT INTO inventario VALUES("635","ISTVL-DG-CMRT-025","","CONOCIMIENTO DE MATERIALES PARA RADIO Y TELEVISI?N","A. ALASTRUE","BIBLIOTECA PROFESIONAL","ZARAGOZA","1962","1","0","0000-00-00");
INSERT INTO inventario VALUES("636","ISTVL-DG-CMRT-025","","CONOCIMIENTO DE MATERIALES PARA RADIO Y TELEVISI?N","A. ALASTRUE","BIBLIOTECA PROFESIONAL","ZARAGOZA","1962","1","0","0000-00-00");
INSERT INTO inventario VALUES("637","ISTVL-DG-CMRT-025","","CONOCIMIENTO DE MATERIALES PARA RADIO Y TELEVISI?N","A. ALASTRUE","BIBLIOTECA PROFESIONAL","ZARAGOZA","1962","1","0","0000-00-00");
INSERT INTO inventario VALUES("638","ISTVL-DG-CMRT-025","","CONOCIMIENTO DE MATERIALES PARA RADIO Y TELEVISI?N","A. ALASTRUE","BIBLIOTECA PROFESIONAL","ZARAGOZA","1962","1","0","0000-00-00");
INSERT INTO inventario VALUES("639","ISTVL-DG-TTG-026","978-84-17412-01-2","TRUCOS DE TIPOGRAF?A","SOFIE BEIER","PROMOPRESS","BARCELONA","2018","1","0","0000-00-00");
INSERT INTO inventario VALUES("640","ISTVL-DG-HA-027","958-42-6073-1","HISTORIA DEL ARTE","JESSE BRYANT WILDER","BOL?VAR IMPRESORES","COLOMBIA","2017","1","0","0000-00-00");
INSERT INTO inventario VALUES("641","ISTVL-DG-DP-043","978-9978-389-15-7","DISE?O PUBLICITARIO","NELSON REINOSO","FCSC EDITORIAL","QUITO","0","1","0","0000-00-00");
INSERT INTO inventario VALUES("642","ISTVL-DG-MDT-037","9978-82-541-X","MANUAL DE DIBUJO T?CNICO","ARQ. GONZALO CEVALLOS T.","SILVA ARTES GR?FICAS","QUITO","2013","1","0","0000-00-00");
INSERT INTO inventario VALUES("643","ISTVL-DG-INTID-030","978-84-936508-2-7","ILLUSTRALIA NUEVAS TENDENCIAS DE ILUSTRACI?N DIGITAL","PACO ASENCIO","PROMOPRESS","BARCELONA","2008","1","0","0000-00-00");
INSERT INTO inventario VALUES("644","ISTVL-DG-FDI-031","978-84-15967-73-6","FUNDAMENTOS DEL DISE?O INTERACTIVO","JAMIE STEANE","PROMOPRESS","BARCELONA","2016","1","0","0000-00-00");
INSERT INTO inventario VALUES("645","ISTVL-DG-LSL-032","978-958-42-8882-2","LETTERING SIN L?MITES","PERDOMOCAAMA?O","PLANETA COLOMBIANA S.A.","COLOMBIA","2020","1","0","0000-00-00");
INSERT INTO inventario VALUES("646","ISTVL-DG-LEP-033","978-84-17254-51-3","LA EXPOSICI?N PERFECTA","MICHAEL FREEMAN","BLUME","BARCELONA","2018","2","0","0000-00-00");
INSERT INTO inventario VALUES("647","ISTVL-DG-EDIEE-034","978-8415317777","EDICI?N DIGITAL DE LA IMAGEN Y EFECTOS ESPECIALES","MICHAEL FREEMAN","BLUME","BARCELONA","0","0","0","0000-00-00");
INSERT INTO inventario VALUES("648","ISTVL-DG-LSL2-035","978-958-42-9402-9","LETTERING SIN L?MITES 2","PERDOMOCAAMA?O","PLANETA COLOMBIANA S.A.","BOGOT?","2021","1","0","0000-00-00");
INSERT INTO inventario VALUES("649","ISTVL-DG-C-036","978-958-42-8145-3","CREATIVIDAD","ELKHONON GOLDBERG","PLANETA COLOMBIANA S.A.","BOGOT?","2019","1","0","0000-00-00");
INSERT INTO inventario VALUES("650","ISTVL-DG-ECO-038","978-950-641-598-3","?TICA Y COACHING ONTOL?GICO","RAFAEL ECHEVERR?A","EDICIONES GR?NICA","BUENOS AIRES","2018","1","0","0000-00-00");
INSERT INTO inventario VALUES("651","ISTVL-DG-AFD-039","84-481-3824-4","AVANZA FOTOGRAF?A DIGITAL","STONEGLADIS","MCGRAW HILL","MADRID","2003","1","0","0000-00-00");
INSERT INTO inventario VALUES("652","ISTVL-DG-AAI2020-040","978-84-267-2853-1","APRENDER ADOBE ILLUSTRATOR 2020","SONIA LLENA HURTADO","MARCOMBO","BARCELONA","2020","1","0","0000-00-00");
INSERT INTO inventario VALUES("653","ISTVL-DG-AAICS4-041","978-607-7686-53-8","APRENDER ADOBE INDESIGN CS4","ALFAOMEGA","MARCOMBO","BARCELONA","2009","1","0","0000-00-00");
INSERT INTO inventario VALUES("654","ISTVL-DG-LID-042","978-84-342-4105-3","LA INFORMACI?N EN EL DISE?O","ISABEL MEIRELLES","PARRAM?N","BARCELONA","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("655","ISTVL-DG-CDCPE-044","978-9978-55-097-7","?C?MO DISE?AR CAMPA?AS POL?TICAS EXITOSAS?","ALFREDO D?VALOS, V?CTOR POLANCO, CARLOS GALEAS, ALFONSO P?REZ","CIESPAL","QUITO","2012","1","0","0000-00-00");
INSERT INTO inventario VALUES("656","ISTVL-DG-IS-045","978-9942-09-221-2","INTRODUCCI?N A LA SEMI?TICA","DANIEL CHANDLER","ABYALAYALA","QUITO","2014","1","0","0000-00-00");
INSERT INTO inventario VALUES("657","ISTVL-DG-APEA-046","978-958-30-3015-4","ANATOM?A PARA EL ARTISTA","PETER STANYER","PANAMERICANA","BOGOT?","2008","1","0","0000-00-00");
INSERT INTO inventario VALUES("658","ISTVL-DG-MIIDF-047","978-987-1716-05-0","MIRADAS II  DISE?O FOTOGR?FICO","OSCAR EDGAR ECHEVARR?A","UNIVERSIDAD DE PALERMO","BUENOS AIRES","2010","1","0","0000-00-00");
INSERT INTO inventario VALUES("659","ISTVL-DG-TIC-048","9978-981-25-X","TUTOR?A DE LA INVESTIGACI?N CIENT?FICA","LUIS HERRERA, ARNALDO MEDINA, GALO NARANJO","GR?FICAS CORONA","QUITO","2014","5","0","0000-00-00");
INSERT INTO inventario VALUES("660","ISTVL-DG-LUICS-049","978-9978-67-129-0","LOS USOS DE INTERNET COMUNICACI?N Y SOCIEDAD","ALBORNOZCABRERAPALACIOSRAM?REZVILLAFUERTE","FLACSO","QUITO","2007","1","0","0000-00-00");
INSERT INTO inventario VALUES("661","ISTVL-DG-OL-050","956-201-226-3","ONTOLOG?A DEL LENGUAJE","RAFAEL ECHEVERR?A","DOLMEN EDICIONES","SANTIAGO DE CHILE","1998","5","0","0000-00-00");
INSERT INTO inventario VALUES("662","ISTVL-DG-EC-051","84-234-2356-7","ESTRATEGIA CORPORATIVA","PRAHALAD, C.K.","GRUPO EDITORIAL PLANETA","BUENOS AIRES","2005","1","0","0000-00-00");
INSERT INTO inventario VALUES("663","ISTVL-DG-EF56-052","1669-2306","ESCRITOS EN LA FACULTAD  DISE?O Y COMUNICACI?N","UNIVERSIDAD DE PALERMO","UNIVERSIDAD DE PALERMO","BUENOS AIRES","2009","1","0","0000-00-00");
INSERT INTO inventario VALUES("664","ISTVL-DG-HP-053","978-987-1716-32-6","HISTORIETAS PALERMO","UNIVERSIDAD DE PALERMO","UNIVERSIDAD DE PALERMO","BUENOS AIRES","2011","1","0","0000-00-00");
INSERT INTO inventario VALUES("665","ISTVL-DG-GPBM-054","978-9942-02-649-1","GU?A DE PLANIFICACI?N B?SICA DE MEDIOS","HUGO S?NCHEZ CALDERON","MULTISERVICIOS INTEGRADOS","QUITO","2009","1","0","0000-00-00");
INSERT INTO inventario VALUES("666","ISTVL-DG-NETW-055","978-84-7356-629-2","NETWORKING USO PR?CTICO DE LAS REDES SOCIALES","CALVOROJAS","ESIC","MADRID","2009","1","0","0000-00-00");
INSERT INTO inventario VALUES("667","ISTVL-DG-CN12-056","4-89737-148-1","CREATION N?12","KAMEKURA YUSAKU","RECRUIT Co. Ltd.","JAPON","1992","1","0","0000-00-00");
INSERT INTO inventario VALUES("668","ISTVL-DG-MMEC-057","978-950-641-480-1","MAYONESA DEL MARKETING A LA ESTRATEGIA COMPETITIVA","ALBERTO LEVY","GRANICA","BUENOS AIRES","2010","2","0","0000-00-00");
INSERT INTO inventario VALUES("669","ISTVL-DG-LEET9HA-058","950-46-1598-8","\"LA ENCICLOPEDIA DEL ESTUDIANTET9"," HISTORIA DEL ARTE\"","SANTILLANA","SANTILLANA","0","2006","0","0000-00-00");
INSERT INTO inventario VALUES("670","ISTVL-DG-GM-059","978-958-600-828-0","GERENCIA DE MARKETING ESTRATEGIAS Y PROGRAMAS","GUILTINANPAULMADDEN","MCGRAW HILL","BOGOT?","1998","1","0","0000-00-00");
INSERT INTO inventario VALUES("671","ISTVL-DG-LCSA-060","9978-92-254-7","LAS CRUCES SOBRE EL AGUA","JOAQUIN GALLEGOS LARA","COLECCI?N MEDIA LUNA","QUITO","2003","1","0","0000-00-00");
INSERT INTO inventario VALUES("672","ISTVL-DG-CT-061","9978-92-242-3","POR LOS CAMINOS DEL TIEMPO","JOAQU?N MART?NEZ AMADOR","COLECCI?N MEDIA LUNA","QUITO","2003","1","0","0000-00-00");
INSERT INTO inventario VALUES("673","ISTVL-DG-LHBI-062","9978-92-257-1","LA HOGUERA B?RBARA I","ALFREDO PAREJA DIEZCANSECO","COLECCI?N MEDIA LUNA","QUITO","2003","1","0","0000-00-00");
INSERT INTO inventario VALUES("674","ISTVL-DG-LHBII-063","9978-92-256-3","LA HOGUERA B?RBARA II","ALFREDO PAREJA DIEZCANSECO","COLECCI?N MEDIA LUNA","QUITO","2003","1","0","0000-00-00");
INSERT INTO inventario VALUES("675","ISTVL-DG-RVI-064","9978-92-218-0","RELACI?N DE UN VETERANO DE LA INDEPENDENCIA","CARLOS TOBAR","COLECCI?N MEDIA LUNA","QUITO","2002","3","0","0000-00-00");
INSERT INTO inventario VALUES("676","ISTVL-DG-TSL-065","958-9405-07-X","TEOR?A DE LAS SEIS LECTURAS","MIGUEL DE ZUBIR?A SAMPER","FUNDACI?N ALBERTO MERANI","COLOMBIA","1996","1","0","0000-00-00");
INSERT INTO inventario VALUES("677","ISTVL-DG-CMRT-025","","CONOCIMIENTO DE MATERIALES PARA RADIO Y TELEVISI?N","A. ALASTRUE","BIBLIOTECA PROFESIONAL","ZARAGOZA","1962","1","0","0000-00-00");
INSERT INTO inventario VALUES("678","ISTVL-DG-CMRT-025","","CONOCIMIENTO DE MATERIALES PARA RADIO Y TELEVISI?N","A. ALASTRUE","BIBLIOTECA PROFESIONAL","ZARAGOZA","1962","1","0","0000-00-00");
INSERT INTO inventario VALUES("679","ISTVL-DG-CMRT-025","","CONOCIMIENTO DE MATERIALES PARA RADIO Y TELEVISI?N","A. ALASTRUE","BIBLIOTECA PROFESIONAL","ZARAGOZA","1962","1","0","0000-00-00");
INSERT INTO inventario VALUES("680","ISTVL-DG-CMRT-025","","CONOCIMIENTO DE MATERIALES PARA RADIO Y TELEVISI?N","A. ALASTRUE","BIBLIOTECA PROFESIONAL","ZARAGOZA","1962","1","0","0000-00-00");
INSERT INTO inventario VALUES("682","ISTVL-DG-RVI-064","978-970-817-151-9","Ingles2","CARLOS TOBAR","Santillana","Estados Unidos","2023","1","0","2023-08-06");



DROP TABLE IF EXISTS libros;

CREATE TABLE `libros` (
  `id_libro` int(10) NOT NULL AUTO_INCREMENT,
  `ISBN` varchar(50) NOT NULL,
  `foto` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nombre` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `descripcion` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `disponible` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_categoria` int(10) NOT NULL,
  `id_subcategoria` int(10) NOT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `url_descarga` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id_libro`),
  KEY `id_categoria` (`id_categoria`),
  CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO libros VALUES("101","978-970-817-151-9","uploads/images.jpeg","contabilidad Financiera","cuentas por pagar, cuentas por cobrar ","si","25","14","2023-08-03","Migel P. Sogora Aguilar");
INSERT INTO libros VALUES("102","789-4523-7418-896","uploads/descarga (1).jpeg","Desarrollo de aplicaciones moviles","En este libro podemos encontrar diversas funciones que nos ayuden con el diseño de aplicaciones movi","si","26","16","2023-08-05","Kevin Chicaiza");



DROP TABLE IF EXISTS pdf;

CREATE TABLE `pdf` (
  `id_pdf` int(10) NOT NULL AUTO_INCREMENT,
  `id_libro` int(10) NOT NULL,
  `titulo` varchar(150) DEFAULT NULL,
  `descripcion` mediumtext DEFAULT NULL,
  `tamanio` int(200) unsigned DEFAULT NULL,
  `tipo` varchar(150) DEFAULT NULL,
  `nombre_archivo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_pdf`),
  KEY `id_libro` (`id_libro`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO pdf VALUES("30","100","MySQL","yyy","4513020","application/pdf","MEMORIA_Barba Soler, Juan Pedro.pdf");
INSERT INTO pdf VALUES("31","102","Desarrollo de aplicaciones web","anana","4513020","application/pdf","MEMORIA_Barba Soler, Juan Pedro.pdf");
INSERT INTO pdf VALUES("32","101","Contabilidad financiera","nhnhn","67871","application/pdf","PROGRAMA DE REDES DE COMPUTADORAS.pdf");



DROP TABLE IF EXISTS prestamo_libro;

CREATE TABLE `prestamo_libro` (
  `id_prestamo` int(100) NOT NULL AUTO_INCREMENT,
  `fecha_prestamo` date NOT NULL,
  `fecha_entrega` date NOT NULL,
  `id_libro` int(10) NOT NULL,
  `id_usuario_estudiante` int(10) NOT NULL,
  `apellidos` int(255) NOT NULL,
  `cedula` int(100) NOT NULL,
  `estado` int(10) NOT NULL,
  PRIMARY KEY (`id_prestamo`),
  KEY `id_libro` (`id_libro`),
  KEY `id_usuario_estudiante` (`id_usuario_estudiante`),
  CONSTRAINT `prestamo_libro_ibfk_1` FOREIGN KEY (`id_libro`) REFERENCES `libros` (`id_libro`) ON DELETE CASCADE,
  CONSTRAINT `prestamo_libro_ibfk_2` FOREIGN KEY (`id_usuario_estudiante`) REFERENCES `usuario_estudiante` (`id_usuario_estudiante`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO prestamo_libro VALUES("62","2023-08-03","2023-08-04","101","376","0","0","1");



DROP TABLE IF EXISTS proveedor;

CREATE TABLE `proveedor` (
  `id_proveedor` int(10) NOT NULL,
  `nombre_proveedor` varchar(50) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` int(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO proveedor VALUES("1","Libreria COPASA","Managgua","234955","gomper23@gmail.com");
INSERT INTO proveedor VALUES("2","Libreria COPASA","Managgua","234955","gomper23@gmail.com");



DROP TABLE IF EXISTS subcategorias;

CREATE TABLE `subcategorias` (
  `id_subcategoria` int(10) NOT NULL AUTO_INCREMENT,
  `nombre_subcategoria` varchar(50) NOT NULL,
  PRIMARY KEY (`id_subcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO subcategorias VALUES("14","Administrar servicios de rentas internas");
INSERT INTO subcategorias VALUES("16","Desarrollo de aplicaciones visual estudio ");



DROP TABLE IF EXISTS suscriptores;

CREATE TABLE `suscriptores` (
  `id_suscriptor` int(10) NOT NULL AUTO_INCREMENT,
  `nombre_completo` varchar(30) DEFAULT NULL,
  `correo` varchar(30) NOT NULL,
  `observaciones` varchar(200) DEFAULT NULL,
  `fecha_suscripcion` date DEFAULT NULL,
  PRIMARY KEY (`id_suscriptor`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO suscriptores VALUES("4","Elli","elier.aries@gmail.com","nada","2016-01-08");
INSERT INTO suscriptores VALUES("5","carlos jose","carloslslslsl","nada","2016-01-08");
INSERT INTO suscriptores VALUES("6","german","german@gmail.com","nada","2016-01-08");
INSERT INTO suscriptores VALUES("13","Carlos","elier.aries@gmail.com","nada","2018-09-14");
INSERT INTO suscriptores VALUES("15","Jose Roa","neltonelcerebro@gmail.com","nada","2018-09-14");
INSERT INTO suscriptores VALUES("16","","","","2018-10-05");



DROP TABLE IF EXISTS usuario_estudiante;

CREATE TABLE `usuario_estudiante` (
  `id_usuario_estudiante` int(10) NOT NULL AUTO_INCREMENT,
  `carnet` varchar(15) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellidos` varchar(40) NOT NULL,
  `email` varchar(30) NOT NULL,
  `anio` varchar(10) NOT NULL,
  `carrera` varchar(30) NOT NULL,
  PRIMARY KEY (`id_usuario_estudiante`)
) ENGINE=InnoDB AUTO_INCREMENT=1131 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO usuario_estudiante VALUES("67","0550235097","AÑARUMBA ALANUCA MARCO ALEXANDER","","","2do","TECNOLOGIA SUPERIOR DESARROLLO");
INSERT INTO usuario_estudiante VALUES("68","550194039","AYALA LOPEZ JOSE LUIS","","","2","DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("69","504179391","CAILLAGUA TIPAN LIVINTON GENARO","","","2","DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("70","550266720","CAISA GUAMAN EMERSON JOSUE","","","2","DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("71","550212666","CASA CASA BYRON XAVIER","","","2","DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("72","0550146690","CASILLAS ALULEMA OCTAVIO MAURICIO","","","2","DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("73","0550196026","CHIGUANO SUNTASIG JIMMY ANDERSON","","","2","DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("74","0550630867","CHILUISA LAGLA DAMARIS GICELA","","","1","DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("75","0504870924","CHUQUITARCO CHICAIZA MAYERLI ABIGAIL","","","2","DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("76","1725105025","CHURO DEFASS DAENA ODED","","","2","DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("77","0503173064","DE JESUS ESPIN SANTIAGO JAVIER","","","2","DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("78","0503578395","FABARA HINOJOSA JUAN ANDERSON","","","2","DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("79","1721766978","GALLEGOS FLORES LIZETH DE LOS ANGELES","","","2","DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("80","0504430570","GUAMAN SHIGUI ALEX STEVEN","","","2","DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("81","0550386585","GUAMAN SHIGUI EDISON JAVIER","","","2","DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("82","0503663809","GUANGA PALOMO BRYAN JESUS","","","2","DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("83","0503758724","GUANOLUISA QUIMBITA ANTHONY JOEL","","","2","DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("84","1752510188","GUANOTASIG CHASI PAUL ALEXIS","","","2","DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("85","0504364050","GUANOTU?A CHALUISA HERNAN RONALDO","","","2","DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("86","1754500575","GUEVARA ULLAGUARI LIZETH GUADALUPE","","","2","DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("87","0504816687","IZA RIOS EDISON ADRIAN","","","1","DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("88","0503950529","JACOME VERGARA JOSE LUIS","","","2","DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("89","1728768779","JAYA LIQUINCHANA KERLY PAULINA","","","2","DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("90","0550701239","LEMA CAGUANO JOSSELYN MAGALI","","","2","DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("91","0504464728","LOPEZ CONRADO EVER ALBERTO","","","2","DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("92","0504369695","MESA CASA PEDRO ANDRES","","","2","DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("93","1728658939","OLIVO CAIZA KAREN YANELA","","","2","DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("94","0504612581","PALANGO CHACHA DEYSI JACKELINE","","","2","DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("95","0504363755","PICHUCHO ANALUISA ALEXIS MICHAEL","","","2","DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("96","0550512610","PUMASHUNTA PULLOTASIG SARA DANIELA","","","2","DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("97","0503651515","ROCHA MARTINEZ KEVIN JOEL","","","2","DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("98","1005249733","RODRIGUEZ LITA ALAN DAVID","","","2","DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("99","1850218064","ROMERO MAIQUIZA DARWIN JOEL","","","2","DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("100","1805373543","SARCO CALAPI?A CHRISTOPHER ALEXANDER","","","2","DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("101","0550521876","SARSOZA VILLAMARIN JOHNNY VINICIO","","","2","DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("102","0504167883","SEMANATE OLMOS ANDRES EDUARDO","","","2","DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("103","0503580144","TEJADA CHUGA BRYAN FRANCISCO","","","2","DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("104","0504229436","TIPAN TIPAN ALEX MOISES","","","2","DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("105","0550105811","VIERA TOAPANTA EDWIN FERNANDO","","","2","DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("106","1751851203","YAULI CHICAIZA JHOSELIN MARIELA","","","2","DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("107","0954622247","AGUDELO SANCHEZ MARIA DEL MAR","","","3","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("108","0400837308","AGUILAR QUEVEDO SILVIA GUADALUPE","","","3","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("109","1550253924","ALVARADO GRADOS ANTHONY EMERSON","","","3","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("110","0503857450","AREQUIPA TANDALLA ANTHONY JOHAN","","","3","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("111","0504625526","CAJAS GUAITA MELANY GISELLA","","","3","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("112","1316074358","CARRE?O LUCAS MARIA MARYLIN","","","3","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("113","0504748450","CASA TAIPE JOHANA LISSBETH","","","3","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("114","0550248041","CASTILLO DIAZ JOEL ARIEL","","","3","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("115","0503216129","CHICAIZA ULGAN JHONATAN ALEXANDER","","","3","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("116","1805448378","CHISAG CUJI JONATHAN JOEL","","","3","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("117","1753856341","CLAVIJO CAMPA?A GENESIS PRISCILA","","","3","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("118","1756197875","CONGO VISCARRA ERICK SANTIAGO","","","3","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("119","1719465617","CULQUI GUALLASAMIN JAIME DAVID","","","3","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("120","0550645626","FAREZ CHUQUITARCO KAREN SAMANTA","","","3","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("121","0502867542","GREFA SANCHEZ LISETH JOMAYRA","","","3","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("122","1755981964","GUEVARA ARIAS DANIEL ALEJANDRO","","","3","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("123","1751861392","JAEN JUMBO ROBINSON AQUILES","","","3","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("124","1752198943","JAIME CARRILLO JUNIOR ALEXANDER","","","3","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("125","0504380205","MALDONADO VIERA LUCRECIA MONSERRATH","","","3","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("126","1753353786","MASABANDA GUACHAMIN JOSETH PATRICK","","","3","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("127","1754299756","MEDINA RAMON GABRIELA NA","","","3","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("128","1727536516","PANTOJA RODRIGUEZ DIANA MARISOL","","","3","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("129","1752620623","PERALVO GUAMAN JENIFFER YADIRA","","","3","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("130","2351133695","PROA?O BALSECA CRISTIAN DAVID","","","3","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("131","0550174171","PULLUPAXI LECHON JONATHAN JOSUE","","","3","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("132","1729035897","PUNGUIL CORDOVA KATTY GISSELA","","","3","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("133","0502511629","QUIJANO ARCOS MOISES ALEJANDRO","","","3","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("134","1750328013","ROMERO CANDO GABRIELA YERITZA","","","3","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("135","0504274820","SALAZAR CALERO BRAYAN ALEJANDRO","","","3","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("136","1726370339","SANDOVAL AIMACA?A ERIKA ALEXANDRA","","","3","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("137","1725161689","SIMBA?A SIMBA?A MICAELA JOHANA","","","3","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("138","1753491669","SUAREZ TANDAZO MICHAEL JHOEL","","","3","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("139","0550151443","TOAPANTA CAYO NAYELY MICHELLE","","","3","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("140","0550091490","VEINTIMILLA JIMENEZ SAMUEL JESUS","","","3","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("141","1313700328","ZAMBRANO LOOR CARLOS JOSUE","","","3","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("142","0250184785","AZOGUE YANCHALIQUIN CRISTHIAN MAURICIO","","","4","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("143","1805725882","BASANTES RUIZ MARJORIE MICHELLE","","","4","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("144","1754679957","BUKHARI SYED ZUBAIR ROSHAN","","","4","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("145","1727703488","CAIZA AVILA KARLA ESTEFANIA","","","4","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("146","0504068545","CEVALLOS ZAMBRANO RAFAEL ALEJANDRO","","","4","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("147","1600886053","ESPINOZA CHAMORRO ERIKA GABRIELA","","","4","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("148","1725240525","FERNANDEZ VACA ITTAN NICOLAS","","","4","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("149","1726137084","FERNANDEZ ACU?A LESLIE MARLENE","","","4","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("150","0550362743","GUANOLUISA YANCHAGUANO EDWIN AMILCAR","","","4","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("151","0502914104","HIDALGO GUERRERO NICOLE ESTEFANIA","","","4","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("152","1752651271","IPIALES VASCONEZ MARIA JOSE","","","4","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("153","0503799223","IZA TASINCHANA KEVIN ALEXANDER","","","4","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("154","0550615405","JIMENEZ ERAZO DANIELA NAOMI","","","4","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("155","1754142477","MACIAS NASIMBA CAMILA ESTEFANIA","","","4","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("156","0550561039","MARCALLA TUSO CARLA MISHEL","","","4","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("157","1753041464","ORBEA CASTRO EMILY ANABEL","","","4","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("158","0503996787","PACHECO PARRAGA MARIO DAVID","","","4","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("159","1755546049","PILA PILA JOSSELYN VERONICA","","","4","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("160","1756242747","PILATAXI CRIOLLO JOSSELIN ALEJANDRA","","","4","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("161","1753699279","RODAS HERRERA KERLLY NAYELI","","","4","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("162","1752431864","ROMERO MONTALVO DEBORA EVELIA","","","4","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("163","1729039352","SANGOVALIN ROJAS SHIRLEY VIVIANA","","","4","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("164","0504211723","SEMANATE PAZTU?A EDGAR FABIAN","","","4","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("165","2200039994","SEVILLANO CHILA YOJAN JOSUE","","","4","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("166","1727666016","SUNTAXI QUINGA  ALEX DARIO","","","4","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("167","1727954867","SUNTAXI GOMEZ LUIS MIGUEL","","","4","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("168","1755988548","TAPIA VILLARREAL JOSEPH DAMIAN","","","4","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("169","2351083734","TIPANTAXI NARANJO JOSELYN FERNANDA","","","4","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("170","1722949482","TIPANTIZA CUTI ARIEL DARIO","","","4","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("171","1726341017","TIPANTU?A TARCO JHON SEBASTIAN","","","4","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("172","0503474595","TOAQUIZA PACHECO ESCARLETH MALENA","","","4","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("173","0504666140","TOAQUIZA CHUQUITARCO KEVIN FABRICIO","","","4","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("174","1752313294","TOPON PUENAYAN JONATHAN GEOVANNY","","","4","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("175","1850504869","YANCHATIPAN MOPOSITA MISHEL CAROLINA","","","4","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("176","0803425016","ACOSTA SANTOS DEYSHMAN LEANDRO","","","5","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("177","1750414912","ALAJO SANGU?A STEEVEN ALEJANDRO","","","5","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("178","1727894576","ALARCON GAVILANEZ ANDERSON ANDRES","","","5","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("179","1725207078","ALBARADO RIVERA VIVIAN LISBETH","","","5","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("180","0502877293","ANGULO QUINTERO EDIE JONATHAN","","","5","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("181","0504101080","ARCOS RODRIGUEZ JOSE ANDRES","","","5","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("182","1850482520","CARRI?N MOLINA BISMARCK JOSUE","","","5","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("183","0550378129","CASA CASA EDWIN FERNANDO","","","5","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("184","1754117347","CEVALLOS MURILLO ANDREA VICTORIA","","","5","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("185","1723430540","CHAMBA PEREZ LENIN PAUL","","","5","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("186","0503756975","CHUQUI GUANOLUISA ANDRES FRANCISCO","","","5","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("187","0504363219","CONZA CHANALUISA JONATHAN BLADIMIR","","","5","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("188","1751896026","ESPINOZA CHALA JENIFER SALOME","","","5","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("189","1718777772","FALC?N PULLUGANDO ERIK ESTEBAN","","","5","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("190","1751333681","GOYES CUEVA MAYLI NURIA","","","5","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("191","0550677868","GUANOLUISA MOREJON ANDY JOEL","","","5","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("192","1725518144","HERRERA CHICAIZA JOEL FRANCISCO","","","5","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("193","1726307018","HUARACA SISLEMA JESSICA FERNANDA","","","5","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("194","1850364942","MACHADO VACA ALICIA LIZETH","","","5","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("195","1724005861","MANTILLA SANCHEZ JORDY ALEXANDER","","","5","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("196","1724785611","MARTINEZ HERRERA CRISTAL SHANTAL","","","5","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("197","1850152552","MEZA TIRADO MARCOS JEZIEL","","","5","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("198","1724225667","MIRANDA REMACHE NINFA MARISOL","","","5","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("199","0955038534","MOREIRA PARRAGA KENNY GEOVANNY","","","5","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("200","0550245047","NOBOA OTO CARMITA MARILU","","","5","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("201","1753358207","PROA?O TEPUD NORMA MARIBEL","","","5","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("202","0504811191","QUISPE VARGAS WILLIAN FERNANDO","","","5","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("203","1850891951","RODRIGUEZ CHAMORRO ALEX ADRIAN","","","5","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("204","0503337321","ROMERO D?AZ MIGUEL ANDRES","","","5","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("205","0503184103","SALAZAR SEGOVIA ANDREA FERNANDA","","","5","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("206","1752577971","SUNT?SIG BURGOS CARLOS FABRICIO","","","5","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("207","2100986922","TAPUY SHIGUANGO JHOEL FABRICIO","","","5","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("208","1752435931","TASIGUANO IZA MILTON DAVID","","","5","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("209","0504716895","UNAUCHO CHANCUZA BRAYAN ALEXANDER","","","5","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("210","0503090219","VILLACIS CUNALATA CRISTIAN ISRAEL","","","5","DISE?O GR?FICO CON NIVEL EQUIV");
INSERT INTO usuario_estudiante VALUES("211","1804413837","ALMACHI RAMIREZ JHONNY PAUL","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("212","0804153831","ARCOS GOBEA MELANY PAOLA","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("213","0550354963","BANDA RAMOS KATHERINE PAOLA","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("214","0550688725","BERRONES TOBAR DIEGO JOSE","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("215","0550191738","CANDO CHILUISA EMERSON SEGUNDO","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("216","0550696181","CANDO CACERES JOFRER ALEXANDER","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("217","1752540243","CASERES PE?AHERRERA JARDI ALESSANDRO","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("218","0550374045","CHICAIZA JAQUE PAOLA NICOLE","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("219","0550477087","CHICAIZA TAIPE RICHARD ANDERSON","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("220","1750082032","CHISAG TERAN PABLO DANIEL","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("221","0550433825","CRIOLLO CHICAIZA BRYAN SANTIAGO","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("222","FB646458","FERNANDEZ SERRANO LAURA SOFIA","","","1","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("223","0504021999","FLORES LICTO DANIEL SEBASTIAN","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("224","0850261470","GOBEA ANGULO LINDA NAYEEL","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("225","1726504028","GUAMBA ALMAGRO KENETH ABEL","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("226","0504725839","HEREDIA CASA ALEX PAUL","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("227","0504868191","HERRERA REINOSO WILSON EFRAIN","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("228","1550038309","HUATATOCA ALVARADO BRYAN JAVIER","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("229","0503854325","IZA GARNICA JENNYFER DANAHE","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("230","0504078916","JORGE LLASHAG JEFFERSON DAVID","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("231","0504832668","MALLITASIG BEDON JOEL SEBASTIAN","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("232","1351852163","MARTINEZ SUAREZ KATHERIN JUDITH","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("233","0550628291","MONTENEGRO MORALES JEREMI MATEO","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("234","0550488233","MORALES GUANOLUISA KEVIN ALEXANDER","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("235","1755139357","MORENO CHUQUITARCO KEVIN ISMAEL","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("236","1725727844","MOSQUERA JARA SHIRLEY LIZETH","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("237","0504372079","MU?OZ CEPEDA YENNER ANDRES","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("238","1805482757","PALOMO GADVAY KEVIN JOSUE","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("239","0503095192","PAUCAR FUENTES CARLOS JAIR","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("240","0503271884","PEREZ CASERES CRISTOPHER JOEL","","","1","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("241","1753653151","PILAGUANO CAIZA JENNIFER KATHERINE","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("242","0504248444","PILATASIG GUILCASO GISSELA ABIGAIL","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("243","1752405009","QUISHPE QUINGA JOHN DAVID","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("244","1850596774","ROBAYO ALVAREZ DARIO ROLANDO","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("245","1752643252","ROMERO RAMOS GERALDINE VIVIANA","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("246","0550539522","RUIZ TUMBACO LEYDI NICOLE","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("247","0504431180","SANCHEZ LEMA ERICK RAFAEL","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("248","1728970060","SANCHEZ MARTINEZ BRYAN STIVEN","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("249","1727669432","SANGUANO GUALOTU?A ANTHONY FABRICIO","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("250","1723811145","TAIPICA?A PERALTA FERNANDO NICOLAS","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("251","1805167325","TANQUINA ARMENDARIZ FABRICIO ISRAEL","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("252","0550160063","TIGASI CHUGCHILAN TANIA LETICIA","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("253","0504842311","TIPANTU?A SASIG KEVIN XAVIER","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("254","1754504916","TORRES MONTEROS JOSUE SAMUEL","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("255","1805377783","TRUJILLO MENA BRYAN ALEXANDER","","","1","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("256","0550572036","VALLEJO ROMERO LESLIE NAYELI","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("257","0550252761","YANCHAPANTA AGUACUNCHI KATERIN ANABEL","","","2","DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("258","1725654873","AMAGUAYA TROYA ESTHER ELIZABETH","","","2","GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("259","0550431886","AREQUIPA PICHUCHO DONA LIBED","","","2","GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("260","0503839417","AYALA GUANINA JULIO AUGUSTO","","","1","GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("261","1753909355","CAMPA?A GOMEZ CAMILA PATRICIA","","","2","GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("262","0503883100","CASERES GALLARDO WILMER JOEL","","","2","GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("263","0504840612","CASTELLANO TRAVEZ KAREN NOEMI","","","1","GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("264","0550542955","CHALUISA ANTE JHON KEVIN","","","2","GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("265","0504237595","CHANGO IZA STALYN PATRICIO","","","2","GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("266","1726282088","CHICAIZA VITERI MAYCOL JOEL","","","2","GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("267","0550660146","CHIGUANO TUMBES PAUL GEOVANNY","","","1","GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("268","1755684444","CUEVA BUSTILLOS DEINY RUTH","","","2","GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("269","0504187147","DIAS TIGMASA CRISTIAN JAVIER","","","2","GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("270","0503846263","ESCOBAR PAEZ LUIS ARMANDO","","","2","GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("271","0504070673","GUANOLUISA MISE LUIS MARCELO","","","2","GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("272","1804353041","GUERRERO VALLE DIEGO PAUL","","","2","GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("273","0504141201","JACOME GRANJA LUIS GONZALO","","","2","GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("274","0550014542","LICTA MANZANO MARCO VINICIO","","","2","GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("275","0550137087","MALLITASIG CANDO VERONICA ELIZABETH","","","2","GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("276","1754054987","MORENO CHASIPANTA BRYAN STEVEN","","","1","GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("277","0504440538","NU?EZ RODRIGUEZ LEONELA FERNANDA","","","2","GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("278","0504450123","PANCHI GUISHCASHO EMELIN VIVIANA","","","2","GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("279","1251047559","PILALUMBO GUANOTU?A FERNANDO JOSE","","","2","GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("280","0550509046","PILATASIG ALMAGRO ESTIVEN ALEJANDRO","","","2","GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("281","0550175970","PILLO PILATASIG FLOR BELEN","","","2","GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("282","0503329088","QUINAPALLO VILCA KELLY JAZMIN","","","1","GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("283","1752121374","SALGADO GUAYRACUCHA BRITANY KERLY","","","2","GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("284","0504040783","SAMBACHE PARRA KENNY DANIEL","","","2","GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("285","0550475651","SANGUCHO QUISUPANGUI ITALO SEBASTIAN","","","2","GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("286","0504859646","TACO VARGAS DEBBIE DOMENICH","","","2","GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("287","0550614838","TOAPANTA PALLASCO MARLENE JADIRA","","","2","GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("288","0550056733","TOSCANO MOLINA EDIAN ISRAEL","","","2","GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("289","0550615025","VELA FREIRE ALEXIS DANIEL","","","2","GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("290","0550537153","VILLARROEL DEFAZ ISMAEL ALEJANDRO","","","2","GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("291","0504354036","ZALAMEA SARANGO JEFFERSON JOSE","","","1","GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("292","0502601735","CHUQUITARCO ANCHATU?A MILTON LEONIDAS","","","6","INFORM?TICA MENCI?N AN?LISIS D");
INSERT INTO usuario_estudiante VALUES("293","0503664013","ACURIO BRAVO JORDY EDUARDO","","","1","NT-DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("294","0504381161","AIMACA?A VIRACOCHA ALEX DARIO","","","1","NT-DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("295","0504039595","AMORES ACURIO LUIS FRANCEL","","","1","NT-DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("296","0550262232","CAIZA DIAZ ANGELA PATRICIA","","","1","NT-DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("297","0550149868","CALVA DIAZ ARIEL SEBASTIAN","","","1","NT-DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("298","0550656862","CHICAIZA VALVERDE HENRY PAUL","","","1","NT-DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("299","0503446726","CHUQUITARCO VILELA JOS? LUIS","","","1","NT-DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("300","0503855439","CONDOR CHANGO STALIN ISRAEL","","","1","NT-DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("301","0504438631","DE LACRUZ DE LA CRUZ JESSICA MARIBEL","","","1","NT-DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("302","0550113575","GUANOTU?A RUEDA JOHN HENRY","","","1","NT-DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("303","0504358821","INOJOSA ROMERO JENNIFER CRISTINA","","","1","NT-DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("304","0550612253","MU?OZ ROMERO JORDAN ELKIN","","","1","NT-DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("305","0503569345","NAVAS CHANCUSIG ANTONY STEVEEN","","","1","NT-DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("306","0503858987","PAREDES ILAQUICHE BYRON PATRICIO","","","1","NT-DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("307","0504822248","PRUNA ALAJO ANTHONY ALEXANDER","","","1","NT-DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("308","0504233222","RECALDE AMORES FABIAN ESTEBAN","","","1","NT-DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("309","0803769405","R?OS ROSAS EDUARDO GABRIEL","","","1","NT-DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("310","1752607208","TAPIA SALDARRIAGA ARIEL ALEXANDER","","","1","NT-DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("311","1850598432","VARGAS COLOMA ANGEL VINICIO","","","1","NT-DESARROLLO DE SOFTWARE");
INSERT INTO usuario_estudiante VALUES("312","1725818833","BENITES TOMALO OSCAR ANAEL","","","1","NT-DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("313","0503420325","BOHORQUEZ SISA WILLIAN STEVEN","","","1","NT-DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("314","0503960817","BONITO SALCEDO JIM MATEO","","","1","NT-DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("315","0502974280","ENRIQUEZ VILLAGOMEZ ARIEL ALEXANDER","","","1","NT-DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("316","0503841694","GUANOLUISA TAIPICA?A ANTONY ALEXANDER","","","1","NT-DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("317","0503589004","LESCANO PALANGO LENIN ALEXANDER","","","1","NT-DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("318","0502887854","MOSCOSO FAJARDO VICTOR ANDRES","","","1","NT-DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("319","0504102948","O?A CHARIGUAMAN DENIS PATRICIO","","","1","NT-DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("320","0550262265","PULLOTASIG CORMILLO PA?L ANDERSON","","","1","NT-DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("321","0550193866","REMACHE ARAQUE ALEX DAVID","","","1","NT-DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("322","1726810573","SANTAMARIA LE?N JUAN DIEGO","","","1","NT-DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("323","0550411888","TACO PANCHI ANTONY ANDRES","","","1","NT-DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("324","1850457746","VILLARREAL SANCHEZ FRANCISCO XAVIER","","","1","NT-DISE?O GRAFICO Y MULTIMEDIA");
INSERT INTO usuario_estudiante VALUES("325","1753665932","AGURTO JARRIN MATIAS ARIEL","","","1","NT-GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("326","0504611765","ALOMOTO GUAMANI ERIKA PRISCILA","","","1","NT-GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("327","0504444217","BRONCANO LEMA JEFFERSON DANIEL","","","1","NT-GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("328","0504757824","CALAMA CHUGCHILAN YOLANDA MARISOL","","","1","NT-GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("329","0504761271","CALO ALTASIG WILLIAN WLADIMIR","","","1","NT-GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("330","0550536403","CHANATASIG TOAPANTA EVELIN LISBETH","","","1","NT-GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("331","0550368807","CHECA SUAREZ KEVIN ALEXANDER","","","1","NT-GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("332","0503855454","CHICAIZA CONDOR CRISTOFER DAMIAN","","","1","NT-GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("333","0504813304","CHICAIZA Y?NEZ JEANINA ARACELY","","","1","NT-GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("334","0550186944","CHICAIZA O?A EVELYN ADRIANA","","","1","NT-GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("335","0550585319","CHILIQUINGA S?NCHEZ DUFFI LENIN","","","1","NT-GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("336","1752120012","CUASCOTA TOAPAXI JOHANNA ELIZABETH","","","1","NT-GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("337","0550711493","GUANOLUISA MACATO EVELYN MARIELA","","","1","NT-GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("338","0503216897","JACOME CERNA GUIDO WENCESLAO","","","1","NT-GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("339","2350962292","LUQUE BRAVO JONNATHAN JOSUE","","","1","NT-GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("340","2300354319","MENDOZA CEDE?O LISSETH MONSERRATE","","","1","NT-GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("341","0504297433","O?A CHANGOLUISA JONATHAN ALEXANDER","","","1","NT-GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("342","0550441174","PANCHI PANCHI MARLON STEEVEN","","","1","NT-GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("343","0504809740","PARRE?O BUSTILLOS MIRKA ALEXANDRA","","","1","NT-GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("344","0550648349","QUISHPE QUISPE HENRRY DANIEL","","","1","NT-GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("345","0550521066","QUISPE TENORIO STEVEN SAUL","","","1","NT-GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("346","0550633408","REINOSO HERRERA SELENA MARICELA","","","1","NT-GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("347","0550642060","VEGA CHUSIN RAUL PATRICIO","","","1","NT-GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("348","0550559900","VELASTEGUI CALAPAQUI KEVIN ALEXIS","","","1","NT-GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("349","0503128837","VILLAC?S CADENA STEFANY RENATA","","","1","NT-GASTRONOMIA");
INSERT INTO usuario_estudiante VALUES("350","0502669187","FLORES PASQUEL DAVID STEBAN","","","1","NT-MARKETING DIGITAL Y GESTION");
INSERT INTO usuario_estudiante VALUES("351","1726592825","GANCHALA CEVALLOS NAYELY PAOLA","","","1","NT-MARKETING DIGITAL Y GESTION");
INSERT INTO usuario_estudiante VALUES("352","0504164138","GUAMAN ROJAS WILSON MARCELO","","","1","NT-MARKETING DIGITAL Y GESTION");
INSERT INTO usuario_estudiante VALUES("353","0503206617","HERRERA TORO CARLOS PATRICIO","","","1","NT-MARKETING DIGITAL Y GESTION");
INSERT INTO usuario_estudiante VALUES("354","0550624878","IZA LLANO MARCO VINICIO","","","1","NT-MARKETING DIGITAL Y GESTION");
INSERT INTO usuario_estudiante VALUES("355","0504866153","MASAPANTA PARRA ANNDY JOEL","","","1","NT-MARKETING DIGITAL Y GESTION");
INSERT INTO usuario_estudiante VALUES("356","0502954761","PAZU?A PARRA GRACIELA DE LAS MERCEDES","","","1","NT-MARKETING DIGITAL Y GESTION");
INSERT INTO usuario_estudiante VALUES("357","2100072236","PROCEL CUENCA ROSA PATRICIA","","","1","NT-MARKETING DIGITAL Y GESTION");
INSERT INTO usuario_estudiante VALUES("358","0504005554","QUISHPE VELASCO MARLON JOSHUE","","","1","NT-MARKETING DIGITAL Y GESTION");
INSERT INTO usuario_estudiante VALUES("359","0504004276","SOPA SOPA SEGUNDO GERMAN","","","1","NT-MARKETING DIGITAL Y GESTION");
INSERT INTO usuario_estudiante VALUES("360","0550371850","YANCHAGUANO CHINGO LUIS HENRY","","","1","NT-MARKETING DIGITAL Y GESTION");
INSERT INTO usuario_estudiante VALUES("361","0503819500","ALMACHE RIVERA ANTHONY SANTIAGO","","","1","NT-SEGURIDAD E HIGIENE DEL TRA");
INSERT INTO usuario_estudiante VALUES("362","1761208881","BENJUMEA MONTALVO LEIDY ISABEL","","","1","NT-SEGURIDAD E HIGIENE DEL TRA");
INSERT INTO usuario_estudiante VALUES("363","0503341562","CAISA GUALAN CRISTIAN WILFRIDO","","","1","NT-SEGURIDAD E HIGIENE DEL TRA");
INSERT INTO usuario_estudiante VALUES("364","0502258726","CANGUI GUANOLUISA MIRIAN ESTELA","","","1","NT-SEGURIDAD E HIGIENE DEL TRA");
INSERT INTO usuario_estudiante VALUES("365","0550495808","CHANCUSIG POMA LESLY DANIELA","","","2","NT-SEGURIDAD E HIGIENE DEL TRA");
INSERT INTO usuario_estudiante VALUES("366","1728203843","CHASI MANOBANDA GRACE DALINDA","","","1","NT-SEGURIDAD E HIGIENE DEL TRA");
INSERT INTO usuario_estudiante VALUES("367","0503900409","CHICAIZA O?A JEFFERSON STALIN","","","1","NT-SEGURIDAD E HIGIENE DEL TRA");
INSERT INTO usuario_estudiante VALUES("368","0550459150","ESCOBAR LAICA BRYAN OMAR","","","1","NT-SEGURIDAD E HIGIENE DEL TRA");
INSERT INTO usuario_estudiante VALUES("369","0550190987","IZA O?A ALEXIS FERNANDO","","","2","NT-SEGURIDAD E HIGIENE DEL TRA");
INSERT INTO usuario_estudiante VALUES("370","0550697544","JACOME ZAPATA CAROLINA NICOL","","","1","NT-SEGURIDAD E HIGIENE DEL TRA");
INSERT INTO usuario_estudiante VALUES("371","1726669631","LOACHAMIN GUALLICHICO ADRIAN ALEXANDER","","","2","NT-SEGURIDAD E HIGIENE DEL TRA");
INSERT INTO usuario_estudiante VALUES("372","0550593495","LOPEZ JACHO JARET SEBASTIAN","","","2","NT-SEGURIDAD E HIGIENE DEL TRA");
INSERT INTO usuario_estudiante VALUES("373","1207568708","MURILLO MURILLO MIGUEL ?NGEL","","","1","NT-SEGURIDAD E HIGIENE DEL TRA");
INSERT INTO usuario_estudiante VALUES("374","0550420061","PADILLA ARIAS ALEX GABRIEL","","","1","NT-SEGURIDAD E HIGIENE DEL TRA");
INSERT INTO usuario_estudiante VALUES("375","0502453871","PANCHI MOLINA CRISTIAN MAURICIO","","","1","NT-SEGURIDAD E HIGIENE DEL TRA");
INSERT INTO usuario_estudiante VALUES("376","0550514095","PANCHI CHICAIZA ALEX DANILO","","","1","NT-SEGURIDAD E HIGIENE DEL TRA");
INSERT INTO usuario_estudiante VALUES("377","0550481451","PAUCAR BARBA BRYAN ANDRES","","","1","NT-SEGURIDAD E HIGIENE DEL TRA");
INSERT INTO usuario_estudiante VALUES("378","0550040620","PUMASUNTA VELASCO BRANDON WLADIMIR","","","1","NT-SEGURIDAD E HIGIENE DEL TRA");
INSERT INTO usuario_estudiante VALUES("379","0503997645","RENDON AVEIGA JENIFER VERONICA","","","1","NT-SEGURIDAD E HIGIENE DEL TRA");
INSERT INTO usuario_estudiante VALUES("380","0503494627","RONQUILLO MAZON RODRIGO JAVIER","","","1","NT-SEGURIDAD E HIGIENE DEL TRA");
INSERT INTO usuario_estudiante VALUES("381","0503077091","SALAZAR RUBIO PABLO DAVID","","","1","NT-SEGURIDAD E HIGIENE DEL TRA");
INSERT INTO usuario_estudiante VALUES("382","0952076222","SALMERON ZAMBRANO BRITNEY BRIGGITTE","","","1","NT-SEGURIDAD E HIGIENE DEL TRA");
INSERT INTO usuario_estudiante VALUES("383","0502465255","VELOZ PE?AHERRERA SEGUNDO FABIAN","","","1","NT-SEGURIDAD E HIGIENE DEL TRA");
INSERT INTO usuario_estudiante VALUES("384","0550529663","VILLAMARIN MOLINA ROOSEVELTH PATRICIO","","","1","NT-SEGURIDAD E HIGIENE DEL TRA");
INSERT INTO usuario_estudiante VALUES("385","0502752777","YAN?Z TELLO MARCOS DAMI?N","","","1","NT-SEGURIDAD E HIGIENE DEL TRA");
INSERT INTO usuario_estudiante VALUES("386","0502675838","ZAMBRANO ROMERO FREDDY ADAN","","","1","NT-SEGURIDAD E HIGIENE DEL TRA");
INSERT INTO usuario_estudiante VALUES("387","0503958365","AZOGUE POAQUIZA LUIS IVAN","","","1","NT-TECNOLOG?A SUPERIOR EN ADMI");
INSERT INTO usuario_estudiante VALUES("388","1726701954","BANDA PAZMI?O LAURA KATHERINE","","","1","NT-TECNOLOG?A SUPERIOR EN ADMI");
INSERT INTO usuario_estudiante VALUES("389","0504891185","BONITO RUBIO RONALD STALIN","","","1","NT-TECNOLOG?A SUPERIOR EN ADMI");
INSERT INTO usuario_estudiante VALUES("390","0503164220","CAICEDO MEDINA PAOLA FERNANDA","","","1","NT-TECNOLOG?A SUPERIOR EN ADMI");
INSERT INTO usuario_estudiante VALUES("391","0503968026","CAIZA CHUQUI MAR?A LUCRECIA","","","1","NT-TECNOLOG?A SUPERIOR EN ADMI");
INSERT INTO usuario_estudiante VALUES("392","0550466874","CAIZA PULLOTASIG LENI FERNANDO","","","1","NT-TECNOLOG?A SUPERIOR EN ADMI");
INSERT INTO usuario_estudiante VALUES("393","0503426371","CASA VILCA ALEXANDER SABASTIAN","","","1","NT-TECNOLOG?A SUPERIOR EN ADMI");
INSERT INTO usuario_estudiante VALUES("394","0550589113","CHANCHICOCHA TOASA DEISY GUADALUPE","","","1","NT-TECNOLOG?A SUPERIOR EN ADMI");
INSERT INTO usuario_estudiante VALUES("395","0502628464","CHICAIZA CHICAIZA MANUEL VINICIO","","","1","NT-TECNOLOG?A SUPERIOR EN ADMI");
INSERT INTO usuario_estudiante VALUES("396","0550295976","CHICAIZA TIPANTU?A JOSSELYN MISHELL","","","1","NT-TECNOLOG?A SUPERIOR EN ADMI");
INSERT INTO usuario_estudiante VALUES("397","0550722540","GUANOLUISA CANDO JUAN CARLOS","","","1","NT-TECNOLOG?A SUPERIOR EN ADMI");
INSERT INTO usuario_estudiante VALUES("398","2350764276","HIDALGO ANCHUNDIA ALLISSON PAOLA","","","2","NT-TECNOLOG?A SUPERIOR EN ADMI");
INSERT INTO usuario_estudiante VALUES("399","0502963374","J?COME RUBIO M?NICA PATRICIA","","","1","NT-TECNOLOG?A SUPERIOR EN ADMI");
INSERT INTO usuario_estudiante VALUES("400","0550166599","JAYA ALPUSIG RICHARD ISMAEL","","","1","NT-TECNOLOG?A SUPERIOR EN ADMI");
INSERT INTO usuario_estudiante VALUES("401","0503642746","PANCHI SARABIA JOSELINE PAOLA","","","1","NT-TECNOLOG?A SUPERIOR EN ADMI");
INSERT INTO usuario_estudiante VALUES("402","0504873514","PANCHI PANCHI IV?N RENATO","","","1","NT-TECNOLOG?A SUPERIOR EN ADMI");
INSERT INTO usuario_estudiante VALUES("403","1351629470","RAMIREZ BURGOS MILTON BENARDO","","","1","NT-TECNOLOG?A SUPERIOR EN ADMI");
INSERT INTO usuario_estudiante VALUES("404","1751542174","RAMIREZ RAMIREZ JULY ELIZABETH","","","2","NT-TECNOLOG?A SUPERIOR EN ADMI");
INSERT INTO usuario_estudiante VALUES("405","0503999468","SALAZAR RUBIO STALIN ANDRES","","","1","NT-TECNOLOG?A SUPERIOR EN ADMI");
INSERT INTO usuario_estudiante VALUES("406","1753623642","SEGOVIA CRUZ CAMILA NICOLE","","","1","NT-TECNOLOG?A SUPERIOR EN ADMI");
INSERT INTO usuario_estudiante VALUES("407","0504253816","TOAQUIZA GUANOTU?A EDISON JAVIER","","","1","NT-TECNOLOG?A SUPERIOR EN ADMI");
INSERT INTO usuario_estudiante VALUES("408","1726660937","TOMALO CHASI LESLY PAMELA","","","1","NT-TECNOLOG?A SUPERIOR EN ADMI");
INSERT INTO usuario_estudiante VALUES("409","2150292379","VARGAS PROCEL LUIS JETLI","","","1","NT-TECNOLOG?A SUPERIOR EN ADMI");
INSERT INTO usuario_estudiante VALUES("410","0503739427","VELASCO YUGCHA JHOSELYN GISSELA","","","1","NT-TECNOLOG?A SUPERIOR EN ADMI");
INSERT INTO usuario_estudiante VALUES("411","0504239989","YANCHAGUANO LLUMIQUINGA FABIAN FREDDY","","","1","NT-TECNOLOG?A SUPERIOR EN ADMI");
INSERT INTO usuario_estudiante VALUES("412","2300235666","ZAMBONINO FAJARDO CRISTIAN ALEJANDRO","","","1","NT-TECNOLOG?A SUPERIOR EN ADMI");
INSERT INTO usuario_estudiante VALUES("413","0504169020","ALLAUCA SEVILLA MAYURI ESTEFANIA","","","1","NT-TECNOLOG?A SUPERIOR EN CONT");
INSERT INTO usuario_estudiante VALUES("414","1401141799","AMPUSH PITIUR JHAJAIRA MARY","","","1","NT-TECNOLOG?A SUPERIOR EN CONT");
INSERT INTO usuario_estudiante VALUES("415","0550489348","BUSTILLOS PARRA MONSERATH BELEN","","","1","NT-TECNOLOG?A SUPERIOR EN CONT");
INSERT INTO usuario_estudiante VALUES("416","1727938357","CAIZA OLIVO ERICKA JOHANNA","","","1","NT-TECNOLOG?A SUPERIOR EN CONT");
INSERT INTO usuario_estudiante VALUES("417","0504161845","CAJAMARCA CAJAMARCA EVELYN RAQUEL","","","1","NT-TECNOLOG?A SUPERIOR EN CONT");
INSERT INTO usuario_estudiante VALUES("418","0502990369","CALDERON BONILLA ANA CAROLINA","","","1","NT-TECNOLOG?A SUPERIOR EN CONT");
INSERT INTO usuario_estudiante VALUES("419","0550572697","CASNANZUELA BA?O ANGELY TATIANA","","","1","NT-TECNOLOG?A SUPERIOR EN CONT");
INSERT INTO usuario_estudiante VALUES("420","0550062186","CAYO CHAC?N KATERIN DAYANA","","","1","NT-TECNOLOG?A SUPERIOR EN CONT");
INSERT INTO usuario_estudiante VALUES("421","0550006795","CHACHAPOYA PANCHI JESSICA LIZETH","","","1","NT-TECNOLOG?A SUPERIOR EN CONT");
INSERT INTO usuario_estudiante VALUES("422","0503169013","CHICAIZA CHASI M?NICA ALEXANDRA","","","1","NT-TECNOLOG?A SUPERIOR EN CONT");
INSERT INTO usuario_estudiante VALUES("423","0550523666","CHONATA VILLACIS KATHERINE JOHANNA","","","1","NT-TECNOLOG?A SUPERIOR EN CONT");
INSERT INTO usuario_estudiante VALUES("424","1805530043","CHUQUI GUANOTU?A JENNIFER ANABEL","","","1","NT-TECNOLOG?A SUPERIOR EN CONT");
INSERT INTO usuario_estudiante VALUES("425","1251027700","GUALA O?A LUIS DANIEL","","","1","NT-TECNOLOG?A SUPERIOR EN CONT");
INSERT INTO usuario_estudiante VALUES("426","0504783473","HUILCAMAIGUA TOAPANTA DAYANA LIZBETH","","","2","NT-TECNOLOG?A SUPERIOR EN CONT");
INSERT INTO usuario_estudiante VALUES("427","0504275280","LLAMBA JIMENEZ JHON DEYVID","","","1","NT-TECNOLOG?A SUPERIOR EN CONT");
INSERT INTO usuario_estudiante VALUES("428","0550682322","PASTU?A UMAJINGA MONICA BEATRIZ","","","2","NT-TECNOLOG?A SUPERIOR EN CONT");
INSERT INTO usuario_estudiante VALUES("429","0503665911","PERA ROJAS CRISTINA VER?NICA","","","1","NT-TECNOLOG?A SUPERIOR EN CONT");
INSERT INTO usuario_estudiante VALUES("430","0550461313","PILATASIG CHICAIZA JONATHAN DAVID","","","1","NT-TECNOLOG?A SUPERIOR EN CONT");
INSERT INTO usuario_estudiante VALUES("431","0957205149","QUIROZ DELGADO JANDY OMAR","","","2","NT-TECNOLOG?A SUPERIOR EN CONT");
INSERT INTO usuario_estudiante VALUES("432","0550520019","REINOSO LITA KEVIN ALEXANDER","","","1","NT-TECNOLOG?A SUPERIOR EN CONT");
INSERT INTO usuario_estudiante VALUES("433","0503340606","SANGUCHO ANGULO ESTHELA MARGOTH","","","1","NT-TECNOLOG?A SUPERIOR EN CONT");
INSERT INTO usuario_estudiante VALUES("434","0502973357","SHINGON GUAMUSHIG EDWIN ROBERTO","","","1","NT-TECNOLOG?A SUPERIOR EN CONT");
INSERT INTO usuario_estudiante VALUES("435","0550374805","TOAPANTA YAULI YADIRA MISHELL","","","1","NT-TECNOLOG?A SUPERIOR EN CONT");
INSERT INTO usuario_estudiante VALUES("436","0550679906","TOASA QUINGALUISA PAULINA CECIBEL","","","1","NT-TECNOLOG?A SUPERIOR EN CONT");
INSERT INTO usuario_estudiante VALUES("437","0502517436","VALVERDE VILLAMARIN MAGALY DEL ROCIO","","","1","NT-TECNOLOG?A SUPERIOR EN CONT");
INSERT INTO usuario_estudiante VALUES("438","0550259063","VIZCAINO ZURITA WENDALINA CAROLINA","","","1","NT-TECNOLOG?A SUPERIOR EN CONT");
INSERT INTO usuario_estudiante VALUES("439","0503737017","ARMAS DEFAZ SEGUNDO ISAIAS","","","2","SEGURIDAD E HIGIENE DEL TRABAJ");
INSERT INTO usuario_estudiante VALUES("440","0504640541","AYNUCA GRAMAL DANIELA CAROLYN","","","2","SEGURIDAD E HIGIENE DEL TRABAJ");
INSERT INTO usuario_estudiante VALUES("441","0504046079","BEDON TACO ALEXANDER NICOLAY","","","2","SEGURIDAD E HIGIENE DEL TRABAJ");
INSERT INTO usuario_estudiante VALUES("442","0550480099","CAJAMARCA AIMACA?A JEFFERSON ALEJANDRO","","","2","SEGURIDAD E HIGIENE DEL TRABAJ");
INSERT INTO usuario_estudiante VALUES("443","0502949977","CEPEDA ARAUJO DORIAN JAMILET","","","2","SEGURIDAD E HIGIENE DEL TRABAJ");
INSERT INTO usuario_estudiante VALUES("444","1728976471","CEVALLOS PEREZ MATHIAS JHOEL","","","2","SEGURIDAD E HIGIENE DEL TRABAJ");
INSERT INTO usuario_estudiante VALUES("445","0503875593","CHANCHICOCHA VALVERDE JENNY ANABEL","","","2","SEGURIDAD E HIGIENE DEL TRABAJ");
INSERT INTO usuario_estudiante VALUES("446","0503802860","CHICAIZA MOLINA ANA MERCEDES","","","2","SEGURIDAD E HIGIENE DEL TRABAJ");
INSERT INTO usuario_estudiante VALUES("447","0550074165","CUNUHAY AYALA CRISTIAN PAUL","","","2","SEGURIDAD E HIGIENE DEL TRABAJ");
INSERT INTO usuario_estudiante VALUES("448","0550005524","ESPIN MOREJON ANTONY FABIAN","","","2","SEGURIDAD E HIGIENE DEL TRABAJ");
INSERT INTO usuario_estudiante VALUES("449","0502620750","ESPINEL CHICAISA BRYAN GABRIEL","","","2","SEGURIDAD E HIGIENE DEL TRABAJ");
INSERT INTO usuario_estudiante VALUES("450","0503474843","ESQUIVEL PROA?O JORGE FRANCISCO","","","2","SEGURIDAD E HIGIENE DEL TRABAJ");
INSERT INTO usuario_estudiante VALUES("451","1727476010","MOREIRA TOAPANTA HEIDI DOMENICA","","","2","SEGURIDAD E HIGIENE DEL TRABAJ");
INSERT INTO usuario_estudiante VALUES("452","1728201169","MORETA TOAPANTA ADRIANA SARAI","","","2","SEGURIDAD E HIGIENE DEL TRABAJ");
INSERT INTO usuario_estudiante VALUES("453","1716376171","ORTIZ VELOSO JORGE ANIBAL","","","2","SEGURIDAD E HIGIENE DEL TRABAJ");
INSERT INTO usuario_estudiante VALUES("454","1753642378","ORTIZ MUNIVE GABRIEL MATEO","","","2","SEGURIDAD E HIGIENE DEL TRABAJ");
INSERT INTO usuario_estudiante VALUES("455","0550027320","PAREDES MAYANZHA BRYAN PAUL","","","2","SEGURIDAD E HIGIENE DEL TRABAJ");
INSERT INTO usuario_estudiante VALUES("456","0503844508","PEREZ DE LA CRUZ FREDDY RIGOBERTO","","","2","SEGURIDAD E HIGIENE DEL TRABAJ");
INSERT INTO usuario_estudiante VALUES("457","0503870305","PICHUCHO TANDALLA JEFFERSON ADRIAN","","","2","SEGURIDAD E HIGIENE DEL TRABAJ");
INSERT INTO usuario_estudiante VALUES("458","1003953971","ROSERO BASTIDAS MILTON FRANCISCO","","","2","SEGURIDAD E HIGIENE DEL TRABAJ");
INSERT INTO usuario_estudiante VALUES("459","1726282104","SANCHEZ CUENCA CRISTHIAN SANTIAGO","","","2","SEGURIDAD E HIGIENE DEL TRABAJ");
INSERT INTO usuario_estudiante VALUES("460","0550261242","SANGOPANTA CHILUISA JHOANNA BELEN","","","2","SEGURIDAD E HIGIENE DEL TRABAJ");
INSERT INTO usuario_estudiante VALUES("461","0503878035","SANTO GALLO NELSON RAFAEL","","","2","SEGURIDAD E HIGIENE DEL TRABAJ");
INSERT INTO usuario_estudiante VALUES("462","1728419514","SEGOVIA BAUTISTA ALISSON VIVIANA","","","2","SEGURIDAD E HIGIENE DEL TRABAJ");
INSERT INTO usuario_estudiante VALUES("463","0550492847","TOAQUIZA TARCO MARIA JOSE","","","2","SEGURIDAD E HIGIENE DEL TRABAJ");
INSERT INTO usuario_estudiante VALUES("464","0550538839","UGSHA VEGA CRISTIAN GEOVANI","","","2","SEGURIDAD E HIGIENE DEL TRABAJ");
INSERT INTO usuario_estudiante VALUES("465","0503485872","YEPEZ VIRACOCHA WALTER WLADIMIR","","","2","SEGURIDAD E HIGIENE DEL TRABAJ");
INSERT INTO usuario_estudiante VALUES("466","0504783119","ZAPATA ANDRANGO JHOSTTIN PAUL","","","2","SEGURIDAD E HIGIENE DEL TRABAJ");
INSERT INTO usuario_estudiante VALUES("467","1726848151","QUILLUPANGUI CONTERON RAQUEL ABIGAIL","","","6","TECNOLOG?A EN ADMINISTRACI?N D");
INSERT INTO usuario_estudiante VALUES("468","1309479127","ACEBO PITA HEIDY JUDITH","","","2","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("469","0550145569","BANDA JACOME PABLO ANDRES","","","2","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("470","0550462998","CAISAGUANO VARGAS JOSELYN LISBETH","","","2","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("471","0504162835","CAJAMARCA CHICAIZA JEISON ADRIAN","","","2","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("472","0503854036","CANGUI GUALOTO ANTONY ISRAEL","","","2","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("473","0550730360","CASA CASA MAYRA ALEXANDRA","","","2","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("474","0550702146","CAYO SHUNTA MAYRA CRISTINA","","","2","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("475","1728043546","CHICAIZA CRIOLLO ESTEFANY NICOL","","","2","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("476","0503691123","CHILIQUINGA TUMBAICO MADELEINE LIZBETH","","","2","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("477","0550666374","CHILUISA ANTE ANA MARIBEL","","","2","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("478","0550277701","CHUGCHILAN CHAVEZ JHENNY PAOLA","","","2","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("479","1729221612","CORRAL RIOS EMILY DANIELA","","","2","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("480","0504214172","CRIOLLO CASILLAS JENNIFER JASMIN","","","2","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("481","0503981797","CURAY CURAY JUAN GABRIEL","","","2","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("482","1728057884","GUAMAN OLIVO TANIA PAMELA","","","2","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("483","0550478093","LASINQUIZA LAICA KATHERIN YESSENIA","","","2","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("484","1251365597","LICINTU?A CHIMBORAZO GLADYS MARIBEL","","","2","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("485","0550333314","LLUGSA REA MARGORI BIVIANA","","","2","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("486","1727967257","LUGMA?A GUACHAMIN BRYAN PATRICIO","","","2","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("487","0550572903","MALDONADO CHASILUISA VERONICA MARIBEL","","","2","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("488","0504165655","MILLINGALLI TIPANTU?A IRENE LISBETH","","","2","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("489","0504178229","MILLINGALLI PILLIZA JESSICA MARGOTH","","","2","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("490","0504204835","PALLO PALLO KARINA MARIBEL","","","2","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("491","0504777137","PILAGUANO PILAGUANO MARCO GEOVANNY","","","2","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("492","0504185778","PI?ALUISA ACU?A CAROL KATIANA","","","2","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("493","0504048828","PULLOTASIG PUMASHUNTA LUIS MARCELO","","","2","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("494","0504359274","PULLOTASIG AREQUIPA EDWIN JAVIER","","","2","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("495","0504341397","QUIMBITA HIDALGO ANGIE DAYANA","","","2","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("496","1724128473","SALAZAR ZAPATA AZUCENA PAOLA","","","2","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("497","2100693965","SALAZAR JIMBO SANDRA CAROLINA","","","2","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("498","1850884857","SAMPEDRO MOPOSITA CYNTHIA LIZBETH","","","2","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("499","0550228241","SANCHEZ ANALUISA YESENIA ESTEFANIA","","","2","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("500","0550445514","SINGAUCHO TARCO JENIFER AYME","","","2","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("501","0550612998","TELLO CENTENO ANGELICA DAYANA","","","2","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("502","0550470488","TOAPANTA YUGCHA EVELYN DAYANA","","","2","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("503","1725425522","VELVA VELVA CRISTIAN JUAN","","","2","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("504","0503783748","YAULI MARTINEZ EVELYN ANGELICA","","","2","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("505","0504607599","YUGSI YUGSI LUIS ROBERTO","","","2","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("506","0550208110","ANGUISACA AREQUIPA ADRIANA BELEN","","","3","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("507","0605644392","ARANA PUCHA JESSENIA LISETH","","","3","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("508","1753885399","BA?O CANDO LUIS GUSTAVO","","","3","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("509","0504212598","CATOTA TIPAN NADIA SULAY","","","3","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("510","0503959207","CHICAIZA TANDALLA ERICK JOEL","","","3","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("511","0504003740","CHILUIZA UNAPUCHA JAIME ISRAEL","","","3","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("512","1805066824","CHILUIZA CAIZA BELGICA MARITZA","","","3","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("513","0105897813","CONSTANTE VELEZ RODNY ALEXANDER","","","3","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("514","0550709091","CRIOLLO ZUMBA MARLON JAVIER","","","3","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("515","0550124911","ESPINOZA TOAPANTA DANIELA ESTEFANIA","","","3","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("516","0503803546","GUAMAN GUAMAN ENMA JAKELINE","","","3","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("517","1729461531","GUANANGA TOCTAQUIZA LORENA ALEXANDRA","","","3","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("518","0504731928","IZA ORTIZ MIRYAM JAQUELINE","","","3","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("519","0550139299","LANDA QUIMBITA STEEVEN DANILO","","","3","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("520","0550621445","LASLUISA ALMACHI MARIELA NATALY","","","3","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("521","0503801359","LICTO CRESPO BRYAN ALEXANDER","","","3","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("522","1753185923","LOZA CELA DENISSE ADRIANA","","","3","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("523","1718239575","LOZANO GAD?AY MARIA FERNANDA","","","3","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("524","1755651682","MINDA BENALCAZAR JADIRA ESPERANZA","","","3","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("525","0954904256","MORAN QUIJIJE MILENA BEATRIZ","","","3","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("526","0504793621","MORENO MOLINA NASHELY GEOMAYRA","","","3","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("527","1722129259","MURILLO ZAMORA MONICA PATRICIA","","","3","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("528","1754897682","PACHACAMA LOACHAMIN GISSELA NICOL","","","3","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("529","0504589201","PALANGO CHACHA JEFFERSON JAVIER","","","3","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("530","0504769886","PALANGO CHACHA JESSICA LISETH","","","3","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("531","0503341596","PANCHI CANGUI BETTY ALEXANDRA","","","3","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("532","0504421892","QUEVEDO TAIPE BRYAN XAVIER","","","3","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("533","1726891821","QUINATOA GUATO VIVIANA PAOLA","","","3","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("534","0503974933","RIVERA TAPIA ALISSON MIREYA","","","3","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("535","0503590549","TIGSE CHUGCHILAN NELLY AMPARO","","","3","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("536","0504275660","TOAPANTA LEMA ANDREA BELEN","","","3","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("537","0550414080","TOAQUIZA PUCO JOSELYN FERNANDA","","","3","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("538","0550467948","TOAQUIZA CUCHIPE NELLY MISHELL","","","3","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("539","0550526669","VALENCIA HIDALGO GISSELA ANAHY","","","3","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("540","1726390147","VELASCO PANCHI ESTALIN JAVIER","","","3","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("541","0504248642","ZURITA YANEZ DEYSI ABIGAIL","","","3","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("542","0503401044","ABRAJAN ARIAS SILVIA PATRICIA","","","4","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("543","0504384124","ACHOTE RIOS MONICA KATERINE","","","4","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("544","1729451672","ARIAS COLLAGUAZO RANDY HEDLY","","","4","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("545","0503818411","BA?O PASTU?A NANDO WIDINSON","","","4","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("546","0504076647","BELTRAN VACA ERIKA PAOLA","","","4","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("547","1724043003","CALAPI?A NORO?A ANDRES SEBASTIAN","","","4","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("548","0504025057","CASTRO ORTEGA JONATHAN STALYN","","","4","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("549","1722648712","CHICAIZA QUISHPE STALIN JAVIER","","","4","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("550","1724362924","CHICAIZA GUANGAJE MARIA HERMELINDA","","","4","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("551","0550638365","CHUQUI CHANGOLUISA JUAN PABLO","","","4","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("552","0503902231","CUMBAJIN CHILUIZA ADRIANA MARISOL","","","4","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("553","0503801763","GALLARDO CANDELEJO MARCO VINICIO","","","4","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("554","0504275934","GUANOTASIG PILLIZA FREDDY ANDRES","","","4","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("555","0550439905","GUILCAMAIGUA COBA MICHAEL GABRIEL","","","4","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("556","0504428046","HERRERA MORENO KARINA ALEXANDRA","","","4","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("557","0501771646","ITURRALDE BARRIGA ROSA MERCEDES","","","4","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("558","0503783458","L?PEZ BARREROS MARILYN VANEZA","","","4","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("559","0550027908","O?A CHICAIZA KATHERINE LISETH","","","4","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("560","1725607012","O?A PILCO JENNIFER ALEXANDRA","","","4","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("561","1755606801","PATI?O SALAZAR ALISSON NICOLE","","","4","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("562","1727950626","PILICITA CHACHA ANTHONY JOEL","","","4","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("563","0550056709","QUINAPALLO NASEVILLA JESSICA MIREYA","","","4","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("564","0504047770","QUINATOA PUCO KARLA SOFIA","","","4","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("565","0504134644","QUISPE TONATO DEISY LIZETH","","","4","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("566","0550616049","SACATORO TOAQUIZA XIMENA DE LOS ANGELES","","","4","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("567","1722408364","TACURI ARCOS ANA LIZBETH","","","4","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("568","1752280212","TANDALLA TOAPANTA NATHALY NICOLE","","","4","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("569","1754454542","TORRES GALVAN JULIANA KATHERINE","","","4","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("570","0504176439","UGSHA UGSHA BRANDON OMAR","","","4","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("571","0504217365","VEGA TRAVEZ ERIKA JANETH","","","4","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("572","0550401756","YANEZ AIMACA?A JOSSELYN LISBETH","","","4","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("573","1721969499","YANEZ VALENCIA KATHERINE ELIZABETH","","","4","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("574","1754894366","YUPANGUI LLUGCHA KATHERIN MARISOL","","","4","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("575","1723654180","ALBUJA MONTERO ANAIS NOEMI","","","5","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("576","0550665749","ALMACHI CHICAIZA JOSELYN JHOMAYRA","","","5","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("577","1756656474","AMAGUA?A VARGAS SAMAR YASMIN","","","5","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("578","0504427709","AREQUIPA JIMENEZ CIOMARA DOLORES","","","5","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("579","0550146716","BELTRAN HERRERA CARLA PAMELA","","","5","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("580","0550417976","CADENA JEREZ GEORGETH CAROLINA","","","5","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("581","0550661391","CATOTA TOAPANTA GLORIA LISETH","","","5","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("582","1850432574","DIAZ SANTAFE JOHANNA LIZBETH","","","5","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("583","0804605475","ESTEPA ANGULO HEIDY MILENA","","","5","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("584","1756187538","GARCES GUTIERREZ SKARLAY ANA","","","5","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("585","0502944507","GRADOS ANCHUNDIA ALVIN STEVEN","","","5","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("586","0503758716","GUANOLUISA QUIMBITA BRILLITH ALEXANDRA","","","5","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("587","0504354515","IZA LEMA MARY GUADALUPE","","","5","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("588","0550248264","IZA CHUQUILLA TATIANA ELIZABETH","","","5","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("589","0550484919","MILLINGALLE SIMBA LISBETH ALEXANDRA","","","5","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("590","0504248618","PILLIZA CAIZA EVELYN TATIANA","","","5","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("591","0504028507","PINTA PALLO VIVIANA MARIBEL","","","5","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("592","1751910108","PULLOTASIG CORMILLO KARINA PILAR","","","5","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("593","0503508236","QUINATOA VILCA EDWIN RODRIGO","","","5","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("594","0504437203","SANGUCHO SANGUCHO BLANCA YOLANDA","","","5","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("595","0550207971","SANGUCHO ABATA DIEGO ALDAIR","","","5","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("596","1501171209","TAPUY CHIMBO ANDREA XIMENA","","","5","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("597","0504325655","TIPAN D?AS MAR?A FERNANDA","","","5","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("598","0503773491","TITUA?A MENA FATIMA DEL PILAR","","","5","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("599","0550616569","VALENCIA SINGAUCHO ROXANA ELIZABETH","","","5","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("600","0503844946","VARGAS FLORES JOHANA ARACELI","","","5","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("601","0504295924","VEGA CEPEDA MELISA OFELIA","","","5","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("602","0504324013","VILLAVICENCIO ROMERO KAREN ELIZABETH","","","5","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("603","0502880461","YUGSI SALAZAR GEOVANNY ALEXIS","","","5","TECNOLOG?A SUPERIOR EN ADMINIS");
INSERT INTO usuario_estudiante VALUES("604","0550506463","ALARCON VILLACIS TATIANA ABIGAIL","","","2","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("605","0504643164","AZOGUE BAUTISTA EVELYN ESTEFANIA","","","2","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("606","0550206619","CAILLAGUA FONSECA GUILLERMO ANTONIO","","","2","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("607","0503808016","CAISAGUANO HURTADO EDWAR EFREN","","","2","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("608","0504164492","CASTILLO CURICHO JOSELYN IRENE","","","2","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("609","1756093355","CHACHAPOYA PINTO KIMBERLY POLETH","","","2","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("610","0550053045","CHASI ROCANA MILTON JOEL","","","2","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("611","0550690093","CHICAIZA PILATASIG JESSICA PAOLA","","","2","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("612","0504114547","CHILUISA MENA KATHERINE LISETH","","","2","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("613","0504216417","CUYO TUMBES JOSSY PAOLA","","","2","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("614","0550123632","FLORES IZA MARIA CELENE","","","2","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("615","0502508310","GONZALEZ RAMIREZ CECILIA VANESSA","","","2","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("616","0550175509","GUANOLUISA CHANCUSIG CARLA ISABEL","","","2","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("617","0202266201","GUILLIN BA?OS JOHANA ANDREINA","","","2","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("618","0550360507","HERRERA NARANJO JOSELYN PAMELA","","","2","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("619","1753795598","ILAQUICHE DIAZ ANA GABRIELA","","","2","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("620","0504788050","IZA GUAYRACUCHA KEVIN ALEXIS","","","2","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("621","0550166698","JAYA JAYA JOSELIN PAMELA","","","2","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("622","0550719512","LAGLA CHICAIZA BRIGITH ANABEL","","","2","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("623","0550040687","LLUMIQUINGA LAMINGO JESSENIA MARIBEL","","","2","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("624","0503487480","MAZA GUANOLUISA KERLLY MAYBRIHT","","","2","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("625","0504797333","MENA MARTINEZ JEANELA MISHEL","","","2","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("626","0550598403","PASTE LLANGO NELLY ROCIO","","","2","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("627","1727683391","PAUCAR CHALCO KAREN LIZBETH","","","2","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("628","0550542468","PICHUCHO YANCHATIPAN JENNIFER KATHERINE","","","2","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("629","1004270235","QUIMBIAMBA ANDRANGO DAYVI SANTIAGO","","","2","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("630","0504249640","SACATORO MASABANDA EVELYN MELISA","","","2","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("631","1728910280","SALINAS PE?A DAVID ESTUARD","","","2","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("632","0550362198","SANCHEZ PUENTE SANDRA PAULINA","","","2","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("633","0504836230","SUAREZ TRAVEZ ANDREA MISHELL","","","2","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("634","0550270243","TIPANGUANO LOPEZ LISBETH JAQUELINE","","","2","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("635","0504641424","TOAPANTA QUINATOA ADRIANA GISSELLA","","","2","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("636","0503818858","TOCTAGUANO TENELEMA JHOSELY HAYDE","","","2","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("637","0503656043","TORRES GUERRERO GERARDO SEBASTIAN","","","2","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("638","0550160832","TUQUERES FUEREZ YULY DAYANA","","","2","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("639","0502666415","VARGAS IZA ROSA ANA","","","2","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("640","0504607250","VELASCO SILVA EVELYN MAYTE","","","2","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("641","0504759853","ZAPATA MOLINA ERIKA ESTEFANIA","","","2","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("642","0450090428","CAICEDO DELGADO ARACELLY JANETH","","","3","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("643","1250680830","CAMPA?A TOSCANO JEFFERSON JOEL","","","3","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("644","0503542524","CORO CASILLAS EVELIN LIZBETH","","","3","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("645","0550318000","CUCHIPARTE ENRIQUEZ VILMA KARINA","","","3","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("646","0550031744","ESPINOSA VILLAMARIN MICAELA STEFANY","","","3","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("647","0502869340","FREIRE VILLALBA RICARDO ANTONIO","","","3","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("648","0502733306","IZA NEGRETE BLANCA LUZMILA","","","3","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("649","0503583031","LUCERO BENAVIDES DIANA MARIBEL","","","3","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("650","0550297402","MAMARANDI QUISHPE ANAHI LISBETH","","","3","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("651","1726326018","MORALES MERA YESENIA ISAIRA","","","3","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("652","0503857138","PASTO SISA ROCIO ELIZABETH","","","3","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("653","0550277313","PULLUTALLI MA?AY JOSELIN BELEN","","","3","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("654","1726167271","QUIMBITA GUILCASO MISHELL ELIZABETH","","","3","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("655","0550029011","QUINATOA CENTENO MISHELL CRISTINA","","","3","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("656","0503658858","QUISHPE YASIG MARIA FERNANDA","","","3","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("657","0504555178","RODRIGUEZ PRUNA JOSSELYN JOMAIRA","","","3","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("658","0503429029","TAPIA GALLARDO JENNIFER CATALINA","","","3","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("659","0504613464","TOAPANTA SALAZAR SAYRA MONICA","","","3","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("660","1753089901","TUTILLO QUIMBIULCO JACOB ISAIAS","","","3","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("661","1315647550","VALVERDE ZAMBRANO DIEGO ALEJANDRO","","","3","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("662","0502898174","VEGA TOAQUIZA MARIA OFELIA","","","3","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("663","0550509954","ALARCON VILLACIS ANGIE NICOLE","","","4","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("664","0504146887","AYALA RAURA TANIA LIZBETH","","","4","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("665","0504891565","AYALA MASABANDA MAYRA LILIANA","","","4","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("666","0504469255","BUSTILLOS MURILLO MARLON ARIEL","","","4","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("667","0504640376","CAIZA TIBAN JOSHELYN LISBETH","","","4","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("668","0550471114","CANDO TIPANLUISA LEIDY GABRIELA","","","4","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("669","1600710048","CANDO TAPIA WENDY NARGELY","","","4","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("670","1850576537","CAYAMBE CUNALATA ROSA ABIGAIL","","","4","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("671","0550647051","CAYANCELA TUTIN NORY LISBETH","","","4","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("672","0504860057","CEVALLOS CALVOPI?A EULALIA ABIGAIL","","","4","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("673","0550191340","CHANGO LAGLA JHADIRA NATALY","","","4","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("674","1550013567","CHILIQUINGA GUATO ERIKA TAMARA","","","4","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("675","0550666390","CHILUISA ANTE WILMER SANTIAGO","","","4","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("676","0503772659","CUYO CHUGCHILAN HILDA MARISOL","","","4","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("677","0550312607","DEFAZ ALMACHE DEYSI ESTEFANIA","","","4","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("678","0504850504","ESPINOSA MORENO LISBETH MELISA","","","4","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("679","0550606297","JACHO UNAUCHO MIRIAN LUZMILA","","","4","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("680","0504713447","LLANO VIRACOCHA ESTEFANIA SELENA","","","4","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("681","0504002171","LLOACANA VILCA WELLINGTON FERNANDO","","","4","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("682","0503577983","MENA FIERRO PAMELA ELIZABETH","","","4","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("683","0550238133","MINTA CAIZA MELIDA MARIELA","","","4","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("684","0503959306","MOLINA SIMBA?A GABRIELA FERNANDA","","","4","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("685","0550553267","MUSO CASA DIANA CAROLINA","","","4","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("686","0550593727","PUMASHUNTA CAIZA ERIKA JESE?A","","","4","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("687","0504605411","QUILLIGANA CEVALLOS DANIELA LISBETH","","","4","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("688","0550143911","ROBALINO BARRERA KERLYN DAYANA","","","4","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("689","0550174999","TAPIA TAPIA MARTHA BELEN","","","4","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("690","0550231047","TIPAN TOCTAGUANO KARLA NICOL","","","4","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("691","0550683940","TOAPANTA TOAPAXI CRISTIAN ALEXANDER","","","4","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("692","0504849621","YANCHAGUANO GUANOLUISA MARILYN AZUCENA","","","4","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("693","0504664517","ACOSTA PULAMARIN JENNIFFER LISSETH","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("694","0503841231","AIMACA?A MENDOZA GRACE ADRIANA","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("695","0550455406","ALMAGRO VELASQUE YADIRA ELIZABETH","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("696","0504215120","ALOMOTO GUANGAJE TANIA LISBETH","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("697","0503063232","ANDRANGO BEGAY YARBIC ANASHELY","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("698","0502926454","ARANA LEMA MADELYN PAOLA","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("699","1251099683","AZOGUE TIGSELEMA MELANIA MARISOL","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("700","0502777238","CADENA SIMBA?A MAYRA AZUCENA","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("701","0504176678","CAISA GAVILEMA ERIKA LISBETH","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("702","0504343963","CAIZA CHUSETE ERIKA LILIANA","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("703","0550530802","CAIZA CAIZA AMANDA LEONELA","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("704","0550239297","CHILUISA CHICAIZA BLANCA ALICIA","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("705","0550036271","CUEVA O?A KERLYN PAMELA","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("706","0550147698","CUYO VEGA MIRYAN CECILIA","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("707","0550254072","DAMACELA CALERO MERCEDES ELIZABETH","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("708","0706001047","GUAICHA MOROCHO DIANA SILVANA","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("709","0550492482","GUALPA QUINATOA JOSELYN LIZBETH","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("710","0504349556","GUAMAN BA?O ANA MARITZA","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("711","0504101817","GUANOLUISA DE LA CRUZ JESENIA PILAR","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("712","1755746854","GUARANDA CAILLAGUA MAYRA LUZ","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("713","0550445175","GUTIERREZ TARCO ANGHELA NICOLE","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("714","0504002486","HERRERA PEREZ KATHERINE LISSETH","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("715","0504266842","IZA CHANGO SELENE MARGARITA","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("716","0550413025","IZA IZA THALIA MERCEDES","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("717","0550058929","JACOME CARRILLO LIDIA NARCISA","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("718","0550141279","JAMI CAIZA KATERINE MARILU","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("719","0504009846","JIMENEZ VELASCO LIDA DEL ROCIO","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("720","0504377953","LIGER QUINTANA ESTHEFANY KAROLINA","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("721","0503701484","LISINTU?A LISINTU?A MYRIAN ESTHER","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("722","0706691789","LOZANO DIAZ DARIO JAVIER","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("723","0919703744","MAGALLANES BURGOS BLANCA MIRELLA","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("724","1726734286","MALDONADO SUNTASIG MARIA PAULETTE","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("725","0504697822","MORENO MORENO TANYA ALEXANDRA","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("726","1750911826","ORTIZ TIMARAN LESLIE ANAHI","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("727","0955325873","PERALTA VILLAMAR MAYERLIN ANDREA","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("728","0504577495","PILACHANGA CHANGOLUISA LIDA JEANETH","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("729","0550241335","PUMACURO CARRILLO BETTY LORENA","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("730","0503137796","RODRIGUEZ TARCO SILVIA PATRICIA","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("731","0502978299","ROJAS GUAMBIANGO NANCY JANETH","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("732","0550400105","ROJAS AIMACA?A MISHELL ESTEFANIA","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("733","0504118407","SACATORO SANGOPANTA MARCIA FABIOLA","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("734","0503984312","SANCHEZ GUALPA ANDREA GEOCONDA","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("735","0504036732","SANGOPANTA YASIG DAYSI ABIGAIL","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("736","0504615014","SAYAVEDRA VILLA ANA CRISTINA","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("737","0503148678","TAIPE TACO BETHY PAMELA","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("738","0504288275","TAIPE FLORES ERIKA MARIBEL","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("739","0504210550","TOAQUIZA MU?OZ NAYELY RASHEL","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("740","0550296172","TOPA RONQUILLO SONIA YAJAIRA","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("741","0504457300","VACA CHICAIZA ALEXIS JOEL","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("742","0503494957","VEGA VEGA ELSA VERONICA","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("743","0503735359","VILCACUNDO CHILIQUINGA KARINA LIZBETH","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("744","0550168835","VILLEGAS RIOFRIO GENESIS MISHEL","","","5","TECNOLOG?A SUPERIOR EN CONTABI");
INSERT INTO usuario_estudiante VALUES("745","1850967025","ALTAMIRANO AVILA JOSUE PAUL","","","3","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("746","0550491344","ANCHATU?A PICHUCHO JUAN CARLOS","","","3","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("747","0550263545","ARBITO MOREJON RONNY ALEJANDRO","","","3","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("748","0504302837","AYALA MORENO EMERSON DAVID","","","3","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("749","0504780537","AYALA CHALUIZA EDISON MAURICIO","","","3","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("750","0503954109","CAMPA?A ROMERO DAVID ALEJANDRO","","","3","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("751","1722243654","CHICAIZA LEMA KEVIN STALIN","","","3","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("752","0550719413","CHILLAGANA RAMIREZ KEVEEN ALEJANDRO","","","3","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("753","0550195630","CHUGCHILAN GALLARDO JHONATAN BLADIMIR","","","3","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("754","0503646184","LUNA GUERRERO ARIEL FRANCISCO","","","3","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("755","0504805722","MANOBANDA CHILIQUINGA BRYAN ALEXIS","","","3","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("756","0503312233","MARDINI YARAD OMAR ALBERTO","","","3","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("757","0550173884","MOLINA CAIZA MARIA BELEN","","","3","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("758","0503905275","PILAMONTA LASLUISA EDWAR LIZARDO","","","3","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("759","1719594739","REATIQUI IZA JOFRE ALEXANDER","","","3","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("760","0502362999","SAMPEDRO SEMANATE WILMER STALIN","","","3","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("761","0550478549","SANCHEZ LAICA EVELYN GEOMAYRA","","","3","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("762","0504764135","SANTAFE TACO CRISTIAN SAUL","","","3","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("763","0504048463","SANTANDER RUBIO NATHALY MISHELL","","","3","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("764","0550464051","TACO CHUQUITARCO ERIKA SUSANA","","","3","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("765","1755411202","TARCO CUYO LEIDY ANAYELI","","","3","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("766","0550242457","VILLACIS ALVAREZ ANGEL ALBERTO","","","3","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("767","1727644229","VILLAMARIN SOLA PAULINA LISSETTE","","","3","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("768","1752473437","VIVANCO PILLO LENIN STALIN","","","3","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("769","0550515100","YANEZ PUCO JEYSON ALEXANDER","","","3","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("770","1250325170","BARROSO MACIAS WALTHER ANDRES","","","4","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("771","1750075143","BUITRAGO MADRIL DILAN STEVEN","","","4","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("772","0550571582","CAISA ALMACHI EDISON JAVIER","","","4","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("773","1728498237","CHAMBA SIMANCAS LESLIE DAYANNA","","","4","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("774","0550706220","CHICAIZA MOLINA MIGUEL ANGEL","","","4","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("775","0550234629","GALARZA CHIRIBOGA NAYELI ALEXANDRA","","","4","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("776","1754554606","GOMEZ MASAPANTA KEYLI MARGARITA","","","4","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("777","0503976672","GUAMANI ASTUDILLO FREDDY DANILO","","","4","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("778","0550113591","GUANOTU?A RUEDA MICHAEL ALEXANDER","","","4","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("779","0503767121","MALLITASIG DE LA CRUZ OSCAR JOEL","","","4","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("780","1805782818","MOYA GARCES KAREN LIZBETH","","","4","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("781","0503886459","PILAGUANO PILATASIG BLANCA JEANETH","","","4","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("782","0550148480","PUCUJI TAIPE KERLY ANABEL","","","4","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("783","1150619862","PUGA MASACHE ANDREA DEL CISNE","","","4","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("784","1751963354","QUITIO ORTA JEOMAYRA BELEN","","","4","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("785","0503994154","SANCHEZ PUENTE GEOVANNY ALEX","","","4","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("786","0550603641","SARAGOSIN LASLUISA LESLI NICOLE","","","4","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("787","1756092621","SHINGON MONTES ARACELY ESTEFANIA","","","4","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("788","1729314987","SORIA MAIGUA ANTHONY PATRICIO","","","4","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("789","0550630206","TACO CHISAGUANO SONIA MARIBEL","","","4","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("790","0550019418","VILLACIS CHILUISA CARMEN AMELIA","","","4","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("791","0503867673","VITERI HURTADO ALEX SANTIAGO","","","4","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("792","1750782284","ZAPATA ITURRALDE ANDERSON ROBERTO","","","4","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("793","1722654728","ALDANA TOAPANTA JUAN ANDRES","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("794","0550536155","ALVAREZ VEINTIMILLA JESSICA TATIANA","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("795","1726260886","CAIZA PASTILLO BRYAN ALEXANDER","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("796","0504626391","CHANGOLUIZA GUANO JUAN CARLOS","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("797","0504382755","CHICAIZA BRAVO MANUEL EFRAIN","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("798","0504847039","CHICAIZA TANDALLA BRYAN ARMANDO","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("799","0550499479","CHILE CAIZA KEVIN JOSEPH","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("800","0503991895","CHILLAGANA TOAQUIZA CYNTHIA CECIBEL","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("801","0503795114","CHILUISA CORDOBA ALEJANDRO XAVIER","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("802","0550182174","CHUQUITARCO LICTO ISMAEL ALEJANDRO","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("803","0504264813","CHUSIN PILAGUANO MANUEL GEOVANNY","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("804","0504459371","COQUE SILLO FLAVIA MARISOL","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("805","0503631848","CORRALES MENA OSCAR JOHAO","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("806","1750453886","CUENCA LARGO MARJORIE ELIZABETH","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("807","0550630818","CUZCO LLANO SHEYLA MISHEL","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("808","0550666366","ESPINEL MOYANO JOSHUA ISRAEL","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("809","0550628150","GARCIA PULLOTASIG JUSTIN ISRAEL","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("810","1725392920","GARCIA VERGARA KATHERINE MISHELL","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("811","0503601023","GAVILANEZ ALBARRASIN HENRY DARWIN","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("812","0503682312","GORDILLO NAVAS ANDERSON OMAR","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("813","0503736399","GUANOLUISA GUALPA HUGO ISRAEL","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("814","0550123558","GUANOTU?A GUANOTU?A LOURDES MARIANA","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("815","1754481362","HERDOIZA MORILLO DARIEN JOEL","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("816","0502946817","J?COME ALVAREZ JOS? LUIS","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("817","1726362641","JIMENEZ SANTACRUZ DAVID ALEJANDRO","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("818","1752368736","LAICA CRUZ VALERIA ELIZABETH","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("819","1755286299","MACHAY CATOTA KAREN VIVIANA","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("820","1718742487","MEJIA MEJIA JORGE EDUARDO","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("821","1727642371","MENA PARCO ALEXIS DANIEL","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("822","0550385223","MOREJON VILLARROEL JOEL ABRAHAN","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("823","0504171661","NAVAS MORALES WENDY NAYELI","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("824","0550639504","NINASUNTA CHANATASIG JOEL ESEQUIEL","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("825","0550375315","PICHUCHO GUANOLUISA MILTON RENE","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("826","1727641290","PILLAJO COLLAGUAZO DANIELA LISBETH","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("827","1725923542","QUIMBA VIRACOCHA EDITH PILAR","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("828","1726182965","QUINGA LOACHAMIN ALEXANDER WLADIMIR","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("829","1350489264","RIVADENEIRA ZAVALA EMILIO JOSE","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("830","0550235329","SANGUCHO TACO JHONATAN ALEXIS","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("831","1600601668","SINCHIGUANO CALVOPI?A JUAN ANDRES","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("832","0504749649","TAIPE ARIAS HENRRY VINICIO","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("833","0550030357","TOAQUIZA CHICAIZA STALYN JAVIER","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("834","1725397580","TORRES LARA LORENA ELIZABETH","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("835","1751868124","USHI?A LLULLUNA GISELA XIMENA","","","5","TECNOLOG?A SUPERIOR EN DESARRO");
INSERT INTO usuario_estudiante VALUES("836","1723788657","ALOMOTO LLUMAN HENRY ARNALDO","","","3","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("837","1727572081","CAGUANA CODENA GEOVANNY ALEXANDER","","","3","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("838","1755462213","CHANCUSIG LLANO YESSENIA ANABEL","","","3","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("839","0550650493","CHANGALOMBO GUISCASHO ELSI YOLANDA","","","3","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("840","0503936965","CHICAIZA TERCERO JENNIFER ELIZABETH","","","3","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("841","1850927433","CHUQUIANA CHANATASIG ALEX GEOVANNY","","","3","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("842","0503122798","CONDOR CHECA JORGE PAUL","","","3","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("843","1726349184","DE LA CRUZ  MEDINA ERIK ESTEBAN","","","3","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("844","1725417222","FARINANGO FARINANGO MATEO VLADIMIR","","","3","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("845","1751741776","GARCIA CUENCA BRANDON STEVE","","","3","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("846","0503668089","GUAROCHICO ALOMOTO VICENTE PAUL","","","3","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("847","1725167959","IZA REISANCHO DANIELA FERNANDA","","","3","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("848","1723005037","LEMA PACAS ADRIANA LIZETH","","","3","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("849","1725095424","MADRIL SIMBA?A SARAHI ABIGAHIL","","","3","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("850","0550704902","MORALES CHICAIZA ALBERTO DAVID","","","3","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("851","1727434753","NIVELA SIMBA?A LUIS MAICOL","","","3","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("852","0503378838","ROSERO CHAVES GUILLERMO SEBASTIAN","","","3","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("853","0503033714","SANCHEZ GUILLEN MARGARITA ELIZABETH","","","3","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("854","1722384375","SANCHEZ ALBUJA BRYAN ALEXANDER","","","3","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("855","0550376032","SANTOS LLERENA JOSSELINE ALEXANDRA","","","3","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("856","0502134323","TONATO CHANATASIG LILIA ESMERALDA","","","3","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("857","1729750453","ULLCO ORTIZ MARIA FERNANDA","","","3","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("858","0502954274","VALENCIA YASIG NELLY PATRICIA","","","3","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("859","0603599218","ZAVALA O?A CRISTINA MAGDALENA","","","3","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("860","0504859638","ANCHATU?A POMA PAMELA ESTEFANIA","","","4","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("861","1728697630","CASA YANGUICELA JHONATAN DAVID","","","4","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("862","0550626980","CATOTA ARIAS CARLA YADIRA","","","4","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("863","0951931542","CEDE?O PAREDES RONALD ANTONIO","","","4","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("864","0504102393","GONZALEZ SALGUERO JONATHAN ALEXANDER","","","4","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("865","0504453630","GUAYTA GUANOTU?A KEVIN ISMAEL","","","4","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("866","0550222236","LLAMBA VILLAMARIN LEANDRO SAUL","","","4","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("867","0550521991","MARTINEZ PANCHI GABRIELA NICOLE","","","4","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("868","0503219479","MEJIA GANCINO ANGEL JOEL","","","4","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("869","1724257082","MOREJON VILLEGAS SAMANTA DENISE","","","4","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("870","0503084592","MUECES FAUTA ALEXANDRA ELIZABETH","","","4","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("871","0956900682","NACIPUCHA LUNA JHAZEL HELEN","","","4","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("872","1710003771","?ACATO AGUIRRE JOSE MEDARDO","","","4","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("873","0202175394","REA PAREDES JHULIANA JAZMIN","","","4","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("874","0503256471","SACA CHICAIZA DEYSI PAMELA","","","4","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("875","1803943529","SOLIS LAGUATASIG TA?A ELIZABETH","","","4","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("876","0550194849","SOTAL?N LE?N FRANCO ARIEL","","","4","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("877","0705498319","TACURI VALENCIA MARIA FERNANDA","","","4","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("878","0504224718","TIGSE CHUQUITARCO JHON STALYN","","","4","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("879","0504290768","TIPAN CHERREZ JESSICA JANETH","","","4","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("880","0550532519","TIPAN DEFAZ DORIS ABIGAIL","","","4","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("881","0550481857","TIVAN ZAPATA KEVEEN DANIEL","","","4","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("882","1753814373","VEGA TOAQUIZA ALEX MAURICIO","","","4","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("883","0503491078","ZURITA N/A IVON MARCELA","","","4","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("884","0504597881","AREQUIPA QUILUMBA LUIS FABIAN","","","5","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("885","1208809507","AREVALO ANDACHI DAMARIS THAIS","","","5","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("886","1725664930","CAIZA VILLA GENESIS LORENA","","","5","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("887","0550702260","CANDO TAIPE MONICA ABIGAIL","","","5","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("888","0550238208","CHASI Y?NEZ MARILYN MONSERRAT","","","5","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("889","0503401275","CHOEZ MARTINEZ WILLIAMS VLADIMIR","","","5","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("890","1728064609","GUARAS CRIOLLO CESAR DANNY","","","5","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("891","0550667257","MORENO ESPIN MARIA DANIELA","","","5","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("892","0603931775","OBREGON LLIGUILEMA MARIA ISABEL","","","5","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("893","1722524152","PULLOPAXI PAUCAR STHEVEN ALEJANDRO","","","5","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("894","0503442402","RIVERA SANTANA JORGE VLADIMIR","","","5","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("895","0550448211","SIMBA VILLAVICENCIO RITHA JOSED","","","5","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("896","0504172719","TAPIA CHILLAGANA XIMENA PATRICIA","","","5","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("897","1725637407","TASIGCHANA ILAQUIZE FERNANDA CAROLINA","","","5","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("898","0550419113","TOCTAGUANO PUCO BRISA DANIELA","","","5","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("899","0503997991","UNDA HERRERA DENISSE KATHERINE","","","5","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("900","0504432667","VEINTIMILLA TAIPE ANA ELIZABETH","","","5","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("901","1721613394","VELEZ PILAGUANO MAYELI MISHEL","","","5","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("902","1752938496","VITERI FREIRE BRYAN ALEXANDER","","","5","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("903","0503143513","YANEZ IZA DARNELY NICOLE","","","5","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("904","0504238361","YUPANGUI YUPANGUI BLANCA CENAIDA","","","5","TECNOLOG?A SUPERIOR EN GASTRON");
INSERT INTO usuario_estudiante VALUES("905","0503278921","ALAVA MOLINA RONNALD JOSHUA","","","2","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("906","0550145619","ARMAS JACOME DALIANA MONSERRAT","","","2","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("907","0550645154","CASNANZUELA JAQUE LESLY PAMELA","","","2","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("908","0504790353","CHICAIZA VILCACUNDO WENDY DAYANA","","","2","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("909","0504818626","CHISAGUANO CAIZA ROXANNA ALBA","","","2","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("910","0503579724","GUANOLUISA CAISAGUANO KEVIN DANIEL","","","2","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("911","1728837418","GUA?A LOACHAMIN KAREN PATRICIA","","","2","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("912","1725097545","HIDALGO VALDIVIEZO JUAN MARTIN","","","2","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("913","1727214601","JIMENEZ HERRERA MARIA DEL CISNE","","","2","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("914","1752120970","MAIGUA CANCHALA EVELYN DEL ROCIO","","","2","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("915","1755930169","MARCILLO CARRILLO ESTHEFANIA PATRICIA","","","2","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("916","0503823825","MERO OSTAIZA JHONNY JOSE","","","2","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("917","0550107171","MOLINA SINCHIGUANO ODALYS MONSERRATH","","","2","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("918","1754054995","MORENO CHASIPANTA JENNIFER PAOLA","","","2","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("919","0504651365","NAVAS PANCHI BELEN STEFANIA","","","2","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("920","1755540992","O?A JACOME KEVIN SAUL","","","2","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("921","0503501447","PAUCAR CALALA VERONICA ABIGAIL","","","2","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("922","0504620618","QUINTU?A YUGSI DORIS CONSUELO","","","2","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("923","0504839044","TACO FLORES JENYFER CAROLINA","","","2","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("924","0550311146","TIPANTU?A PULLUPAXI ANGELES AYME","","","2","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("925","0650292089","UNAUCHO MA?AY MARIA DANIELA","","","2","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("926","0550210272","YUGSI CASA ANA VERONICA","","","2","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("927","0503682239","AMAYA SIMBA EVELYN LISBETH","","","3","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("928","1752555100","AREVALO ZAQUINAULA JASMIN CAMILA","","","3","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("929","0503854051","CHILUISA CANDO KEVIN ADRIAN","","","3","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("930","1723414916","CORDOVA CELI SUSANA JAQUELINE","","","3","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("931","0550462279","CORRALES CHILUISA DAYANA CLARIVEL","","","3","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("932","1727508358","GAVILANEZ SIMBA EMILY NICOLLE","","","3","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("933","0503721557","MU?OZ MORENO RAMIRO NICOLAS","","","3","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("934","0550602619","PILLAJO ACHOTE KEVIN STALIN","","","3","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("935","0504045345","QUISHPE ROSADO ANDREA ESTEFANIA","","","3","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("936","0704948611","RIOFRIO VACA FRANKLIN LEONARDO","","","3","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("937","0955471990","ROSERO NAZARENO LUIS RAUL","","","3","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("938","1728618370","TIGASI TOAPANTA KATHERINE PAOLA","","","3","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("939","0550206098","UMAGINGA SANDOVAL GINA IVONNE","","","3","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("940","1750974188","VINUEZA GARZON MELANY DENISSE","","","3","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("941","0504295619","ACHOTE CHICAIZA YULISSA CRISTINA","","","4","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("942","1755078308","CAIZALUISA TIGASI LUCIA ABIGAIL","","","4","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("943","0504697764","CHUSIN PILAGUANO ELSA JEANETH","","","4","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("944","1754947891","FIERRO CANO BRYAN ENRIQUE","","","4","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("945","1726879263","GANCHALA GANCHALA JENIFER DAYANA","","","4","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("946","1725922205","I?ACASHA YANEZ JOSELYN ESTEFANIA","","","4","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("947","0504168196","PALLO IZA KARLA DANIELA","","","4","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("948","1725446841","PILCO PEREZ JOSSELYN CAMILA","","","4","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("949","0550445142","ROCHA PEREZ VANESA LISBETH","","","4","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("950","0550100838","SANTAMARIA MONTENEGRO BELEN ANAHI","","","4","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("951","0502939291","SARABIA SARZOSA LISBETH MARCELA","","","4","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("952","0550654842","SIMBA?A MONTES KATHERYN ADALYA","","","4","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("953","0504119124","TIGMASA HEREDIA VICTORIA ELIZABETH","","","4","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("954","0550249122","TOAPANTA CORRALES CRISTOFER ESTALIN","","","4","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("955","0504640483","YUGCHA CASA VIVIANA ABIGAIL","","","4","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("956","0503662801","YUGSI FIGUEROA BRYAN PAUL","","","4","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("957","0550236624","ZAMBRANO RUIZ FERNANDO ALEXANDER","","","4","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("958","1754437596","ACOSTA CEDE?O JULISSA DAYANA","","","5","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("959","0504466426","ALMACHI CHILUISA WILMER DANIEL","","","5","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("960","0503986416","AMORES AMORES SANTIAGO ISMAEL","","","5","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("961","0503981086","BEDOYA VARGAS BRYAN PATRICIO","","","5","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("962","0550225536","CASTRO GARZON KATTYA VICTORIA","","","5","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("963","0503669731","CHICAIZA RUBIO KEVIN ORLEY","","","5","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("964","0550530117","CHICAIZA JAME EDISON LEONARDO","","","5","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("965","1805280482","CHICAIZA LLAMUCA JENNIFER ESTEFANIA","","","5","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("966","0503856148","CHOEZ MARTINEZ ANDREA CECILIA","","","5","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("967","1755546072","CONLAGO CACHUMBA EVELYN DANIELA","","","5","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("968","0504202110","CUNUHAY UMAJINGA IRMA PAMELA","","","5","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("969","0504075987","DEFAZ CHICAIZA STEVEN ALEXANDER","","","5","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("970","0550266514","GALLEGOS GALLARDO LINDA EDUARDA","","","5","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("971","1750927210","GUALOTU?A CACHAGO JHOSELIN TATIANA","","","5","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("972","0550423230","HERRERA VELA ANAHI FERNANDA","","","5","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("973","1850239516","HINOJOSA SUNTASIG JOMAYRA DE LOS ANGELES","","","5","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("974","1600495897","LLAMUCA QUINATOA CARMEN MARGOTH","","","5","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("975","1752113116","LOOR MENDOZA LEONELA ANAHY","","","5","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("976","1750401638","LOPEZ BAJA?A INGRID SAMANTHA","","","5","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("977","1150076303","MEDINA MEDINA JENNIFER ESTEFANIA","","","5","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("978","1804380135","MEJIA MIRANDA IVETTE NATHALY","","","5","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("979","0503767865","MOLINA CHUQUITARCO ERIKA JOHANNA","","","5","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("980","0550105241","MORENO CALVOPI?A EVELYN RAQUEL","","","5","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("981","0550299788","MORENO GUAGCHINGA JORDY STEVEN","","","5","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("982","1753307550","MORENO CHANGO DYLAN SAMUEL","","","5","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("983","1718900747","ORTEGA CORDOVA MIREYA ESTEFANIA","","","5","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("984","1600730566","PONCE MENDOZA LADDY YALILA","","","5","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("985","0504273129","PRUNA VITERI ANTHONY MARCELO","","","5","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("986","0954266888","SANCHEZ LOPEZ KATHERINE MILDRED","","","5","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("987","1754491999","SORIA CONDOR KATHERYN MICAELA","","","5","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("988","0550460836","TIPANLUISA CANDO JOSELYN FERNANDA","","","5","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("989","0550638001","TOAPANTA ALVAREZ LISBETH ANABELA","","","5","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("990","1726825092","TONATO CHUQUI KELLY CRISTINA","","","5","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("991","1725416471","VINUEZA SALAZAR JEFFERSON PATRICIO","","","5","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("992","0504448044","YANEZ QUISHPE JOHANA LISBETH","","","5","TECNOLOG?A SUPERIOR EN MARKETI");
INSERT INTO usuario_estudiante VALUES("993","0503634008","BALSECA MEJIA YESSENIA ALEXANDRA","","","3","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("994","1751512359","BARRAGAN CABRERA GABRIELA STEFANY","","","3","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("995","0503841272","BENAVIDES ZAPATA CARLA MICHEL","","","3","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("996","0503881799","CANGUI LLANO SEBASTIAN ALEXANDER","","","3","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("997","0503403917","CASTELLANO TRAVEZ JOSE GABRIEL","","","3","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("998","1716228711","CHICAIZA CAMPA?A TANIA LEONOR","","","3","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("999","0550528392","CHUQUITARCO TIPANTASIG YADIRA LISETH","","","3","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1000","0503686388","CRUZ MORENO MARLON ISRAEL","","","3","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1001","0503910424","GARCIA MOLINA ANDREA LISSETH","","","3","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1002","0503724445","GUAMAN BORJA JONATHAN ALEXANDER","","","3","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1003","0503854564","JAYA KAROLIS DAISY PAMELA","","","3","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1004","0503510299","MASABANDA LEMA JONATHAN JAVIER","","","3","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1005","0504352634","MENDOZA TOMALO KATERIN FERNANDA","","","3","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1006","0550383640","MORENO CAILLAGUA DENIS STEEVEN","","","3","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1007","0550541940","O?A IZA BRAYAN BLADIMIR","","","3","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1008","0503123507","PICHUCHO BARBOSA ANDRES ALBERTO","","","3","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1009","0550254627","QUIMBITA ANCHATU?A LUIS MIGUEL","","","3","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1010","0502582141","QUISPE TIGMASA JHOANNA MARIBEL","","","3","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1011","0504103953","SANDOVAL PILATASIG CARLOS VINICIO","","","3","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1012","0504793225","SANGUCHO TIGMASA JUAN DIEGO","","","3","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1013","0503214967","SIGCHA QUIMBITA BRANDON STEEVEN","","","3","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1014","2100223565","SIVINTA YANCHALUISA HUMBERTO JOEL","","","3","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1015","0550232680","TRAVEZ BATALLAS CARLOS ENRIQUE","","","3","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1016","0503954919","UNAUCHO GUALA MARCIA IRENE","","","3","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1017","0504316787","ZUMBA URIBE YERSI LISBETH","","","3","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1018","0502236367","BEDON RIVAS ALEX GUILLERMO","","","4","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1019","0504139155","CHICAIZA PUCO TANIA GRACIELA","","","4","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1020","1805806419","CHIMBORAZO TORRES ALEXANDER RODOLFO","","","4","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1021","0550106769","CHITO TOAQUIZA YOSELYN PAULINA","","","4","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1022","0550205124","CHUQUITARCO TIPANLUISA LADY PAOLA","","","4","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1023","1802373215","CRIOLLO SALINAS WILSON EDUARDO","","","4","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1024","0504886417","DIAZ CUCHIPE PAUL BENJAMIN","","","4","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1025","0503798753","ESCOBAR CARDENAS ALEXIS ESTEBAN","","","4","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1026","0502661903","FABARA ESPINOZA GRACIELA FERNANDA","","","4","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1027","0550600423","GALLARDO CADENA MAGALY PAMELA","","","4","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1028","1727653014","GONZALEZ CASTILLO ANGI MILEY","","","4","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1029","0503774267","GUALA ASTUDILLO WILMER DAVID","","","4","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1030","0550684831","GUAMAN CHANATASIG FERNANDA MARILIN","","","4","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1031","0503352965","GUAMUSHIG PULLOPAXI DAYSI JOHANA","","","4","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1032","0503145278","GUERRERO VITERI DIEGO SEBASTIAN","","","4","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1033","1752906519","IZA SALAZAR JENNIFER LIZBETH","","","4","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1034","0502847247","LIGER VITERI MICHAELL ANDREYY","","","4","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1035","1722541727","LIMA CONTRERAS KERLI DAYANA","","","4","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1036","0504365040","LOPEZ AGUILAR ANGHELO ANTONNY","","","4","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1037","1724804818","LOPEZ AYALA LISETH BERENICE","","","4","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1038","0550572358","MARTINEZ PASTE RICARDO ANDRES","","","4","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1039","0503597742","MEJIA CAIZA ERICK ISRAEL","","","4","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1040","1752021806","MOPOSITA RIVERA ERIKA ROCIO","","","4","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1041","0550527600","MORETA CHIGUANO JUAN CARLOS","","","4","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1042","0550703987","MULLO ROJAS MAYURY DAYANA","","","4","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1043","1005404304","MURILLO QUILCA KATHERIN MISHELL","","","4","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1044","0550576839","O?A GUAMANI ALISON ARACELI","","","4","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1045","0550629380","O?A NINASUNTA JULISSA LISBETH","","","4","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1046","1850121847","PEREZ PEREZ LUIS ENRIQUE","","","4","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1047","0503397622","PINTA CANDO ANTHONY JAVIER","","","4","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1048","0503903478","ROMERO ARDILA HENRY OMAR","","","4","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1049","0550182240","TAPIA CURIMILMA MELANIE LISETH","","","4","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1050","0550698179","TAPIA HERRERA ANAHI GISELL","","","4","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1051","1751985431","TIPAN UGSHA LISBETH ESTEFANIA","","","4","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1052","0504854837","TIPANGUANO TIPAN ANDREA ESTEFANIA","","","4","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1053","0503935538","TITUA?A CHASIQUIZA JORGE ISMAEL","","","4","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1054","0503984569","TOAPANTA TOAQUIZA ANAHI XIMENA","","","4","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1055","1850985290","TORRES ACOSTA MISHELL YADIRA","","","4","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1056","0504847757","VILLACIS GALLARDO DOMINIQUE MISHELL","","","4","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1057","0502429343","ALMACHI TASINCHANO DIEGO HERNAN","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1058","0550635619","ALVAREZ CHAVEZ JOSEPH JAVIER","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1059","0503370355","ANDINO VITERI KATERIN LIZBETH","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1060","0502618861","ANDRADE MOREJON WALTER ANIBAL","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1061","0504281734","ARBITO MORENO LISBETH BERETHNICE","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1062","2101121578","AREVALO COTACACHI KATHERIN ODETTE","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1063","0503832552","BALDEON MORENO MIGUEL ANGEL","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1064","0550398556","BALTAN CRIOLLO ANGELO JOEL","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1065","1850292721","BEJARANO LIZANO JIMMY RODRIGO","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1066","0705662781","BERNARDINO OLAYA YANDRI ALBERTO","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1067","0503618571","BOHORQUEZ SISA ADALIZA ISABEL","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1068","0503984064","CACERES LASLUISA JEFFERSON EDUARDO","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1069","0503907891","CALERO SANCHEZ GEOMAYRA KATTERINE","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1070","0504027541","CHACHA ALOMOTO KLEVER ORLANDO","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1071","1850755032","CHANATASIG CHICAIZA KATHERINE MICHELLE","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1072","0503518342","CHANCUSIG CASA MARCO ALEXANDER","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1073","1755145800","CHAVEZ CHICAIZA PAOLA ARGENTINA","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1074","0550383988","CHILLAGANA TOAQUIZA MARIA DE LOS ANGELES","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1075","0504211269","CUCHIPE CUCHIPE WILMA VERONICA","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1076","0503658478","CUYACHAMIN YANQUI SONIA VERONICA","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1077","0502939507","GALLO LICTO CARLOS ALBERTO","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1078","0504126897","GORDILLO TRAVEZ ARIEL JOSUE","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1079","1714273362","GUALOTU?A HUACHO JORGE RENE","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1080","0550259568","GUANOLUISA TOAPANTA EVELYN BERSABETH","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1081","0503267247","GUANOTU?A TOASA CRISTIAN GEOVANNY","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1082","0504165093","GUISCASO CALERO IVON DAYANA","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1083","1104654338","HIDALGO CHASI JORGE LUIS","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1084","0550265318","JACHO SANGUCHO ANTONY OSWALDO","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1085","0503990020","JACOME GUAROCHICO MARIA JOSE","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1086","1724933716","JACOME UVILLUS DONOBAN ALEXIS","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1087","0550480131","JAMI CAIZA ELDERSON JAVIER","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1088","0550569925","JAQUE CANDO MEYBI ANABEL","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1089","0504154899","LABANDA HERRERA KEVIN ESTEFAN","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1090","0503588949","LAGUAQUIZA CALO ALEX FERNANDO","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1091","0503094443","LEON JIMENEZ BORIS ZAID","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1092","0550070114","LOPEZ AGUILAR SHIRLEY IVONNE","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1093","0503987745","MASABANDA BA?O DIEGO MISAEL","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1094","0550377998","MEDINA MEDINA EVELIN ESTEFANIA","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1095","0504434416","MENDOZA VALLEJO JOHAN DANILO","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1096","0502113368","MOLINA MOLINA MILTON ESTUARDO","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1097","0503786287","MOROCHO MOROCHO CARLOS ALEJANDRO","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1098","0550558027","MOROCHO ALMACHI JESSICA MARIBEL","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1099","0502951593","MURGUEITIO SEGOVIA CRISTINA MONSERRATH","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1100","0504319633","NOGALES PACHECO MARIELA FERNANDA","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1101","0504080268","PADILLA CHASI KARINA ALEXANDRA","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1102","0504028960","PASTU?A ESTRELLA MARIA PATRICIA","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1103","0503989089","PILATASIG GARZON BRYAN ALEXANDER","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1104","0503443434","PRUNA MOLINA JOSE IGNACIO","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1105","0503919342","PULLUPAXI PILATASIG BYRON PATRICIO","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1106","0504785262","QUINAPALLO NASEVILLA LEYDI YULISSA","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1107","0550628333","QUINATOA DEFAZ MARCO ANTONIO","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1108","0503422339","RAMON TOAPANTA DANILO XAVIER","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1109","0503352478","RAMOS CANDO JUAN DIEGO","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1110","0504185695","REA MAIGUA GALO PATRICIO","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1111","0202404232","RODRIGUEZ CHORA FRANCIS JOSE","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1112","1804908463","RODRIGUEZ MOYA NORMA ISABEL","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1113","0504881996","ROMAN O?A DANA SCARLETH","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1114","0504356841","RONDA PALLO JEFFERSON ALEXIS","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1115","0550152201","SALGADO RIVADENEIRA DOROTY FERNANDA","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1116","0503132011","SANDOVAL NARVAEZ KEVIN SANTIAGO","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1117","0503664211","SINGAUCHO BASANTES FRANKLIN FABRICIO","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1118","0503969347","TACAN ZAMBRANO KATHERINE DANIELA","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1119","0503995136","TACO GUAMUSHIG NANCY NOEMI","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1120","1726872706","TOAPANTA CASA JHONATAN XAVIER","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1121","0550382774","TOPA CHICAIZA CYNTIA JULISA","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1122","0503263386","TOVAR AMORES YADIRA FERNANDA","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1123","0502898711","TRAVEZ MARTINEZ ANGEL PATRICIO","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1124","0503510380","VARGAS VILLACIS EULALIA MARIVEL","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1125","0503874307","VEGA O?A MARYURI NOEMI","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1126","0550109987","VIZCAINO SALVADOR MAICOL DAVID","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1127","1450057532","WARUSHA SANCHIM CELSO ULICES","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1128","0550153795","YANCHAPANTA PANCHI GINA MISHELL","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1129","0503477838","YUGSI LLANO ANDY RENATO","","","5","TECNOLOG?A SUPERIOR EN SEGURID");
INSERT INTO usuario_estudiante VALUES("1130","0503026874","CHICAIZA CEPEDA KEVIN HERNANDO","","","5to","TECNOLOGIA SUPERIOR DESARROLLO");



DROP TABLE IF EXISTS usuarios;

CREATE TABLE `usuarios` (
  `ID` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(180) DEFAULT NULL,
  `password` varchar(180) DEFAULT NULL,
  `email` varchar(180) DEFAULT NULL,
  `id_extreme` varchar(180) DEFAULT NULL,
  `rol` varchar(15) NOT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `imagen` blob DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO usuarios VALUES("10","elier","elier123","elier.aries@gmail.com","","admin","","");



DROP TABLE IF EXISTS visitantes;

CREATE TABLE `visitantes` (
  `idvisitante` int(11) NOT NULL AUTO_INCREMENT,
  `nombreCompleto` varchar(50) NOT NULL,
  `usuario` varchar(60) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `provincia` varchar(50) NOT NULL,
  `estadoPais` varchar(50) NOT NULL,
  `alias` varchar(30) NOT NULL,
  `edad` varchar(10) NOT NULL,
  `sexo` varchar(200) NOT NULL,
  `pais` varchar(60) NOT NULL,
  `estado` varchar(1) NOT NULL,
  `fechaRegistro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idvisitante`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

INSERT INTO visitantes VALUES("23","Kevin Chiciza","AGT003","12345","vitoligista108@gmail.com","0990173274","Guaytacama","","","","19","Docente","","A","2023-07-23 17:09:40");
INSERT INTO visitantes VALUES("24","Kevin Hernando","AGT.KEVIN","12345","vitoligista108@gmail.com","0990173274","Guaytacama","","","AGT.KEVIN","25","Estudiante del ISTVL","","A","2023-07-25 10:28:46");
INSERT INTO visitantes VALUES("25","Kevin chicaiza","AGT.KEVIN","12345","kevfer28@outlook.com","0990173274","Guaytacama, Depto","","","AGT.KEVIN","18","Estudiante del ISTVL","","I","2023-08-03 22:37:59");
INSERT INTO visitantes VALUES("27","Kevin ","AGT.KEVIN","12345","vitoligista108@gmail.com","0990173274","Guaytacama","","","AGT.KEVIN","22","Estudiante del ISTVL","","1","2023-08-03 09:02:02");



DROP TABLE IF EXISTS visitas;

CREATE TABLE `visitas` (
  `utc` int(10) NOT NULL,
  `fecha_visita` date NOT NULL,
  `ip` varchar(50) NOT NULL,
  `navegador` varchar(255) NOT NULL,
  `pagina` varchar(255) NOT NULL,
  PRIMARY KEY (`utc`),
  UNIQUE KEY `utc` (`utc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO visitas VALUES("1690656982","2023-07-29","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1690656985","2023-07-29","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36","/biblioteca/busqueda.php");
INSERT INTO visitas VALUES("1690656986","2023-07-29","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36","/biblioteca/contacto.php");
INSERT INTO visitas VALUES("1690656990","2023-07-29","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1690657059","2023-07-29","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36","/biblioteca1/inicio.php");
INSERT INTO visitas VALUES("1690672180","2023-07-30","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36","/biblioteca1/inicio.php");
INSERT INTO visitas VALUES("1690672183","2023-07-30","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36","/biblioteca1/busqueda.php");
INSERT INTO visitas VALUES("1691022010","2023-08-03","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36","/biblioteca/inicio.php");



SET FOREIGN_KEY_CHECKS=1;