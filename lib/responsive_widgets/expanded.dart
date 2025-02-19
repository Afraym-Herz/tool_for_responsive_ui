import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
         Expanded(
          flex: 3 , // this widget use 3/6 (total of flex) from the rest of height 
           child: Container( 
            color: Colors.black,
           ),
         ),
         Expanded(
          flex: 2 ,  // this widget use 3/6 (total of flex) from the rest of height
           child: Container(
            color: Colors.amber,
           ),
         ),
         Expanded(
          flex: 1 ,  // this widget use 3/6 (total of flex) from the rest of height
           child: Container(
            color: Colors.blue,
           ),
         ),   
         Container(
          height: 100,
           color: Colors.deepPurple,
         ),
        ],
      ),
    ) ;
  }
}