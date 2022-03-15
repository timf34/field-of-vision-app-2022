import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

import "match_selection.dart";
import "discovery_page.dart";
import "select_bonded_device_page.dart";
import "chat_page.dart";


// TODO: the device paring and opening straight into the chat page works well
//  for now, however its not going to work very well for the final device.
//  Need a cleaner way to simply connect to the device and confirm that its
//  connected

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override


  // This adds two buttons to the page in a column
  Widget build(BuildContext context) {
      // ignore: dead_code
      return MaterialApp(
        title: 'Welcome to Flutter',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('FOV app dev homepage'),
          ),
          // add two buttons to the page
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ElevatedButton(
                  child: const Text("Connect + serial communication (debugging)"),
                  onPressed: () async {
                    final BluetoothDevice? selectedDevice =
                    await Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return SelectBondedDevicePage(checkAvailability: false);
                        },
                      ),
                    );

                    if (selectedDevice != null) {
                      print('Connect -> selected ' + selectedDevice.address);
                      _startChat(context, selectedDevice);
                    } else {
                      print('Connect -> no device selected');
                    }
                  },
                ),
                ElevatedButton(
                  child: const Text("Connect to Bluetooth Devices (no communication)"),
                  onPressed: () async {
                    final BluetoothDevice? selectedDevice =
                    await Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return SelectBondedDevicePage(checkAvailability: false);
                          // TODO: note that this currently only displays
                          // devices that have been paired with already via the
                          // phones bluetooth settings. discovery_page.dart
                          // extends this to discovering all devices, we should
                          // look into ways to do the same, and to actually
                          // pair devices that haven't been paired before,
                          // through the app. This will probably involve
                          // opening the bluetooth settings directly from the
                          // app.
                        },
                      ),
                    );

                    if (selectedDevice != null) {
                      print('Connect -> selected ' + selectedDevice.address);
                      // _startChat(context, selectedDevice);
                      // TODO: a popup confirming the connection
                    } else {
                      print('Connect -> no device selected');
                      // TODO: a popup confirming the connection didn't work
                    }
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MatchSelection()),
                    );
                  },
                  child: const Text('Matches page (empty for now)'),
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 16),
                    primary: Colors.white, // This sets the colour of the font
                    backgroundColor: Colors.blue, // This sets the colour of the button background
                  ),
                ),
              ],
            ),
          ),
          
          ),
        );
    }
  }

void _startChat(BuildContext context, BluetoothDevice server) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) {
        return ChatPage(server: server);
      },
    ),
  );
}