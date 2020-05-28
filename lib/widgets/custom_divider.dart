import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1,
      child: Container(
        margin: EdgeInsets.only(left: 16),
        color: Colors.grey[200],
      ),
    );
  }
}
