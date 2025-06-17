import 'package:flutter/material.dart';

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
    final double keyboardHeight = MediaQuery.of(context).viewInsets.bottom;

    return Scaffold(
      key: _globalKey,
      appBar: AppBar(),
      body: ListView(
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
                    decorationColor: theme.colorScheme.primary.withOpacity(0.7),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Get chatting with friends and family today by signing up for our chat app!',
            style: TextStyle(color: Color(0xFF797C7B)),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          TextFormField(
            textInputAction: TextInputAction.next,
            onChanged: (value) {},
            decoration: const InputDecoration(label: Text('Your name')),
          ),
          const SizedBox(height: 16),
          TextFormField(
            textInputAction: TextInputAction.next,
            onChanged: (value) {},
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(label: Text('Your email')),
          ),
          const SizedBox(height: 16),
          TextFormField(
            textInputAction: TextInputAction.next,
            onChanged: (value) {},
            obscureText: true,
            decoration: const InputDecoration(label: Text('Password')),
          ),
          const SizedBox(height: 16),
          TextFormField(
            textInputAction: TextInputAction.done,
            onChanged: (value) {},
            obscureText: true,
            decoration: const InputDecoration(label: Text('Confirm Password')),
          ),
          const SizedBox(height: 92),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ).copyWith(bottom: 32 + keyboardHeight),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Create an account'),
        ),
      ),
    );
  }
}
