import 'package:flutter/material.dart';
import 'package:solid_design_patterns/screens/first_screen.dart';
import 'package:solid_design_patterns/screens/second_screen.dart';
import 'package:solid_design_patterns/singelten/number_genrater.dart';

import 'singelten/debug_logger.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    // final logger = DebugLogger();
    // setState(() {
    //   logger.log('counter: $_counter', 'sample error message');
    //   _counter++;
    // });
    NumberGen().getNextNumber();
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            TextButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FirstScreen()));
            }, child: Text("FirstScreen")),
            TextButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SecondScreen()));
            }, child: Text("SecondScreen")),

            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${NumberGen().getNextNumber()}',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
