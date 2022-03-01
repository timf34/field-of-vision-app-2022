import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "device_bluetooth.dart";

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
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const BluetoothDevice()),
                    );
                  },
                  child: const Text('Devices/ bluetooth page'),
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                    primary: Colors.white, // This sets the colour of the font
                    backgroundColor: Colors.blue, // This sets the colour of the button background
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const BluetoothDevice()),
                    );
                  },
                  child: const Text('Matches page (goes to Bluetooth page for now)'),
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
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