// Definición de la clase base Usuario
class Usuario {
  String nombre;
  String email;
  String contrasena;

  Usuario(this.nombre, this.email, this.contrasena);
}

// Definición del mixin Autenticacion
mixin Autenticacion {
  // Definimos getters abstractos para email y contrasena
  String get email;
  String get contrasena;
  
  void iniciarSesion(String email, String contrasena) {
    if (this.email == email && this.contrasena == contrasena) {
      print("Inicio de sesión exitoso.");
    } else {
      print("Credenciales incorrectas. Inicio de sesión fallido.");
    }
  }
}

// Definición de la clase UsuarioAutenticado que hereda de Usuario y utiliza el mixin Autenticacion
class UsuarioAutenticado extends Usuario with Autenticacion {
  UsuarioAutenticado(String nombre, String email, String contrasena)
      : super(nombre, email, contrasena);

  // Implementamos los getters 'email' y 'contrasena' requeridos por el mixin
  @override
  String get email => super.email; // Accedemos al getter de la clase base
  @override
  String get contrasena => super.contrasena; // Accedemos al getter de la clase base
}

void main() {
  // Creación de un objeto de tipo UsuarioAutenticado
  var usuarioAutenticado =
      UsuarioAutenticado("Ejemplo Usuario", 'jeremy.bellido@gmail.com', "contrasena123");

  // Invocación del método iniciarSesion
  usuarioAutenticado.iniciarSesion('jeremy.bellido@gmail.com', "contrasena123");
}
