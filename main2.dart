import 'dart:math';

// Definición de la clase Calculadora
class Calculadora {
  // Método para realizar la suma
  double suma(double a, double b) => a + b;

  // Método para realizar la resta
  double resta(double a, double b) => a - b;

  // Método para realizar la multiplicación
  double multiplicacion(double a, double b) => a * b;

  // Método para realizar la división
  double division(double a, double b) {
    if (b != 0) {
      return a / b;
    } else {
      throw ArgumentError('El divisor no puede ser cero');
    }
  }
}

// Definición del mixin OperacionesAdicionales
mixin OperacionesAdicionales {
  // Método para calcular la potencia
  num potencia(double base, double exponente) => pow(base, exponente);
}

// Definición del mixin OperacionesAvanzadas
mixin OperacionesAvanzadas {
  // Método para calcular la raíz cuadrada
  double raizCuadrada(double numero) => sqrt(numero);
}

// Definición de la clase CalculadoraAvanzada que usa ambos mixins
class CalculadoraAvanzada extends Calculadora with OperacionesAdicionales, OperacionesAvanzadas {}

void main() {
  // Creación de un objeto de tipo CalculadoraAvanzada
  var calcAvanzada = CalculadoraAvanzada();

  // Realización de algunas operaciones matemáticas
  print('Suma: ${calcAvanzada.suma(10, 5)}');
  print('Resta: ${calcAvanzada.resta(10, 5)}');
  print('Multiplicación: ${calcAvanzada.multiplicacion(10, 5)}');
  print('División: ${calcAvanzada.division(10, 5)}');
  print('Potencia: ${calcAvanzada.potencia(2, 3)}');
  print('Raíz cuadrada: ${calcAvanzada.raizCuadrada(16)}');
}
