----------Es un grupo de sentencia sql que se almacena y puede ser ejecutado después

create or replace procedure calcularDoble( --Crear o reemplazar
    numero_entrada in number, --In para parámetros de entrada: Asignar un valor
    resultado_doble out number --Out para parámetros de salida: Retorna un valor
)
as --Se asigna un bloque en caso de necesitar "ingredientes extra"
begin 
    resultado_doble := numero_entrada * 2; --Se le da el valor a la variable
end calcularDoble;
/
--Bloque de declaración

declare --Se declaran las variables que se van a usar
    mi_numero number := 5; --
    valor_doble number;
begin 
    calcularDoble(mi_numero, valor_doble); --Toma las variable por su posicionamiento 
    dbms_output.put_line('EL doble de ' || mi_numero || ' es ' || valor_doble);
end;
/ 
drop procedure calcularDoble; --Eliminar el procedimiento