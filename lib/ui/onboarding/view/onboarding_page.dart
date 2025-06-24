import 'package:chateo_eela_2025/ui/core/navigation/app_navigator.dart';
import 'package:chateo_eela_2025/ui/core/ui/colors.dart';
import 'package:chateo_eela_2025/ui/core/ui/widgets/social_media_button.dart';
import 'package:chateo_eela_2025/ui/onboarding/cubit/onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/icons/icon_app.png'),
                  Text(
                    'Connect friends easily & quickly',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 68,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Our chat app is the perfect way to stay connected with friends and family.',
                    style: TextStyle(
                      color: AppColors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 16,
                    children: [
                      SocialMediaButton(
                        iconPath: 'assets/icons/facebook.png',
                        borderColor: AppColors.grey,
                      ),
                      SocialMediaButton(
                        iconPath: 'assets/icons/google.png',
                        borderColor: AppColors.grey,
                        onTap: () {
                          context.read<OnboardingCubit>().signInWithGoogle();
                        },
                      ),
                      SocialMediaButton(
                        iconPath: 'assets/icons/apple.png',
                        borderColor: AppColors.grey,
                      ),
                    ],
                  ),
                  Row(
                    spacing: 4,
                    children: [
                      Expanded(
                        child: Divider(
                          color: Color(0xFFCDD1D0),
                          thickness: 0.5,
                        ),
                      ),
                      Text(
                        'OR',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      Expanded(
                        child: Divider(
                          color: Color(0xFFCDD1D0),
                          thickness: 0.5,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(16),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, AppNavigator.signUp);
                      },
                      child: Text('Sign up withn mail'),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppNavigator.login);
                    },
                    child: RichText(
                      text: TextSpan(
                        text: 'Existing account?',
                        style: TextStyle(color: AppColors.grey, fontSize: 14),
                        children: [
                          TextSpan(
                            text: ' Log in',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
