import 'package:flutter/material.dart';

/*
  This is a temp file for holding Dylan's frontend design code before its
  integrated back into our existing codebase
 */

void main() {
  runApp(const MaterialApp(
    title: 'Flutter App',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Image.asset(
            "images/fov_appbar.png",
            fit: BoxFit.fitWidth,
          ),
        ),
      ), //AppBar
      body: Padding(
        padding: EdgeInsets.only(top: 0),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            Center(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/field.jpg"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.6),
                      BlendMode.darken,
                    ),
                  ),
                ),
              ),
            ),
            /** Positioned WIdget **/
            Positioned(
              top: 100,
              left: 105,
              child: Container(
                width: 180,
                height: 180,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/round_icon.jpg"),
                  ),
                ),
              ),
            ),

            /** Positioned WIdget **/

            Positioned(
              top: 500,
              left: 90,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  textStyle: TextStyle(fontSize: 30),
                  primary: Color.fromARGB(255, 22, 216, 223),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondRoute()),
                  );
                },
                child: Text('Get Started'),
              ), //CircularAvatar
            ), //Positioned
          ], //<Widget>[]
        ), //Stack
      ), //Padding
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Image.asset(
            "images/fov_appbar.png",
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 0),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            Positioned(
              top: 0,
              child: Container(
                height: 375,
                width: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/football_play.jpg"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.4),
                      BlendMode.darken,
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              top: 375,
              child: Container(
                height: 375,
                width: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/device.jpg"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.4),
                      BlendMode.darken,
                    ),
                  ),
                ),
              ),
            ),

            /** Positioned WIdget **/

            Positioned(
              top: 575,
              left: 85,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  textStyle: TextStyle(fontSize: 20),
                  primary: Color.fromARGB(255, 22, 216, 223),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Thirdroute()),
                  );
                },
                child: Text('Bluetooth Devices'),
              ), //CircularAvatar
            ), //Positioned

            Positioned(
              top: 250,
              left: 85,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 62, vertical: 16),
                  textStyle: TextStyle(fontSize: 20),
                  primary: Color.fromARGB(255, 22, 216, 223),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Thirdroute()),
                  );
                },
                child: Text('Live Games'),
              ), //CircularAvatar
            ), //Positioned
          ], //<Widget>[]
        ), //Stack
      ),
    );
  }
}

class Thirdroute extends StatelessWidget {
  const Thirdroute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Image.asset(
            "images/fov_appbar.png",
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/field_top.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.4),
              BlendMode.darken,
            ),
          ),
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 20,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Container(
                    height: 100,
                    margin: EdgeInsets.only(top: 8, bottom: 8, right: 12),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/uvc.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(4)),
                  ),
                  Container(
                    height: 100,
                    margin: EdgeInsets.only(top: 8, bottom: 8, right: 12),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/cvw.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(4)),
                  ),
                  Container(
                    height: 100,
                    margin: EdgeInsets.only(top: 8, bottom: 8, right: 12),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/evav.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(4)),
                  ),
                  Container(
                    height: 100,
                    margin: EdgeInsets.only(top: 8, bottom: 8, right: 12),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/avs.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(4)),
                  ),
                  Container(
                    height: 100,
                    margin: EdgeInsets.only(top: 8, bottom: 8, right: 12),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/lvl.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(4)),
                  ),
                  Container(
                    height: 100,
                    margin: EdgeInsets.only(top: 8, bottom: 8, right: 12),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/nwvl.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(4)),
                  ),
                  Container(
                    height: 100,
                    margin: EdgeInsets.only(top: 8, bottom: 8, right: 12),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/wbvso.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(4)),
                  ),
                  Container(
                    height: 100,
                    margin: EdgeInsets.only(top: 8, bottom: 8, right: 12),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/wovwa.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(4)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
