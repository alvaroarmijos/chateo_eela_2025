import 'package:chateo_eela_2025/widgets/onboarding_divider.dart';
import 'package:chateo_eela_2025/widgets/social_media_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final double keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    final inputTheme = InputDecorationTheme(
      labelStyle: TextStyle(
        color: Color(0xFF24786D),
        fontWeight: FontWeight.normal,
        fontSize: 14,
      ),
      border: UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0xFFD6E4E0)),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0xFFD6E4E0)),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0xFFD6E4E0)),
      ),
    );

    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(height: 20),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'Log in',
              style: textTheme.labelLarge?.copyWith(
                decoration: TextDecoration.underline,
                decorationThickness: 10,
                decorationColor: theme.colorScheme.primary.withOpacity(0.7),
              ),
              children: [
                TextSpan(text: ' to Chateo', style: textTheme.labelLarge),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Welcome back! Sign in using your social account or email to continue us',
            style: TextStyle(color: Color(0xFF797C7B)),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 16,
              children: [
                SocialMediaButton(iconPath: 'assets/icons/facebook.png'),
                SocialMediaButton(iconPath: 'assets/icons/google.png'),
                SocialMediaButton(
                  iconPath: 'assets/icons/apple.png',
                  color: Colors.black,
                ),
              ],
            ),
          ),
          OnboardingDivider(color: Color(0xFF797C7B)),
          TextFormField(
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(label: Text('Your email')),
          ),
          const SizedBox(height: 16),
          TextFormField(
            enabled: true,
            textInputAction: TextInputAction.done,
            obscureText: true,
            decoration: const InputDecoration(label: Text('Password')),
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ).copyWith(bottom: 20 + keyboardHeight),
          child: ElevatedButton(onPressed: () {}, child: const Text('Log in')),
        ),
      ),
    );
  }
}
