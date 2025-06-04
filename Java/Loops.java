//Bucles
public class Loops {
    public static void main(String[] args) {
        
        System.out.println("Aquí empieza el bucle for");
        for (int i = 0; i < 10; i++) {
            System.out.print(i + ", ");
        }

        System.out.println("\n");
        System.out.println("Aquí empieza el bucle for-each"); //Iterar cadenas 
        int[] numeros = {1, 2, 3, 4};
        for(int numero : numeros){
            System.out.print(numero + ", ");
        }

        System.out.println("\n");
        System.out.println("Aquí empieza el bucle while");
        int i = 4;
        while(i > 3 &&  i < 10){ 
            System.out.println("El número es: " + i);
            i++;
        }

        System.out.println("\n");
        System.out.println("Aquí empieza el bucle do-while");
        int j = 8;
        do{
            System.out.println("Números Do: " + j);
            j++;
        } while (j < 19);

        System.out.println("\n");
        System.out.println("Bucle anidado");//Bucle dentro de otro bucle
        for (int a = 1; a <= 2; a++) {
            for (int b = 1; b <= 3; b++) {
              System.out.print(a + "," + b + " - ");
            }
        }

        System.out.println("\n");
        System.out.println("Break and Continue");
        for(int c = 1; c <=5; c++){
            if(c==3){
                break;//Termina el bucle.
            }
            System.out.println("Número: " + c);
        }
        for(int c = 1; c <=5; c++){
            if(c==3){
                continue;//Hace un salto y continua con el bucle.
            }
            System.out.println("Número: " + c);
        }

    }
}
