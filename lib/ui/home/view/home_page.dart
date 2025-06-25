import 'package:chateo_eela_2025/ui/auth/bloc/auth_bloc.dart';
import 'package:chateo_eela_2025/ui/core/navigation/app_navigator.dart';
import 'package:chateo_eela_2025/ui/core/ui/widgets/chat_avatar.dart';
import 'package:chateo_eela_2025/ui/home/widgets/chats.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final authState = context.read<AuthBloc>().state;
    final user = authState is AuthStateLoggedIn ? authState.user : null;
    final photoUrl = user?.photoURL;
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      //   title: Text('Home'),
      //   leading: Icon(Icons.navigate_next),
      //   actions: [CircleAvatar()],
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search, color: Colors.white),
                ),
                Text(
                  'Home',
                  style: textTheme.titleLarge?.copyWith(color: Colors.white),
                ),

                // BlocBuilder<AuthBloc, AuthState>(
                //   builder: (context, state) {
                //     if (state is AuthStateLoggedIn) {
                //       return CircleAvatar(
                //         backgroundImage: NetworkImage(
                //           state.user.photoURL ?? '',
                //         ),
                //       );
                //     }
                //     return SizedBox();
                //   },
                // ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppNavigator.profile);
                  },
                  child: ChatAvatar(
                    photoUrl: photoUrl,
                    name: user?.displayName ?? '',
                  ),
                ),
              ],
            ),
          ),
          const Chats(),
        ],
      ),
    );
  }
}
