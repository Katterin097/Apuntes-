//Sobre carga de métodos(polimorfismo)
public class methodOverloading {
    public int sumar( int a, int b){
        return a + b;
    }
    public double sumar(double a, double b){
        return a + b;
    }   

    public static void main(String[] args){
        methodOverloading result = new methodOverloading();

        System.out.println("El valor de la suma int es: " + result.sumar(4, 3));
        System.out.println("El valor de la suma double es: " + result.sumar(4.3, 3.4));

    }
}

//Se puede crear más de una clase en un mismo archivo, pero solo 1 puede ser pública.
/*class resultados{
    public static void main(String[] args){
        methodOverloading result = new methodOverloading();

        System.out.println("El valor de la suma int es: " + result.sumar(4, 3));
        System.out.println("El valor de la suma double es: " + result.sumar(4.3, 3.4));

    }
}*/
