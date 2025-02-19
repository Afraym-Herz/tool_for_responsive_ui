import 'package:flutter/material.dart';

class IntrinsicHeightWidth extends StatelessWidget {
  const IntrinsicHeightWidth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 150,
            ) ,
            IntrinsicHeight( // mean determine biggest height and use it to 
              child: Row(
                children: [
                  Expanded(child: Container(color: Colors.red , child: 
                  const Column(
                    children: [
                      Text("data"), 
                      Text("data"), 
                      Text("data"), 
                      Text("data"), 
                      Text("data"), 
                      Text("data"), 
                      Text("data"), 
                    ],
                  )
                  ,)),
                  const SizedBox(width: 15,) ,
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(child: Container(color: Colors.black)),
                        const SizedBox(height: 15,) ,
                        Expanded(child: Container(color: Colors.amber)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
