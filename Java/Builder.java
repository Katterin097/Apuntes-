//Constructores
public class Builder {
    String nombre;
    int edad;
    String ciudad;

    public Builder(String nom, String ciudad){//Puede estar vacio(sin parámetros)
        nombre = nom;
        this.ciudad = ciudad;//This se usa para diferenciar los atributos de los parámetros
    }

    @Override/*Indica que se está reescribiendo un método que ya existe
            Es opcional, pero ayuda a saber si hay errores*/
    public String toString(){//toString() sirve para decidir cómo se va a representar un objeto como texto cuando se usae en algo como System.out.println()
        return "Nombre: " + nombre + "\n" + "Ciudad: " + ciudad;
    }

    public static void main(String[]args){
        Builder ejemplo = new Builder("Katterin", "Bogotá");
        System.out.println(ejemplo);
    }
 
}
