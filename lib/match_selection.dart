import 'package:flutter/material.dart';

class MatchSelection extends StatelessWidget {
  const MatchSelection({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Match Selection Dev Page',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Match Selection dev page'),
        ),
      ),
    );
  }
}