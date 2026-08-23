import 'package:example/common_layout.dart';
import 'package:flutter/material.dart';
import 'package:view_responsiveness/responsive/responsive.dart';
import 'package:view_responsiveness/responsiveness.dart';

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
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
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
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ResponsiveGrid(
              config: ResponsiveGridConfig(
                defaultPcCells: 12,
                defaultTabletCells: 9,
                defaultMobileCells: 3,
              ),
              children: [
                ResponsiveCell(
                  layout: CommonLayouts.quortfWidth,
                  child: Container(
                    width: double.infinity,
                    color: Colors.amber,
                    child: Text("grid1"),
                  ),
                ),
                ResponsiveCell(
                  layout: CommonLayouts.quortfWidth,
                  child: Container(
                    width: double.infinity,
                    color: Colors.blue,
                    child: Text("grid1"),
                  ),
                ),
                ResponsiveCell(
                  layout: CommonLayouts.quortfWidth.copyWith(
                    wrapCellAlignment: .centerLeft,
                  ),
                  child: Container(
                    width: double.infinity,
                    color: Colors.green,
                    child: Text("grid1"),
                  ),
                ),
                ResponsiveCell(
                  layout: CommonLayouts.quortfWidth.copyWith(
                    wrapCellAlignment: .centerLeft,
                    showOnPc: false,
                    showOnTablet: false,
                    showOnMobile: true,
                  ),
                  child: Container(
                    width: double.infinity,
                    color: Colors.grey,
                    child: Text("grid1"),
                  ),
                ),
                ResponsiveCell(
                  layout: CommonLayouts.quortfWidth,
                  child: Container(
                    width: double.infinity,
                    color: Colors.pink,
                    child: Text("grid1"),
                  ),
                ),
                ResponsiveCell(
                  layout: CommonLayouts.quortfWidth.copyWith(
                    showOnMobile: false,
                  ),
                  child: Container(
                    width: double.infinity,
                    color: Colors.purple,
                    child: Text("grid1"),
                  ),
                ),
              ],
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
