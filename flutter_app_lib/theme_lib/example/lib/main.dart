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
              FilledButton(
                onPressed: () => true,
                child: Text('primary'),
              ).toPrimary(context),
            ),
            context.spaceAll(
              FilledButton(
                onPressed: () => true,
                child: Text('secondary'),
              ).toSecondary(context),
            ),
            context.spaceAll(
              FilledButton(
                onPressed: () => true,
                child: Text('tertiaryBtn'),
              ).toTertiary(context),
            ),
            context.spaceAll(
              IconButton(
                onPressed: () => true,
                icon: Icon(Icons.home),
              ).toPrimary(context),
            ),
            context.spaceAll(
              IconButton(
                onPressed: () => true,
                icon: Icon(Icons.home_outlined),
              ).toSecondary(context),
            ),
            context.spaceAll(
              IconButton(
                onPressed: () => true,
                icon: Icon(Icons.home_max_rounded),
              ).toTertiary(context),
            ),
            Row(
              spacing: context.spacing,
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(label: Text('label1')),
                  ).toPrimary(context),
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: Text('label2'),
                      prefixIcon: Icon(Icons.sunny_snowing),
                    ),
                  ).toPrimary(context),
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: Text('label3'),
                      prefixIcon: Icon(Icons.search),
                    ),
                  ).toSearch(context),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (_) => false,
                ).toPrimary(context),
                Checkbox(
                  value: false,
                  onChanged: (_) => false,
                ).toPrimary(context),
                Checkbox(
                  value: true,
                  onChanged: (_) => false,
                ).toSecondary(context),
                Checkbox(
                  value: false,
                  onChanged: (_) => false,
                ).toSecondary(context),
                Checkbox(
                  value: true,
                  onChanged: (_) => false,
                ).toTertiary(context),
                Checkbox(
                  value: false,
                  onChanged: (_) => false,
                ).toTertiary(context),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    value: true,
                    onChanged: (_) => true,
                    title: Text('ChcekBoxTile1'),
                  ).toPrimary(context),
                ),
                Expanded(
                  child: CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.platform,
                    value: true,
                    onChanged: (_) => true,
                    title: Text('ChcekBoxTile2'),
                  ).toSecondary(context),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: DropdownButtonFormField(
                    decoration: InputDecoration(label: Text('drop')),
                    items: [
                      DropdownMenuItem<String>(value: '1', child: Text('1')),
                      DropdownMenuItem<String>(value: '2', child: Text('2')),
                    ],
                    onChanged: (_) => '',
                  ).toPrimary(context),
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
