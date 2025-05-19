----------Permite definir diferentes resultados basados de una o varias condiciones
select id_enc_liquidacion,
       case id_enc_liquidacion 
       when 2222 then 'Hola 2222' 
       when 2224 then 'Hola 2224'
       else 'Eres desconocido'
       end as mensaje
from src_enc_liquidacion -- en WHEN debe ir un valor de la columna seleccionada