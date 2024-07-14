import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../singelten/number_genrater.dart';
class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:  AppBar(title: Text("FirstScreen"),),
      body: Center(
        child: TextButton(child: Text("BTN on 1"),
          onPressed: (){
            NumberGen().getNextNumber();
          },
        ),
      ),

    );
  }
}
