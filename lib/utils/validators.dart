class Validators {
  static String? validateEmail(String? email) {
    if (email == null || email.isEmpty) return 'Ingresa un email válido';

    final regExpr = RegExp(
      r"^[Aa-z-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    );

    if (regExpr.hasMatch(email)) {
      return null;
    } else {
      return 'Correo no válido';
    }
  }

  // Agregar validación para la contraseña
}
