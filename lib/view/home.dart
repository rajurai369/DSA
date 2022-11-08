import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea( 
      child: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(),
        body:Column(
          children: [
            Container(
              height: 300,
              width: 300,
              color: Colors.red,
            ),
          ],
        )
        ),

    );
  }
}