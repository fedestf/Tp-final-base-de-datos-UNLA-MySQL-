use minibus;
insert into paradas values 
(1, "Republica y San Martin", "R.Calzada"),
(2, "Altamira y Jorge", "Solano"),
(3, "Lopez de Gomara y Jorge", "Claypole"),
(4, "Salta y Churrinche", "Marmol"),
(5, "Eva Peron y Alsina", "Claypole"),
(6, "Espora y 20 de Septiembre", "R. Calzada"),
(7, "Colon y Picaflor", "Marmol"),
(8, "Colon y 20 de Septiembre", "Claypole"),
(9, "Senzabello y Plumerillo", "Solano"),
(10, "Hornero y Salta", "Marmol"),
(11, "Calandria y Republica Argentina", "Claypole"),
(12, "Gonzalez y Espora", "R.Calzada"),
(13, "Irigoyen y Loria", "Claypole"),
(14, "Loria y Reconquista", "Marmol"),
(15, "Cerrito y Viamonte", "R.Calzada"),
(16, "Corrientes y Callao", "Adrogue"),
(17, "9 de julio y Pasco", "Marmol"),
(18, "Falucho y Entre Rios", "Adrogue"),
(19, "Tucuman y Canale", "Marmol"),
(20, "Amenedo y Ferre", "Claypole"),
(21, "Alberdi y Espora", "Marmol"),
(22, "Sallarez y Colon", "R. Calzada"),
(23, "Alem y Falucho", "Solano"),
(24, "San Juan y Espora", "Adrogue"),
(25, "Paso de la Patria y Gonzalez", "Marmol"),
(26, "España y Cordoba", "Solano"),
(27, "Braile y Viamonte", "R.Calzada"),
(28, "Dardo Rocha y Pimargal", "Solano"),
(29, "San Lorenzo y Picaflor", "Marmol");

insert into recorridos values
(1, "E. Lanus", "E. Constitucion", 10),
(2, "E. Lanus", "Correo Central", 13),
(3, "E. Lanus", "Agronomia", 18),
(4, "E. Constitucion", "E. Lanus", 10),
(5, "Correo Central", "E. Lanus", 13),
(6, "Agronomia", "E. Lanus", 18);



delete from planillachofer where idplanilla <21;

insert into domicilio values
(1, "Churrinche", 3221, "Marmol", "Buenos Aires"),
(2, "Lopez de Gomara", 1559, "Calzada", "Buenos Aires"),
(3, "Salta", 3226, "Solano", "Buenos Aires"),
(4, "Pasco", 1486, "Claypole", "Buenos Aires"),
(5, "Picaflor", 1947, "Marmol", "Buenos Aires"),
(6, "20 de Septiembre", 1335, "Calzada", "Buenos Aires"),
(7, "Altamira", 1549, "Calzada", "Buenos Aires"),
(8, "Senzabello", 4563, "Marmol", "Buenos Aires"),
(9, "Republica Argentina", 1546, "Claypole", "Buenos Aires"),
(10, "Calandria", 1234, "Calzada", "Buenos Aires"),
(11, "Hornero", 4579, "Marmol", "Buenos Aires"),
(12, "Cordoba", 4689, "Marmol", "Buenos Aires"),
(13, "Santana", 9312, "Calzada", "Buenos Aires"),
(14, "Jorge", 9145, "Claypole", "Buenos Aires"),
(15, "El Jilguero", 1556, "Marmol", "Buenos Aires"),
(16, "Moreno", 4794, "Claypole", "Buenos Aires"),
(17, "Benteveo", 4754, "Calzada", "Buenos Aires"),
(18, "Lavalle", 1331, "Marmol", "Buenos Aires"),
(19, "Corrientes", 4784, "Marmol", "Buenos Aires"),
(20, "Chaco", 8464, "Claypole", "Buenos Aires"),
(21, "Novoa", 7464, "Calzada", "Buenos Aires"),
(22, "Moreno", 4699, "Claypole", "Buenos Aires"),
(23, "Surubi", 4445, "Solano", "Buenos Aires"),
(24, "Illia", 7984, "Claypole", "Buenos Aires"),
(25, "Espora", 5677, "Solano", "Buenos Aires"),
(26, "Alsina", 4699, "Solano", "Buenos Aires"),
(27, "Cerrito", 1344, "Marmol", "Buenos Aires"),
(28, "Viamonte", 1197, "Claypole", "Buenos Aires"),
(29, "Tucuman", 1994, "Solano", "Buenos Aires"),
(30, "Canale", 1987, "Calzada", "Buenos Aires"),
(31, "San Juan", 1308, "Solano", "Buenos Aires"),
(32, "San Martin", 1428, "Calzada", "Buenos Aires"),
(33, "Amenedo", 3240, "Solano", "Buenos Aires"),
(34, "Falucho", 4291, "Marmol", "Buenos Aires");

