import 'package:chateo_eela_2025/ui/home/bloc/home_bloc.dart';
import 'package:chateo_eela_2025/ui/home/widgets/chat_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 0.8;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 12),
      height: height,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12, bottom: 20),
            child: Text(
              'My Contacts',
              style: textTheme.labelLarge,
              textAlign: TextAlign.left,
            ),
          ),
          Flexible(
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                final contacts = state.contacts;

                return ListView.builder(
                  itemCount: contacts.length,
                  itemBuilder: (context, index) =>
                      ChatItem(contact: contacts[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
