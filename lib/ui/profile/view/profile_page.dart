import 'package:chateo_eela_2025/data/repositories/auth/auth_repository_impl.dart';
import 'package:chateo_eela_2025/data/repositories/contacts/contacts_repository_impl.dart';
import 'package:chateo_eela_2025/ui/auth/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final authState = context.read<AuthBloc>().state;
            final user = authState is AuthStateLoggedIn ? authState.user : null;
            if (user != null) {
              ContactsRepositoryImpl().updateUserStatus(user, false);
              AuthRepositoryImpl().logOut();
            }
          },
          child: Text('Log out'),
        ),
      ),
    );
  }
}
