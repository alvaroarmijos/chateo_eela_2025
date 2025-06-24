import 'package:bloc/bloc.dart';
import 'package:chateo_eela_2025/data/repositories/auth/auth_repository_impl.dart';

class OnboardingCubit extends Cubit<void> {
  OnboardingCubit() : super(());

  final _authRepository = AuthRepositoryImpl();

  void signInWithGoogle() {
    _authRepository.signInWithGoogle();
  }

  // inicio de sesión con FB

  // Inicio de sesión con Apple ID
}
