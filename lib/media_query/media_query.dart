import 'package:flutter/material.dart';

class MediaQueryClass extends StatelessWidget {
  const MediaQueryClass({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height; // get the height of current device and divide it to below container 
    return Scaffold(
      body: Column(
        children: [
          Container(color: Colors.amber, height: height * 0.2, width: 200),
          Container(color: Colors.red, height: height * 0.2, width: 200),
          Container(color: Colors.black, height: height * 0.2, width: 200),
        ],
      ),
    );
  }
}
