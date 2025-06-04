//Herencia
class Persona{ //Clase padre
    String nombre;

    Persona(String nombre){
        this.nombre = nombre;
    }
}

class Estudiante extends Persona{
    int edad;

    Estudiante(String nombre, int edad){
        super(nombre);
        this.edad = edad;
    }

    @Override
    public String toString(){//Para sobreescribir siempre debe ir con esta sintaxis
        return "Nombre: " + nombre + "\nEdad: " + edad;
    }

    /*Esta es otra forma para mostrar los datos sin sobreescribir el método
    public String mostrarDatos(){
        return "Nombre: " + nombre + "\n" + "Edad: " + edad;
    }*/

}

public class Inheritance { 
    
    public static void main(String[]args){
        Estudiante datos = new Estudiante("Katterin", 22);
        System.out.println(datos);
    //System.out.println(datos.mostrarDatos()); Sálida del ejemplo de arriba
    }
}


