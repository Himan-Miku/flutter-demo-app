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
          ),
          Container(
            width: double.infinity,
            color: Colors.lightBlue,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'This is inside a container',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
