import 'package:chateo_eela_2025/ui/profile/cubit/profile_cubit.dart';
import 'package:chateo_eela_2025/ui/profile/widgets/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: BlocBuilder<ProfileCubit, ProfileState>(
        builder: (context, state) {
          return switch (state) {
            ProfileStateLoading() => const SizedBox(),
            ProfileStateLoggedIn(user: final user) => ProfileView(user: user),
          };
        },
      ),
    );
  }
}
