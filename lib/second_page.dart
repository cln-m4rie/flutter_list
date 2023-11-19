import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  SecondPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Container(
          alignment: Alignment.center,
          color: Colors.blue[200],
          child: Column(
            children: [
              Text("clicked: $title"),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Go Back'),
              ),
            ],
          )),
    );
  }
}
