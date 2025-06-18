import 'package:chateo_eela_2025/ui/core/navigation/app_navigator.dart';
import 'package:chateo_eela_2025/ui/core/themes/theme.dart';
import 'package:chateo_eela_2025/ui/login/view/login_page.dart';
import 'package:chateo_eela_2025/ui/onboarding/view/onboarding_page.dart';
import 'package:chateo_eela_2025/ui/sign_up/view/sign_up_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

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
        AppNavigator.signUp: (_) => SignUpPage(),
      },
      theme: AppTheme.light,
    );
  }
}
