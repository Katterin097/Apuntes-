public class Array {
    public static void main(String[] args){
        int[] numeros = {1, 2, 3};
        
        System.out.println("Mi array es de " + numeros.length + " indices"); //Saber la longitud
        System.out.println("Mi segundo indice es: " + numeros[1]); //Traer el indice
        
        System.out.println("\n");
        System.out.println("Array multidimencional");
        String[][] nombres ={ 
            {"Ana", "Rodriguez"}, 
            {"Juan", "Ortiz"},
            {"Camila", "Ortega"}
        };
        System.out.println("Mi array multidimencional es de " +nombres.length + " indices");
        System.out.println("El nombre de mi sengundo indice es " + nombres[1][0] + " y su apellido es " + nombres[1][1]);
    }
}
