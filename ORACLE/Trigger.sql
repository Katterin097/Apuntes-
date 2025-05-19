----------Son bloques de códigos que se ejecutan automáticamente en respuesta a ciertos eventos.

create or replace trigger JHS_TRG_UPLOAD_TRANSLATIONS --Nombre del trigger
before/*o after*/ insert or update on JHS_UPLOAD_TRANSLATIONS --Nombre de la tabla
for each row --Se ejecuta por cada fila que inserta o actualiza.