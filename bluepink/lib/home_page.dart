import 'package:flutter/material.dart';

const itemCount = 20;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('Item ${(index + 1)}'),
          leading: const Icon(Icons.emoji_objects),
          trailing: const Icon(Icons.select_all),
          onTap: () {
            debugPrint('Item ${(index)} selected');
          },
        );
      },
    );
  }
}
