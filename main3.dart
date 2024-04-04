// Definición de la clase base Empleado
class Empleado {
  String nombre;
  String apellido;
  double salario;
  int horasTrabajadas;

  Empleado(this.nombre, this.apellido, this.salario, this.horasTrabajadas);
}

// Definición del mixin Bonificaciones
mixin Bonificaciones {
  // Método para calcular la bonificación basada en el salario
  double calcularBonificacion(double salario) {
    // Por ejemplo, la bonificación puede ser el 10% del salario
    return salario * 0.10;
  }
}

// Definición de la clase EmpleadoConBonificaciones que hereda de Empleado y utiliza el mixin Bonificaciones
class EmpleadoConBonificaciones extends Empleado with Bonificaciones {
  EmpleadoConBonificaciones(String nombre, String apellido, double salario, int horasTrabajadas)
      : super(nombre, apellido, salario, horasTrabajadas);
}

void main() {
  // Creación de una lista de objetos EmpleadoConBonificaciones
  var empleados = [
    EmpleadoConBonificaciones("Juan", "García", 2000, 40),
    EmpleadoConBonificaciones("María", "López", 2500, 35),
    EmpleadoConBonificaciones("Pedro", "Martínez", 1800, 45),
  ];

  // Calculamos la bonificación para cada empleado y mostramos el resultado
  for (var empleado in empleados) {
    double bonificacion = empleado.calcularBonificacion(empleado.salario);
    print('${empleado.nombre} ${empleado.apellido}: Bonificación \$${bonificacion.toStringAsFixed(2)}');
  }
}
