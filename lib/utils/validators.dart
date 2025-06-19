class Validators {
  // Validación para el email
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

  /// Validación para la contraseña
  ///
  /// Verifica que la contraseña tenga como minímo 4 caracteres
  static String? validatePassword(String? email) {
    if (email == null || email.isEmpty || email.length < 4) {
      return 'Ingresa una contraseña válida';
    }
    return null;
  }

  /// Validación para el nombre
  ///
  /// Verifica que el nombre tenga como minímo 2 caracteres
  static String? validateName(String? name) {
    if (name == null || name.isEmpty || name.length < 2) {
      return 'Ingresa un nombre válido';
    }
    return null;
  }
}
