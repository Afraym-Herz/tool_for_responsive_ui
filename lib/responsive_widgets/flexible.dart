import 'package:flutter/material.dart';

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
          Flexible(  // if height 250 pixels available use them , else get your height smaller
           child: Container( 
            height: 250,
            color: Colors.black,
           )
           ),
        
           Container(
            height: 150,
            color: Colors.amber,
           ),
         
          Container(
            height: 150,
           color: Colors.blue,
          ),
            
      ],
    ) ;
  }
}