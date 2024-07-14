import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../singelten/number_genrater.dart';
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:  AppBar(title: Text("SecondScreen"),),
      body: Center(
        child: TextButton(child: Text("BTN on 2"),
          onPressed: (){
            NumberGen().getNextNumber();

          },
        ),
      ),

    );
  }
}
