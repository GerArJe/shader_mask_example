import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        backgroundColor: Colors.grey,
        body: Center(
            child: Container(
              child: ShaderMask(
                shaderCallback: (bounds) {
                  return RadialGradient(
                    center: Alignment.topLeft,
                    radius: 1.0,
                    colors: <Color> [Colors.yellow, Colors.deepOrange.shade900],
                    tileMode: TileMode.mirror,
                    ).createShader(bounds);
                },
                child: Text(
                  'I’m burning the memories',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0),
                  ),
                ),
            ),
        ),
      ),
    );
  }
}