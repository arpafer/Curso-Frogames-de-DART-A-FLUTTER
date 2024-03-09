import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Contador App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const CounterApp());
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<StatefulWidget> createState() => CounterState();
}

class CounterState extends State<CounterApp> {
  int _counter = 0;

  void _increaseCounter() {
    setState(() => _counter++);
  }

  void _resetCounter() {
    setState(() => _counter = 0);
  }

  void _multiplyCounter() {
    setState(() => _counter = _counter * 2);
  }

  void _decrementCounter() {
    setState(() => _counter--);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Contador App"),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                print("Button - Action Menu");
              },
              icon: const Icon(Icons.menu)),
          actions: [
            IconButton(
                onPressed: () {
                  print("Button - Action Settings");
                },
                icon: const Icon(Icons.settings))
          ]),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("Callback from the counter control",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 10)),
                const SizedBox(height: 32),
                Text(_counter.toString(), style: const TextStyle(fontSize: 45)),
                const SizedBox(width: 50, height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                        child: const Icon(Icons.restore),
                        onPressed: () => _resetCounter()),
                    FloatingActionButton(
                      child: const Icon(Icons.close),
                      onPressed: () => _multiplyCounter(),
                    ),
                    FloatingActionButton(
                      child: const Icon(Icons.remove),
                      onPressed: () => _decrementCounter(),
                    ),
                    FloatingActionButton(
                      child: const Icon(Icons.add),
                      onPressed: () => _increaseCounter(),
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