insert into pasajero values
(1, "Luis", "Gonzalez", 11),
(2, "Pablo", "Lopez", 12),
(3, "Lucas", "Perez", 13),
(4, "Hernan", "Perez", 13),
(5, "Roberto", "Hernandez", 15),
(6, "Silvio", "Heredia", 16),
(7, "Marta", "Sandobal", 17),
(8, "Laura", "Martinez", 18),
(9, "Maria", "Galzerano", 19),
(10, "Pedro", "Versache", 19),
(11, "Carlos", "Rockefeler", 23),
(12, "Agustin", "Pan", 24),
(13, "Federico", "Acevedo", 25),
(14, "Teresa", "Acuña", 26),
(15, "Helena", "Echeverria", 27),
(16, "Gladys", "Piñeiro", 28),
(17, "Ignacio", "Ramirez", 14),
(18, "Nicolas", "Nuñez", 20),
(19, "Ileana", "Ortiz", 29),
(20, "Lautaro", "Ortega", 30);

insert into abonoPlano values
(1, '2018-11-11'),
(2, '2018-11-16'),
(3, '2018-11-04');

insert into paradas_has_recorridos values 
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 4),
(16, 4),
(17, 4),
(18, 4),
(19, 4),
(20, 5),
(21, 5),
(22, 5),
(23, 5),
(24, 5),
(25, 6),
(26, 6),
(27, 6),
(28, 6),
(29, 6);

insert into estaciondeservicio values
(1, 31),
(2, 32),
(3, 33);

insert into taller values 
(1, 10),
(2, 20);

insert into chofer values
(1, "Alberto", "Martinez", '2010-04-12', 2),
(2, "Francisco", "Ramirez", '2000-06-15', 3),
(3, "Mario", "Versache", '2016-07-16', 5),
(4, "Oscar", "Peralta", '2013-09-08', 1),
(5, "Nicolas", "Ramos", '2009-06-12', 4),
(6, "Ricardo", "Macera", '2012-05-25', 7),
(7, "Jorge", "Illia", '2010-07-09', 9),
(8, "Adolfo", "Molina", '2009-11-23', 6),
(9, "Marcos", "Tejada", '2017-10-06', 8);

insert into minibus values
(1, "WZX123" ),
(2, "RTF455" ),
(3, "TVT654" ),
(4, "RGH894" ),
(5, "GFT943" ),
(6, "RTX180" );

insert into minibus_has_taller values
(1, 2, "cambio de aceite" ,3256,'2018-10-03 13:00:00', '2019-04-05 13:00:00'),
(2, 1,"ajuste de interior" ,2115,'2018-10-05 13:00:00', '2019-04-03 13:00:00'),
(3, 1, "cambio de piezas de tren delantero",6553,'2018-10-04 13:00:00', '2019-04-04 13:00:00'),
(4, 1,"limpieza de filtros y cambio" ,1230,'2018-10-03 13:00:00', '2019-04-07 13:00:00'),
(5, 1, "control general", 5642,'2018-11-09 13:00:00', '2019-09-07 13:00:00'),
(6, 1, "matafuego", 4000,'2018-11-01 13:00:00', '2019-08-06 13:00:00'),
(1, 1,"control de balanceo de cubiertas", 3200 ,'2018-11-05 13:00:00', '2019-05-03 13:00:00'),
(2, 2,"ajuste general", 1255 ,'2018-11-03 13:00:00', '2019-02-07 13:00:00'),
(3, 2,"arreglo limpia parabrisas", 1300 ,'2018-11-04 13:00:00', '2019-03-05 13:00:00'),
(4, 2, "cambio de correas", 5700,'2018-11-07 13:00:00', '2019-01-06 13:00:00');
 
