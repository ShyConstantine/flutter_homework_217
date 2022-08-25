import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Push for count',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const MyHomePage(title: 'Push me'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 50;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Tap to "-" for decriment',
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.orange,
                border: Border.all(
                  width: 3,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              margin: const EdgeInsets.fromLTRB(125, 10, 125, 10),
              alignment: Alignment.center,
              child: Row(
                children: [
                  IconButton(
                    onPressed: _decrementCounter,
                    icon: const Icon(Icons.exposure_minus_1),
                    iconSize: 30,
                  ),
                  Text(
                    '$_counter',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  IconButton(
                    onPressed: _incrementCounter,
                    icon: const Icon(Icons.exposure_plus_1),
                    iconSize: 30,
                  ),
                ],
              ),
            ),
            const Text(
              'Tap to "+" for incriment',
            ),
          ],
        ),
      ),
    );
  }
}
