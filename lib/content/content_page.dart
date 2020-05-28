import 'package:flutter/material.dart';

class ContentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Stack(
                children: [
                  Container(
                    color: Colors.transparent,
                    height: 260,
                  ),
                  AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    actions: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.share),)
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.grey[100],
              ),
            )
          ],
        ),
      ),
    );
  }
}
