use minibus;


-- consulta 1
SELECT 
    axr.idAbono AS ' id abono por recorrido 1-7 / id abono plano 1-3',
    p.Nombre,
    p.Apellido
FROM
    paradas_has_recorridos phr
        INNER JOIN
    abono_por_recorrido axr ON phr.paradas_idParadas = axr.idParadaFavorita
        INNER JOIN
    pasajero p ON axr.idPasajero = p.idPasajero
    UNION ALL 
SELECT 
    ap.idAbonoPlano AS 'abono plano', p2.nombre, p2.apellido
FROM
    paradas_has_recorridos phr
        INNER JOIN
    recorridos_has_abono_plano rhap ON phr.paradas_idParadas = rhap.idParadaFavorita
        INNER JOIN
    pasajero p2 ON rhap.idPasajero = p2.idPasajero
        INNER JOIN
    abonoplano AS ap ON rhap.idAbonoPlano = ap.idAbonoPlano;
    
    

-- consulta 2 
SELECT 
   r.idRecorridos as 'Recorrido', r.salida,r.destino, p.nombre as 'Nombre de parada',p.localidad
FROM
    recorridos r
        INNER JOIN
    paradas_has_recorridos phr ON r.idRecorridos = phr.recorridos_idRecorridos
        INNER JOIN
    paradas p ON phr.paradas_idParadas = p.idParadas;
    
-- consulta 3
SELECT 
    mht.*
FROM
    minibus_has_taller mht
        INNER JOIN
    taller t ON mht.idTaller = t.idTaller
        INNER JOIN
    minibus m ON mht.idMinibus = m.idMinibus
WHERE
    fecha >= '2018-09-29'
        AND fecha <= '2018-12-01'
        AND mht.idTaller = 1;

-- - consulta 4

SELECT 
    pc.idPlanilla,
    pc.horaSalida,
    r.*,
    p.*,
    pa.nombre,
    pa.apellido
FROM
    planillachofer pc
        INNER JOIN
    recorridos r ON pc.pRecorridos = r.idRecorridos
        INNER JOIN
    paradas_has_recorridos phr ON r.idRecorridos = phr.recorridos_idRecorridos
        INNER JOIN
    paradas p ON phr.paradas_idParadas = p.idParadas
        INNER JOIN
    abono_por_recorrido axr ON phr.paradas_idParadas = axr.idParadaFavorita
        INNER JOIN
    pasajero pa ON axr.idPasajero = pa.idPasajero 
UNION ALL SELECT 
    pc.idPlanilla,
    pc.horaSalida,
    r2.*,
    p2.*,
    pa2.nombre,
    pa2.apellido
FROM
    planillachofer pc
        INNER JOIN
    recorridos r2 ON pc.pRecorridos = r2.idRecorridos
        INNER JOIN
    paradas_has_recorridos phr2 ON r2.idRecorridos = phr2.recorridos_idRecorridos
        INNER JOIN
    paradas p2 ON phr2.paradas_idParadas = p2.idParadas
        INNER JOIN
    recorridos_has_abono_plano rhap ON phr2.paradas_idParadas = rhap.idParadaFavorita
        INNER JOIN
    pasajero pa2 ON rhap.idPasajero = pa2.idPasajero
ORDER BY idPlanilla;


-- consulta 5


SELECT 
    SUM(cajaFinal) AS ' ganancia por recorrido',
    r.salida,
    r.destino
FROM
    planillachofer pc
        INNER JOIN
    recorridos r ON pc.pRecorridos = r.idRecorridos
GROUP BY r.idRecorridos;


-- consulta 6 

SELECT 
    SUM(c.precio) + SUM(pc.gastoInesp) AS total, ch.nombre
FROM
    planillachofer pc
        INNER JOIN
    minibus m ON pc.idMinibus = m.idMinibus
        INNER JOIN
    carga c ON m.idMinibus = c.idMinibus
        INNER JOIN
    chofer ch ON pc.cuilChofer = ch.cuil
GROUP BY ch.cuil
ORDER BY total ASC;
    
-- consulta 7

SELECT 
    SUM(c.precio) + SUM(pc.gastoInesp) AS total,
    ch.nombre AS chofer,
    ch.cuil
FROM
    planillachofer pc
        INNER JOIN
    minibus m ON pc.idMinibus = m.idMinibus
        INNER JOIN
    carga c ON m.idMinibus = c.idMinibus
        INNER JOIN
    chofer ch ON pc.cuilChofer = ch.cuil
WHERE
    fecha >= '2018-09-29'
        AND fecha <= '2018-12-01'
GROUP BY ch.cuil
ORDER BY total DESC;
    
-- consulta 8 

