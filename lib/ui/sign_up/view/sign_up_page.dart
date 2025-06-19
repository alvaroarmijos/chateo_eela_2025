import 'package:chateo_eela_2025/ui/core/ui/colors.dart';
import 'package:chateo_eela_2025/ui/sign_up/cubit/sign_up_cubit.dart';
import 'package:chateo_eela_2025/utils/validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _globalKey = GlobalKey<ScaffoldMessengerState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    // final double keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    final formKey = GlobalKey<FormState>();
    final cubit = context.read<SignUpCubit>();

    return Scaffold(
      key: _globalKey,
      appBar: AppBar(),
      body: Form(
        key: formKey,
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            const SizedBox(height: 20),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Sign up with ',
                style: textTheme.labelLarge,
                children: [
                  TextSpan(
                    text: 'Email',
                    style: textTheme.labelLarge?.copyWith(
                      decoration: TextDecoration.underline,
                      decorationThickness: 10,
                      decorationColor: theme.colorScheme.primary.withOpacity(
                        0.7,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Get chatting with friends and family today by signing up for our chat app!',
              style: TextStyle(color: AppColors.darkGrey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            TextFormField(
              textInputAction: TextInputAction.next,
              onChanged: cubit.onNameChanged,
              decoration: const InputDecoration(label: Text('Your name')),
              validator: Validators.validateName,
              autovalidateMode: AutovalidateMode.onUserInteraction,
            ),
            const SizedBox(height: 16),
            TextFormField(
              textInputAction: TextInputAction.next,
              onChanged: cubit.onEmailChanged,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(label: Text('Your email')),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: Validators.validateEmail,
            ),
            const SizedBox(height: 16),
            TextFormField(
              textInputAction: TextInputAction.next,
              onChanged: cubit.onPasswordChanged,
              obscureText: true,
              decoration: const InputDecoration(label: Text('Password')),
              // agregar validación a la contraseña
              validator: Validators.validatePassword,
              autovalidateMode: AutovalidateMode.onUserInteraction,
            ),
            const SizedBox(height: 16),
            BlocBuilder<SignUpCubit, SignUpState>(
              builder: (context, state) {
                return TextFormField(
                  textInputAction: TextInputAction.done,
                  onChanged: cubit.onConfirmPasswordChanged,
                  obscureText: true,
                  decoration: const InputDecoration(
                    label: Text('Confirm Password'),
                  ),
                  validator: Validators.validatePassword,
                  forceErrorText: state.passwordMatch
                      ? null
                      : 'Contraseña no coincide',
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                );
              },
            ),
            const SizedBox(height: 92),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ).copyWith(bottom: 32),
        child: ElevatedButton(
          onPressed: () {
            final isValid = formKey.currentState?.validate() ?? false;
            if (isValid) {
              // llamar al cubit para registrar al usuario
              cubit.createAccount();
            }
          },
          child: const Text('Create an account'),
        ),
      ),
    );
  }
}
