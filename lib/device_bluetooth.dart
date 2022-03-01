import 'package:flutter/material.dart';

class BluetoothDevice extends StatelessWidget {
  const BluetoothDevice({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bluetooth Dev Page',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bluetooth dev page'),
        ),
      ),
    );
  }
}