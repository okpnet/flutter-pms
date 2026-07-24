import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:theme_lib/apps/apps.dart';
import 'package:theme_lib/extenssions/extenssions.dart';

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
      theme: appTheme,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            context.spaceAll(
              ElevatedButton(
                onPressed: () => true,
                child: Text('primary'),
                style: context.primaryBtn,
              ),
            ),
            context.spaceAll(
              OutlinedButton(
                onPressed: () => true,
                child: Text('secondary'),
                style: context.secondaryBtn,
              ),
            ),
            context.spaceAll(
              TextButton(
                onPressed: () => true,
                child: Text('tertiaryBtn'),
                style: context.tertiaryBtn,
              ),
            ),
            context.spaceAll(
              IconButton(
                onPressed: () => true,
                icon: Icon(Icons.home),

                style: context.iconPrimaryBtn,
              ),
            ),
            context.spaceAll(
              IconButton(
                onPressed: () => true,
                icon: Icon(Icons.home_outlined),
                style: context.iconSecondaryBtn,
              ),
            ),
            context.spaceAll(
              IconButton(
                onPressed: () => true,
                icon: Icon(Icons.home_max_rounded),
                style: context.iconTertiary,
              ),
            ),
            Row(
              spacing: context.spacing,
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: context.primaryInputDecoration.copyWith(
                      label: Text('label'),
                    ),
                  ),
                ),
              ],
            ),
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
