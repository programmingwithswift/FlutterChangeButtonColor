import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Example App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // 1
  bool _hasBeenPressed = false;
  // List<Color> _colors = <Color>[
  //   Colors.blue,
  //   Colors.red,
  //   Colors.black,
  //   Colors.green
  // ];
  // int _currentColorIndex = 0;

  // void _incrementColorIndex() {
  //   setState(() {
  //     if (_currentColorIndex == _colors.length) {
  //       _currentColorIndex = 0;
  //     } else {
  //       _currentColorIndex++;
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: new Text('Change Color'),
              textColor: Colors.white,
              // 2
              color: _hasBeenPressed ? Colors.blue : Colors.black,
              // 3
              onPressed: () => {
                setState(() {
                  _hasBeenPressed = !_hasBeenPressed;
                })
              },
              /*
              The code used to cycle through the colors
              color: _colors[_currentColorIndex],
              onPressed: () => {_incrementColorIndex()},
              */
            )
          ],
        ),
      ),
    );
  }
}
