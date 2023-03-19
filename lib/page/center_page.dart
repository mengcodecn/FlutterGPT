import 'package:flutter/material.dart';

class CenterPage extends StatelessWidget {
  const CenterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Center')),
      body: Center(
        child: Text('Center Page'),
      ),
    );
  }
}
