import 'package:flutter/material.dart';
import './login_page.dart';

const int itemCount = 5;

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return const LoginPage();
          }));
        },
        child: const Text('Log In'),
      ),
    );
  }
}
