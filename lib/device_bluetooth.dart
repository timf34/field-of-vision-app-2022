import 'dart:async';

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';


class BluetoothPage extends StatefulWidget{
  const BluetoothPage({Key? key}) : super(key: key);

  @override
  _BluetoothPage createState() => _BluetoothPage();

}

class _BluetoothPage extends State<BluetoothPage> {

  Future<void> _bluetoothPermission() async {
    await Permission.bluetoothScan.request();
    await Permission.bluetoothConnect.request();
  }

  @override
  void initState(){
    super.initState();
    _bluetoothPermission();

  }

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





/*class BluetoothDevice extends StatelessWidget {
  const BluetoothDevice({Key? key}) : super(key: key);

  @override
  void initState(){
    super.initState();

  }

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
}*/