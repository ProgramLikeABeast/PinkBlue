import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _loginPageState();
}

class _loginPageState extends State<LoginPage> {
  // is the box checked?
  bool? isCheckbox = false;

  showInfoDialog(BuildContext context) {
    // Create button
    Widget okButton = FlatButton(
      child: const Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // Create AlertDialog
    AlertDialog info = AlertDialog(
      title: const Text("About Us"),
      content: const Text(
          "Pink Blue is a dedicated platform for art lovers to seek and discover beauty in the artifacts. Welcome to our community."),
      actions: [
        okButton,
      ],
    );

    /*AlertDialog success = AlertDialog(
      title: const Text("Login Success"),
      //content: const Text("Please agree to the terms."),
      actions: [
        okButton,
      ],
    );*/
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return info;
      },
    );
  }

  showAlertDialog(BuildContext context) {
    // Create button
    Widget okButton = FlatButton(
      child: const Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // Create AlertDialog
    AlertDialog fail = AlertDialog(
      title: const Text("Login Failed"),
      content: const Text("Please agree to the terms."),
      actions: [
        okButton,
      ],
    );

    /*AlertDialog success = AlertDialog(
      title: const Text("Login Success"),
      //content: const Text("Please agree to the terms."),
      actions: [
        okButton,
      ],
    );*/
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return fail;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Log in to your account'),
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          actions: [
            IconButton(
              onPressed: () {
                debugPrint('Actions');
                showInfoDialog(context);
              },
              icon: const Icon(Icons.info_outline),
            ),
          ]),
      body: Container(
        margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        /*decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background1.jpg"),
            fit: BoxFit.cover,
          ),
        ),*/
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('images/david.jpg'),
              Container(
                height: 15,
              ),
              const Divider(
                indent: 170,
                endIndent: 170,
                color: Colors.black,
                height: 3,
                thickness: 2,
              ),
              const Divider(
                indent: 120,
                endIndent: 120,
                color: Colors.black,
                height: 6,
                thickness: 2,
              ),
              const Divider(
                indent: 80,
                endIndent: 80,
                color: Colors.black,
                height: 9,
                thickness: 2,
              ),
              const Divider(
                indent: 35,
                endIndent: 35,
                color: Colors.black,
                height: 12,
                thickness: 2,
              ),
              const Divider(
                color: Colors.black,
                height: 15,
                thickness: 2,
              ),
              Column(
                children: const [
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      //border: InputBorder.none,
                      //labelText: 'Email',
                      hintText: 'Enter Email',
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      //border: InputBorder.none,
                      //labelText: 'Password',
                      hintText: 'Enter Password',
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      debugPrint('Login Button');
                      if (isCheckbox == true) {
                        debugPrint('Login Success');
                        Navigator.of(context).pop();
                      } else {
                        debugPrint('Login Failed');
                        showAlertDialog(context);
                      }
                    },
                    child: const Text(
                      'Log in',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      debugPrint('Cancel Button');
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      'Cancel',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () => debugPrint('Create Account Button'),
                style: TextButton.styleFrom(primary: Colors.black),
                child: const Text(
                  "Don't have an account? Create one!",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Checkbox(
                    value: isCheckbox,
                    onChanged: (bool? newBool) {
                      setState(() {
                        isCheckbox = newBool;
                      });
                    },
                  ),
                  const Text('I agree to the'),
                  TextButton(
                    onPressed: () => debugPrint('Terms Button'),
                    style: TextButton.styleFrom(
                      primary: const Color.fromARGB(255, 3, 75, 135),
                    ),
                    child: const Text('Terms and Conditions'),
                  ),
                ],
              ),
              const Divider(
                color: Colors.black,
                height: 15,
                thickness: 2,
              ),
              const Divider(
                indent: 35,
                endIndent: 35,
                color: Colors.black,
                height: 12,
                thickness: 2,
              ),
              const Divider(
                indent: 80,
                endIndent: 80,
                color: Colors.black,
                height: 9,
                thickness: 2,
              ),
              const Divider(
                indent: 120,
                endIndent: 120,
                color: Colors.black,
                height: 6,
                thickness: 2,
              ),
              const Divider(
                indent: 170,
                endIndent: 170,
                color: Colors.black,
                height: 3,
                thickness: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
