abstract class AuthRepository {
  Future<void> signUp(String name, String email, String password);

  // login

  // login con Google
  Future<void> signInWithGoogle();
}
