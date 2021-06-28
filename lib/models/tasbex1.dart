import 'package:flutter/material.dart';
import 'package:tasbex/models/tasbex.dart';

class TasbehPage extends StatefulWidget {
  var tem = Brightness.light;
  int s1 = 0;
  var ic1 = Icons.wb_sunny;
  Color rang1 = Colors.white.withOpacity(0.7); // black
  Color rang2 = Colors.black12; // white
  Color rang3 = Colors.black54.withOpacity(0.6);

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<TasbehPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Colors.white.withOpacity(0.6),
        brightness: widget.tem,
      ),
      home: Scaffold(
        appBar: AppBar(
          primary: true,
          backgroundColor: Colors.black12,
          elevation: 0,
          title: Align(
            alignment: Alignment.center,
            child: Text(
              "TASBEH",
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.brown,
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              temOzgartir();
            });
          },
          child: Icon(
            widget.ic1,
            size: 30.0,
            color: widget.rang1,
          ),
        ),
        body: HomePage(widget.rang1, widget.rang2, widget.rang3),
      ),
    );
  }

  void temOzgartir() {
    if (widget.s1 == 1) {
      widget.tem = Brightness.light;
      widget.ic1 = Icons.wb_sunny;
      widget.rang1 = Colors.brown;
      widget.rang2 = Colors.white.withOpacity(0.7);
      widget.rang3 = Colors.white.withOpacity(0.6);
      widget.s1 -= 1;
    } else if (widget.s1 == 0) {
      widget.tem = Brightness.dark;
      widget.ic1 = Icons.brightness_3;
      widget.rang1 = Colors.red;
      widget.rang2 = Colors.black12.withOpacity(0.6);
      widget.rang3 = Colors.black12.withOpacity(0.6);
      widget.s1 += 1;
    } else {
      widget.s1 = 1;
    }
  }
}

