import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  Future<void> signUp(String name, String email, String password);

  // login

  // login con Google
  Future<void> signInWithGoogle();

  // saber si tenemos algún usuario logueado
  Stream<User?> get currentUser;

  // Cerrar sesión
  Future<void> logOut();
}
