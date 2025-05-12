----------UPPER, LOWER, INITCAP: Modificar mayúculas y minúsuclas
select upper(nom_largo) --Lo mismo para LOWER(Minúscula) y INITCAP(Primera letra mayúcula)
from bas_tercero;--Devuelve: KATTERIN REINA


----------SUBSTR: Trae una subcadena
select substr(nom_tercero, 1/*Inicio*/, 4/*Fin*/)
from bas_tercero; --Devuelve: KATT


----------INSTR: Busca la posición de una subcadena (Sensible a mayúsculas y minúsculas)
select nom_largo, instr(nom_largo/*cadena*/, 'EBA'/*subcadena a buscar*/, 1/*punto de partida. Opcional*/, 3/*Ocurrecia a buscar(la tercero ocurrencia)*/) as posicion --
from bas_tercero
where id_tercero = 867736;


----------UNION DE INSTR Y SUBSTR
select id_tercero, substr(dir_email, instr(dir_email, '@')+0)--instr devuelve 0 si no encuentra "@" y 1 si sí lo encuentra
from bas_tercero; --Devuele: @gmail.com


----------LENGTH
select nom_tercero, length(nom_tercero) as Caracteres 
from bas_tercero; --Devuelve: Katterin 8


----------CONCAT
select concat(nom_tercero, pri_apellido) --Es lo mismo que: select nom_tercero || pri_apellido
from bas_tercero --select concat(concat(nom_tercero, ' ') , pri_apellido) --Esta forma es la indicada para agregar espacion entre la concatenación (Katterin Reina)


----------TRIM: Elimina caracteres de una cadena
select id_tercero, trim(leading ' ' from nom_largo), nom_largo
from bas_tercero
where id_tercero = 290874; --Se eliminaron los espacios vacios que habia antes del nombre largo, ej: '    Katterin Reina'


----------LPAD, RPAD: Rellena la izquierda o derecha de una cadena con un longitud específica 
select num_identificacion, lpad(num_identificacion,12,0) as relleno
from bas_tercero;
                /*Si mi cadena es de 9, rellena con 0 hasta que sea de 12.
                  Si mi cadena es de 9 y le doy longitud de 5, devuelve 5 caracteres.
                  Si no le agrego caracter de relleno agrega espacios en blanco.*/


----------ABS: Devuelve el valor absoluto (no devuele números negativos)
select id_tercero
from bas_tercero
where abs(id_tercero - 30000) <=333; --Verificar si un valor está a cierta distancia de otro valor


----------CEIL: Devuelve el entero mayor o igual al número
select ceil(def_proceso)
from cju_not_proceso
where id_proceso = 1252; --La nota es 4.83, devuelve 5


----------FLOOR: Devuelve el entero menor o igual al número
select floor(def_proceso)
from cju_not_proceso
where id_proceso = 1252; --La nota es 4.83, devuelve 4


----------ROUND: Redondea un numéro especifico de decimales
select ROUND(def_proceso [/*num. de decimales a devolver. Opcional*/])
from cju_not_proceso
where id_proceso = 6729; --La nota es 4.23, devuelve 4


----------TRUNC: Trunca (elimina) un número a un número especificado de decimales
select trunc(def_proceso, 1/*Número de decimales a mostrar. Opcional*/)
from cju_not_proceso
where id_proceso = 6729; --La nota es 4.23, devuelve 4.1


----------MOD: Devuelve el resto de una división
select mod(id_alum_pro_asig/*10*/, id_proceso/*3*/)
from cju_not_proceso; --Devuelve 1, ya que es el restante de la división


----------POWER: Devuelve la base elevada al exponente
select power(2, 3)
from dual; --Devuelve: 8 (2 elevado a la potencia de 3 es 2 * 2 * 2 = 8)


----------SQRT: Devuelve la raiz cuadrada
select sqrt(9)
from dual; --Devuelve: 3 


----------SYSDATE: Devuelve la fecha actual
select sysdate
from dual;


----------current_date: Devuelve la fecha actual de la sesión del usuario
select current_date
from dual; 


----------CURRENT_TIMESTAP: Devuelve la fecha y hora actual de la sesión del usuario
select current_timestap
from dual; 


----------EXTRACT: Extrae un componente especifico de una fecha (año, mes, dia, etc)
select extract(year from fec_nacimiento)
from bas_tercero