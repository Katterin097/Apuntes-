---------DIFERENCIA ENTRE MAYÚCULAS Y MINÚSCULAS.------------

select  nom_tercero
from bas_tercero
where nom_tercero like 'K%' 
--'%' Se utiliza para presentar 1 o más caracteres de cualquier tipo

select nom_tercero 
from bas_tercero 
where nom_tercero like '%a_' 
--'-' Se utliza para respresentar unicamente un valor de cualquier tipo