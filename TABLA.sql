create schema if not exists minibus;

use minibus;
--        ------------------------------ borrado de tablas para poder correr el script entero----------------



-- -------------------------------- TABLAS -----------------------------
drop table if exists paradas;
CREATE TABLE paradas (
    idParadas INT,
    nombre VARCHAR(45),
    localidad VARCHAR(45),
    PRIMARY KEY (idParadas)
);
drop table if exists recorridos;
CREATE TABLE recorridos (
    idRecorridos INT,
    salida VARCHAR(45),
    destino VARCHAR(45),
    distancia VARCHAR(45),
    PRIMARY KEY (idRecorridos)
);
drop table if exists abonoPlano;
CREATE TABLE abonoPlano (
    idAbonoPlano INT,
    mes DATE,
    PRIMARY KEY (idAbonoPlano)
);
drop table if exists domicilio;
CREATE TABLE domicilio (
    idDomicilio INT,
    calle VARCHAR(45),
    numero INT,
    localidad VARCHAR(45),
    provincia VARCHAR(45),
    PRIMARY KEY (idDomicilio)
);
drop table if exists pasajero;
CREATE TABLE pasajero (
    idPasajero INT,
    nombre VARCHAR(45),
    apellido VARCHAR(45),
    pDomicilio INT,
    PRIMARY KEY (idPasajero),
    FOREIGN KEY (pDomicilio)
        REFERENCES domicilio (idDomicilio)
);
drop table if exists chofer; -- ya cargada en excel
CREATE TABLE chofer (
    cuil INT,
    nombre VARCHAR(45),
    apellido VARCHAR(45),
    fechaIngreso DATE,
    cDomicilio INT,
    PRIMARY KEY (cuil),
    FOREIGN KEY (cDomicilio)
        REFERENCES domicilio (idDomicilio)
);
drop table if exists taller; -- cargada en excel MODIFICAR CAMBIOS DEL DER CLAVES FORANEAS
CREATE TABLE taller (
    idTaller INT,
    tDomicilio INT,
    PRIMARY KEY (idTaller),
    FOREIGN KEY (tDomicilio)
        REFERENCES domicilio (idDomicilio)
);
drop table if exists EstacionDeServicio;-- cargada en excel
CREATE TABLE EstacionDeServicio (
    idEstServ INT,
    eDomicilio INT,
    PRIMARY KEY (idEstServ),
    FOREIGN KEY (eDomicilio)
        REFERENCES domicilio (idDomicilio)
);
drop table if exists minibus;
CREATE TABLE minibus (
    idMinibus INT,
    patente VARCHAR(45),
    PRIMARY KEY (idMinibus)
);drop table if exists carga; -- cargada en excel
CREATE TABLE carga (
    idCarga INT,
    cantidad INT,
    precio INT,
    fecha DATE,
    cargaEstacion INT,
    idMinibus int,
    PRIMARY KEY (idCarga),
    FOREIGN KEY (cargaEstacion)
        REFERENCES EstacionDeServicio (idEstServ),
    FOREIGN KEY (idMinibus)
        REFERENCES minibus (idMinibus)
);
 -- cargado en excel -- modificar claves foraneas

drop table if exists planillaChofer;
-- falta agregar gastos inesp--
CREATE TABLE planillaChofer (
    idPlanilla INT,
    horaSalida DATETIME,
    cajaInicial INT,
    km_inicio INT,
    cant_pasajes INT,
    hora_llegada DATETIME,
    km_fin INT,
    gastoInesp INT,
    cajaFinal INT,
    pRecorridos INT,
    cuilChofer INT,
    idMinibus INT,
    PRIMARY KEY (idPlanilla),
    FOREIGN KEY (pRecorridos)
        REFERENCES recorridos (idRecorridos),
    FOREIGN KEY (cuilChofer)
        REFERENCES chofer (cuil),
    FOREIGN KEY (idMinibus)
        REFERENCES minibus (idMinibus)
);

drop table if exists paradas_has_recorridos;
CREATE TABLE paradas_has_recorridos (
    paradas_idParadas INT,
    recorridos_idRecorridos INT,
    PRIMARY KEY (paradas_idParadas , recorridos_idRecorridos),
    FOREIGN KEY (paradas_idParadas)
        REFERENCES paradas (idParadas),
    FOREIGN KEY (recorridos_idRecorridos)
        REFERENCES recorridos (idRecorridos)
);
drop table if exists pasajeroExtra;
CREATE TABLE pasajeroExtra (
    pidPasajero INT,
    pChofer_idPlanilla INT,
    PRIMARY KEY (pChofer_idPlanilla , pidPasajero),
    FOREIGN KEY (pidPasajero)
        REFERENCES pasajero (idPasajero),
    FOREIGN KEY (pChofer_idPlanilla)
        REFERENCES planillaChofer (idPlanilla)
); 

drop table if exists recorridos_has_abono_plano;
CREATE TABLE recorridos_has_abono_plano (
    idAbonoPlano INT,
    idPasajero INT,
    idPlanillaChofer INT,
    idParadaFavorita INT,
    idRecorrido INT,
    PRIMARY KEY (idParadaFavorita , idRecorrido , idAbonoPlano),
    FOREIGN KEY (idAbonoPlano)
        REFERENCES abonoPlano (idAbonoPlano),
    FOREIGN KEY (idPasajero)
        REFERENCES pasajero (idPasajero),
    FOREIGN KEY (idPlanillaChofer)
        REFERENCES planillaChofer (idPlanilla),
	FOREIGN KEY (idParadaFavorita)
        REFERENCES paradas(idParadas),
	FOREIGN KEY (idRecorrido)
        REFERENCES recorridos (idRecorridos)
);
drop table if exists abono_por_recorrido;
CREATE TABLE abono_por_recorrido (
    idAbono INT,
    idPasajero INT,
    pChofer_idPlanilla INT,
    idParadaFavorita INT,
    idRecorrido INT,
    PRIMARY KEY (idAbono , idPasajero , idParadaFavorita , idRecorrido),
    FOREIGN KEY (idPasajero)
        REFERENCES pasajero (idPasajero),
    FOREIGN KEY (pChofer_idPlanilla)
        REFERENCES planillaChofer (idPlanilla),
    FOREIGN KEY (idParadaFavorita)
        REFERENCES paradas(idParadas),
	FOREIGN KEY (idRecorrido)
        REFERENCES recorridos (idRecorridos)
);
drop table if exists minibus_has_taller;
CREATE TABLE minibus_has_taller (
    idMinibus INT,
    idTaller INT,
    observaciones VARCHAR(200),
    precio INT,
    fecha DATETIME,
    proxService DATETIME,
    PRIMARY KEY (idMinibus , idTaller),
    FOREIGN KEY (idMinibus)
        REFERENCES minibus (iDminibus),
    FOREIGN KEY (idTaller)
        REFERENCES taller (idTaller)
);






