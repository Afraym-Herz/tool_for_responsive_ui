import 'package:flutter/material.dart';

class FittedBoxWidget extends StatelessWidget {
  const FittedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
          const Flexible(
           child: FittedBox( // fit all available space get from parent and don't be bigger than size only may be smaller 
            fit: BoxFit.scaleDown,
             child: Icon(
              Icons.ac_unit_rounded ,
              size: 300,
             ),
           ),
           ),
        
           Expanded(
             child: FittedBox(
               child: Container(
                color: Colors.amber,
                child: const Icon(Icons.abc),
               ),
             ),
           ),
         
          Container(
            height: 150,
           color: Colors.blue,
          ),
            
      ],
    ) ;
  }
}