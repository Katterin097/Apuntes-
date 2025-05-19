----------BETWEEN sirve para traer datos que esten dentro de un rango
select id_enc_liquidacion
FROM src_enc_liquidacion
where id_enc_liquidacion between 2344 and 2368

----------EXISTS se hace a través de una subconsulta, sirve para verificar si existe alguna condición
select id_enc_liquidacion, fec_liquidacion
from src_enc_liquidacion 
where exists(
        select fec_liquidacion
        from src_enc_liquidacion 
        where fec_liquidacion > '10/11/03')

----------IN verifica si la condición coincide con alguno de los valores propuestos
select id_enc_liquidacion
FROM src_enc_liquidacion
where id_enc_liquidacion in (2221, 2224, 2226)