insert into carga values
(1, 100, 1000, '2018-10-01', 1, 1),
(2, 130, 1300, '2018-10-02', 2, 2),
(3, 180, 1800, '2018-10-03', 1, 3),
(4, 100, 1000, '2018-10-01', 2, 4),
(5, 130, 1300, '2018-10-02', 1, 5),
(6, 180, 1800, '2018-11-03', 2, 6),
(7, 100, 1000, '2018-11-01', 1, 1),
(8, 130, 1300, '2018-11-02', 2, 2),
(9, 180, 1800, '2018-11-03', 1, 3),
(10, 100, 1000, '2018-11-01', 2, 4);


insert into planillachofer values -- agregar fecha a hora inicio y hora llegada,arreglar valores de caja final--
(1, '2018-10-03 01:20:00', 300, 13000, 120, '2018-10-03 03:00:00', 13010, 0, 1500, 1, 1, 1),
(2, '2018-10-03 02:20:00', 300, 14000, 160, '2018-10-03 04:00:00', 14013, 0, 1900, 2, 2, 2),
(3, '2018-10-03 03:20:00', 300, 15000, 240, '2018-10-03 05:00:00', 15018, 0, 2700, 4, 3, 1),
(4, '2018-10-03 04:20:00', 300, 16010, 660, '2018-10-03 06:00:00', 16020, 5, 6895, 5, 4, 2),
(5, '2018-10-03 05:20:00', 300, 17013, 90, '2018-10-03 07:00:00', 17026, 0, 9300, 2, 5, 3),
(6,'2018-10-03 06:20:00', 300, 18018, 120, '2018-10-03 08:00:00', 18036, 0, 1500, 3, 6, 4),
(7, '2018-10-03 07:20:00', 300, 19000, 140, '2018-10-03 09:00:00', 19010, 20, 1680, 5, 7, 3),
(8, '2018-10-03 08:20:00', 300, 20000, 200, '2018-10-03 10:00:00', 20013, 0, 2300, 6, 8, 4),
(9, '2018-10-03 09:20:00', 300, 21000, 170, '2018-10-03 11:00:00', 21018, 0, 2000, 1, 9, 5),
(10, '2018-10-03 10:20:00', 300, 22010, 130, '2018-10-03 12:00:00', 22020, 10, 1590, 2, 1, 6),
(11, '2018-11-03 11:20:00', 300, 23013, 100, '2018-11-03 13:00:00', 23026, 0, 1300, 4, 1, 5),
(12, '2018-11-03 12:20:00', 300, 24018, 60, '2018-11-03 14:00:00', 24036, 0, 900, 5, 2, 6),
(13, '2018-11-03 13:20:00', 300, 25020, 170, '2018-11-03 15:00:00', 25030, 0, 2000, 1, 3, 1),
(14, '2018-11-03 14:20:00', 300, 26026, 110, '2018-11-03 16:00:00', 26039, 30, 1370, 3, 4, 2),
(15, '2018-11-03 15:20:00', 300, 27036, 120, '2018-11-03 17:00:00', 27054, 0, 1500, 4, 5, 1),
(16, '2018-11-03 16:00:00', 300, 28030, 150, '2018-11-03 18:00:00', 28040, 0, 1800, 6, 6, 2),
(17, '2018-11-03 17:00:00', 300, 29039, 260, '2018-11-03 19:00:00', 29052, 100, 2800, 2, 7, 3),
(18, '2018-11-03 18:00:00', 300, 30054, 80, '2018-11-03 20:00:00', 30072, 0, 1100, 3, 8, 4),
(19, '2018-11-03 19:00:00', 300, 31040, 160, '2018-11-03 21:00:00', 31050, 0, 1900, 5, 9, 3),
(20, '2018-11-03 20:00:00', 300, 32050, 150, '2018-11-03 22:00:00', 32060, 30, 1770, 6, 1, 4);

insert into pasajeroExtra values
(7, 3),
(8, 5),
(9, 11),
(10, 13);

insert into abono_por_recorrido values 
(1, 1, 3, 1, 1),
(2, 2, 5, 2, 1),
(3, 3, 4, 3, 2),
(4, 4, 6, 4, 2),
(5, 5, 7, 5, 3),
(6, 6, 1, 6, 3),
(7, 7, 2, 7, 4);

insert into recorridos_has_abono_plano values 
(1, 9, 1, 1, 6),
(2, 10, 1, 2, 3),
(3, 11, 2, 5, 5);










