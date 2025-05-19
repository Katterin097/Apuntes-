----------GROUP BY agrupa las filas que tienen los mismo valores en una o más filas.
select sum(val_liquidado) as suma_liquidacion
from src_enc_liquidacion
group by fec_liquidacion --Devuelve la suma de liquidación de cada agrupación de fecha de liquidadción.

----------HEAVING Filtra los grupos creados por GROUP BY basandose en una o más condiciones.
select sum(val_liquidado) as suma_liquidacion
from src_enc_liquidacion
group by fec_liquidacion
having sum(val_liquidado) <= 0

----------ORDER BY define un orden en el que se van a presentar las filas del resultado (Por defecto su valor el ASC)
select  nom_tercero
from bas_tercero
where nom_tercero like 'K%' 
order by nom_tercero desc

----------LIMIT limita el número de filas que se devuelven
select  nom_tercero
from bas_tercero
where nom_tercero like 'K%' 
and rownum < 7 --Devuelve 6 filas

select  nom_tercero
from bas_tercero
where nom_tercero like 'K%' 
offset 3 rows --Empieza despúes de la fila 3
fetch next 8 rows only --Tomas los próximos 8 registos (opcional)

----------DISTINCT elimina las filas duplicadas de la columna seleccionada
select distinct fec_liquidacion
from src_enc_liquidacion 

