import 'package:flutter/material.dart';

class AspectRatioWidget extends StatelessWidget {
  const AspectRatioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Align(
        alignment: Alignment.topCenter,
        child: AspectRatio(
          aspectRatio: 3/1 , // that is mean the width is always be bigger than hieght 3 times 
          child: Container(
            color: Colors.red ,
            width: MediaQuery.of(context).size.width,
          ),
        ),
      ),
    );
  }
}