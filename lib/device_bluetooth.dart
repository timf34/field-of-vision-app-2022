import 'dart:async';

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

/*
  This page will search for and list the available devices for now. Might change
  up the structure to allow for debugging the communication (ie explictly add
  a serial terminal, but in another page)
 */


class BluetoothPage extends StatefulWidget{
  const BluetoothPage({Key? key}) : super(key: key);

  @override
  _BluetoothPage createState() => _BluetoothPage();

}

class _BluetoothPage extends State<BluetoothPage> {

  // TODO: add a check that ensures bluetooth is on.
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
