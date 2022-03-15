import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "device_bluetooth.dart";
import "match_selection.dart";

import "discovery_page.dart";
import "select_bonded_device_page.dart";

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
                      MaterialPageRoute(builder: (context) => const SelectBondedDevicePage(checkAvailability: false))
                    );
                  },
                  child: const Text('Connect to paired bluetooth devices'),
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
                      MaterialPageRoute(builder: (context) => const DiscoveryPage()),
                    );
                  },
                  child: const Text('Bluetooth Serial Communication'),
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
                      MaterialPageRoute(builder: (context) => const MatchSelection()),
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