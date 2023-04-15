import 'package:flutter/material.dart';

const int itemCount = 5;

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({Key? key}) : super(key: key);

  @override
  State<LearnFlutterPage> createState() => _learnFlutterPageState();
}

// ignore: camel_case_types
class _learnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Learn Flutter'),
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
              },
              icon: const Icon(Icons.info_outline),
            ),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/david.jpg'),
            /*Container(
            height: 50,
            color: Colors.blue,
          ),*/
            const Divider(
              color: Colors.black,
              height: 10,
              thickness: 2,
            ),
            const Divider(
              color: Colors.black,
              height: 10,
              thickness: 2,
            ),
            const Divider(
              color: Colors.black,
              height: 10,
              thickness: 2,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              width: double.infinity,
              color: Colors.blue,
              child: const Center(
                child: Text('This is a text widget',
                    style: TextStyle(color: Colors.white)),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: isSwitch ? Colors.blue : Colors.pink,
              ),
              onPressed: () => debugPrint('Elevated Button'),
              child: const Text('Elevated Button'),
            ),
            OutlinedButton(
              onPressed: () => debugPrint('Elevated Button'),
              child: const Text('Elevated Button'),
            ),
            TextButton(
              onPressed: () => debugPrint('Elevated Button'),
              child: const Text('Elevated Button'),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('Gesture detected');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                  Text('Row Widgets'),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            Switch(
              value: isSwitch,
              onChanged: (bool newBool) {
                setState(() => {isSwitch = newBool});
              },
            ),
            Checkbox(
              value: isCheckbox,
              onChanged: (bool? newBool) {
                setState(() {
                  isCheckbox = newBool;
                });
              },
            ),
            Image.asset('images/david.jpg'),
          ],
        ),
      ),
    );
  }
}
