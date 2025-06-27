 interface Figura {
    double calcularArea();
}

class Circulo implements Figura{
    double radio;

    public Circulo(double radio) {
        this.radio = radio;
    }

    public double calcularArea() {
        return Math.PI * radio * radio;
    }
}

class Rectangulo implements Figura{
    double base;
    double altura;

    public Rectangulo(double base, double altura) {
        this.base = base;
        this.altura = altura;
    }

    public double calcularArea() {
        return base * altura;
    }
}

public class Interface {
    public static void main(String[] args) {
        Figura c = new Circulo(5);
        Figura r = new Rectangulo(4, 3);

        System.out.println("Área del círculo: " + c.calcularArea());
        System.out.println("Área del rectángulo: " + r.calcularArea());
    }
}

//Es obligatorio implementar los métodos que tiene la interfaz