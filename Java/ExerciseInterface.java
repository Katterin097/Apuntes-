import java.util.Scanner;

// Interfaz
interface Sonido {
    void hacerSonido();
}

// Clase Perro
class Perro implements Sonido {
    public void hacerSonido() {
        System.out.println("El perro ladra: ¡Guau!");
    }
}

// Clase Gato
class Gato implements Sonido {
    public void hacerSonido() {
        System.out.println("El gato maúlla: ¡Miau!");
    }
}

// Clase Principal
public class ExerciseInterface {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("¿Qué animal quieres escuchar? (perro/gato): ");
        String opcion = scanner.nextLine().toLowerCase();

        Sonido animal;

        if (opcion.equals("perro")) {
            animal = new Perro();
        } else if (opcion.equals("gato")) {
            animal = new Gato();
        } else {
            System.out.println("Animal no reconocido.");
            scanner.close();
            return;
        }

        animal.hacerSonido();

        scanner.close();
    }
}


/*interface Sonido {
    void hacerSonido();
    
}

class Perro implements Sonido{
    public void hacerSonido(){
        System.out.println("El perro ladra"); 
    }
}

class Gato implements Sonido {
    public void hacerSonido(){
        System.out.println("El gato maulla");
    }
    
}


public class ExerciseInterface {
    public static void main(String [] args){
        Sonido miPerro = new Perro();
        Sonido miGato = new Gato();

        miPerro.hacerSonido();
        miGato.hacerSonido();
    }

}*/
