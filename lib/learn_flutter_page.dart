import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn Flutter Page"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Column(
        children: [
          Image.asset('images/Nino.png'),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.blue,
            thickness: 3,
            indent: 50,
            endIndent: 50,
          ),
          Container(
            width: double.infinity,
            color: Colors.lightBlue,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(top: 10.0, bottom: 20.0),
            child: const Center(
              child: Text(
                'This is inside a container',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          OutlinedButton(
            onPressed: () => {debugPrint('Outlined Button clicked')},
            child: const Text('Outlined Button'),
          ),
          TextButton(
            onPressed: () => {debugPrint('Text Button clicked')},
            child: const Text('Text Button'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(
                Icons.local_fire_department,
              ),
              Text('Row Text Widget'),
              Icon(
                Icons.local_fire_department,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
