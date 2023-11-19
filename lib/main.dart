import 'package:flutter/material.dart';
import 'package:flutter_list/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo Home Page'),
        ),
        body: Container(
          alignment: Alignment.center,
          color: Colors.blue[200],
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return MenuButton(title: (index + 1).toString());
            },
          ),
        ),
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  const MenuButton({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return menuItem(title, () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => SecondPage(title: title)));
    });
  }
}

Widget menuItem(String title, Function() onPressed) {
  return GestureDetector(
    onTap: onPressed,
    child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 1.0,
              color: Colors.grey,
            ),
          ),
        ),
        child: TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.all(24),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(0.0)),
            ),
          ),
          onPressed: onPressed,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                const Icon(Icons.add),
                const SizedBox(width: 8.0),
                Text(title),
              ],
            ),
          ),
        )),
  );
}
