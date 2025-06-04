public class Method {
    public static int suma(int a, int b){
        return a + b; //Siempre debe ir return
    }

    public static void mostrarResultado(int x, int y){ //Void no retorna valor
        int resultado = suma(x, y);
        System.out.println("Hola, el resultado de " + x + " + " + y + " es: " +resultado);
    }

    public static void main(String[] args){
        mostrarResultado(10, 5);
    }

}
