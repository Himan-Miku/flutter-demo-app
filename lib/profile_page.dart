import 'package:flutter/material.dart';

const int listCount = 20;

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('List Item ${(index + 1)}'),
          leading: const Icon(Icons.person),
          trailing: const Icon(Icons.select_all),
          onTap: () => {debugPrint('List Item ${(index + 1)} selected!')},
        );
      },
      itemCount: listCount,
    );
  }
}
