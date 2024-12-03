import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Four Activities App',
      home: Activity1(),
      routes: {
        '/activity2': (context) => Activity2(),
        '/activity3': (context) => Activity3(),
        '/activity4': (context) => Activity4(),
      },
    );
  }
}
class Activity1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Activity 1")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.75,
              height: MediaQuery.of(context).size.height * 0.2,
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/activity2'),
                child: Text('Activity 2'),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.75,
              height: MediaQuery.of(context).size.height * 0.2,
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/activity3'),
                child: Text('Activity 3'),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.75,
              height: MediaQuery.of(context).size.height * 0.2,
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/activity4'),
                child: Text('Activity 4'),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.75,
              height: MediaQuery.of(context).size.height * 0.2,
              child: ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('Exit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Activity2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Activity 2")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildFlatButton(context, 'Button1', 0.3),
              buildFlatButton(context, 'Button2', 0.3),
              buildFlatButton(context, 'Button3', 0.3),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildFlatButton(context, 'Button4', 0.3),
              buildFlatButton(context, 'Button5', 0.3),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildFlatButton(context, 'Button6', 0.2),
              buildFlatButton(context, 'Button7', 0.3),
              buildFlatButton(context, 'Button8', 0.4),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildFlatButton(BuildContext context, String label, double widthFactor) {
    return Container(
      width: MediaQuery.of(context).size.width * widthFactor,
      margin: EdgeInsets.all(4),
      child: ClipRect(
        child: Material(
          color: Colors.grey,
          child: InkWell(
            onTap: () {},
            child: Container(
              alignment: Alignment.center,
              height: 50,
              child: Text(
                label,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Activity3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final buttonWidth = MediaQuery.of(context).size.width * 0.5;

    return Scaffold(
      appBar: AppBar(title: Text("Activity 3")),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: buildFlatButton(context, 'Left', 0.49),
          ),
          Align(
            alignment: Alignment.topRight,
            child: buildFlatButton(context, 'Right', 0.49),
          ),

          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildFlatButton(context, 'Center Left', 0.25),
                buildFlatButton(context, 'Center', 0.25),
                buildFlatButton(context, 'Center Right', 0.25),
              ],
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 440,
              height: 50,
              margin: EdgeInsets.all(4),
              child: ClipRect(
                child: Material(
                  color: Colors.grey,
                  child: InkWell(
                    onTap: () {},
                    child: Center(
                      child: Text(
                        'Button',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFlatButton(BuildContext context, String label, double widthFactor) {
    return Container(
      width: MediaQuery.of(context).size.width * widthFactor,
      height: 50,
      margin: EdgeInsets.all(4),
      child: ClipRect(
        child: Material(
          color: Colors.grey,
          child: InkWell(
            onTap: () {},
            child: Center(
              child: Text(
                label,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}



class Activity4 extends StatefulWidget {
  @override
  _Activity4State createState() => _Activity4State();
}

class _Activity4State extends State<Activity4> {
  Color _buttonColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Activity 4")),
      body: Center(
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: Color(0xFF505050), width: 2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            backgroundColor: _buttonColor,
          ),
          onPressed: () {
            setState(() {
              _buttonColor = Colors.lightGreen;
            });
          },
          child: Text('New Button'),
        ),
      ),
    );
  }
}
