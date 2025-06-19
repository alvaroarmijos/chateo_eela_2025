import 'package:chateo_eela_2025/firebase_options.dart';
import 'package:chateo_eela_2025/ui/core/navigation/app_navigator.dart';
import 'package:chateo_eela_2025/ui/core/themes/theme.dart';
import 'package:chateo_eela_2025/ui/login/view/login_page.dart';
import 'package:chateo_eela_2025/ui/onboarding/view/onboarding_page.dart';
import 'package:chateo_eela_2025/ui/sign_up/cubit/sign_up_cubit.dart';
import 'package:chateo_eela_2025/ui/sign_up/view/sign_up_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      routes: {
        // reemplaza al home
        AppNavigator.main: (_) => OnboardingPage(),
        AppNavigator.login: (_) => LoginPage(),
        AppNavigator.signUp: (_) => BlocProvider(
          create: (context) => SignUpCubit(),
          child: SignUpPage(),
        ),
      },
      theme: AppTheme.light,
    );
  }
}