SELECT 
    SUM(c.cantidad) / (SUM(pc.km_fin)-SUM(pc.km_inicio)) AS ConsumoPromedio, m.*
FROM
    carga c
        INNER JOIN
    minibus m ON c.idMinibus = m.idMinibus
        INNER JOIN
    planillachofer pc ON m.idMinibus = pc.idMinibus
WHERE
    fecha > '2018-09-29'
        AND fecha < '2018-12-01'
GROUP BY m.idMinibus
ORDER BY ConsumoPromedio DESC;

-- consulta 9

SELECT 
    SUM(cajaFinal) / r.distancia AS 'ganancia bruta por km'
FROM
    planillachofer pc
        INNER JOIN
    recorridos r ON pc.pRecorridos = r.idRecorridos
GROUP BY r.idRecorridos;

-- consulta 10

SELECT 
    SUM(p.idPasajero) AS 'pasajeros transportados por recorrido',
    r.salida,
    r.destino
FROM
    planillachofer pc
        INNER JOIN
    recorridos r ON pc.pRecorridos = r.idRecorridos
        INNER JOIN
    paradas_has_recorridos phr ON phr.recorridos_idRecorridos = r.idRecorridos
        INNER JOIN
    abono_por_recorrido axr ON phr.paradas_idParadas = axr.idParadaFavorita
        INNER JOIN
    pasajero p ON p.idPasajero = axr.idParadaFavorita
GROUP BY r.idRecorridos 

UNION ALL 

SELECT 
    SUM(p1.idPasajero), r2.salida, r2.destino
FROM
    planillachofer pc
        INNER JOIN
    recorridos r2 ON pc.pRecorridos = r2.idRecorridos
        INNER JOIN
    paradas_has_recorridos phr2 ON phr2.recorridos_idRecorridos = r2.idRecorridos
        INNER JOIN
    recorridos_has_abono_plano rhap ON rhap.idParadaFavorita = phr2.paradas_idParadas
        INNER JOIN
    pasajero p1 ON rhap.idPasajero = p1.idPasajero
WHERE
    horasalida > '2018-09-29'
        AND horasalida < '2018-12-01'
GROUP BY r2.idRecorridos;


--      consulta 11 

SELECT 
    SUM(cajaFinal) AS ' caja final por recorrido',
    r.idRecorridos
FROM
    planillachofer pc
        INNER JOIN
    recorridos r ON pc.pRecorridos = r.idRecorridos
GROUP BY pRecorridos;

-- consulta 12 

SELECT 
    SUM(km_fin) - SUM(km_inicio) AS 'km recorridos', ch.nombre
FROM
    planillachofer pc
        INNER JOIN
    chofer ch ON pc.cuilChofer = ch.cuil
GROUP BY pc.cuilChofer;

-- consulta 13 

SELECT 
    SUM(mht.precio) AS 'costo de mantenimiento', m.idMinibus
FROM
    minibus_has_taller mht
        INNER JOIN
    minibus m ON mht.idMinibus = m.idMinibus
GROUP BY idMinibus
ORDER BY m.idMinibus;
    
-- consulta 14 

SELECT 
    SUM(pc.cajaFinal) - SUM(pc.gastoinesp) - SUM(c.precio) - (mht.precio) AS 'ganancia bruta por recorrudo',
    pc.pRecorridos
FROM
    planillachofer pc
        INNER JOIN
    minibus m ON pc.idMinibus = m.idMinibus
        INNER JOIN
    carga c ON c.idMinibus = m.idMinibus
        INNER JOIN
    minibus_has_taller mht ON mht.idMinibus = m.idMinibus
GROUP BY pRecorridos;

-- consulta 15

SELECT 
    SUM(cajaFinal) AS 'total caja',
    (SELECT 
            COUNT(axr.idAbono) * 40
        FROM
            abono_por_recorrido axr) AS 'Recaudacion de abono por recorrido',
    (SELECT 
            COUNT(ap.idAbonoPlano) * 75
        FROM
            abonoplano ap) AS 'Recaudacion abono plano',
    (SELECT 
            SUM(c.precio)
        FROM
            carga c) AS 'Gasto en combustible',
    (SELECT 
            SUM(mht.precio)
        FROM
            minibus_has_taller mht) AS 'Gasto en mantenimiento',
    SUM(cajaFinal) + (SELECT 
            COUNT(axr.idAbono) * 40
        FROM
            abono_por_recorrido axr) + (SELECT 
            COUNT(ap.idAbonoPlano) * 75
        FROM
            abonoplano ap) - (SELECT 
            SUM(c.precio)
        FROM
            carga c) - (SELECT 
            SUM(mht.precio)
        FROM
            minibus_has_taller mht) AS 'Balance total'
FROM
    planillachofer pc

