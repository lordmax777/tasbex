import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  int son1 = 0;
  String zikr = " Subhanalloh";
  String zikr1 = "سُبْحَانَ الله";
  Color rang1;
  Color rang2;
  Color rang3;
  String background = "assets/images/3.jpg";
  HomePage(this.rang1, this.rang2, this.rang3);
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(widget.background,),fit: BoxFit.cover
          )
      ),
      // color: Colors.amberAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
              color: widget.rang3,
            ),
            alignment: Alignment.center,
            height: 50.0,
            width: 200.0,
            child: Text(
              widget.zikr,
              style: TextStyle(
                color: widget.rang1,
                fontSize: 23.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
              color: widget.rang3,
            ),
            alignment: Alignment.center,
            height: 50.0,
            width: 250.0,
            child: Text(
              widget.zikr1,
              style: TextStyle(
                color: widget.rang1,
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 20.0),
            alignment: Alignment.center,
            height: 60.0,
            width: 60.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(50.0),
              ),
              color: widget.rang3,
            ),
            child: Text(
              "${widget.son1 + 2}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color: widget.rang1,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(50.0),
              ),
              color: widget.rang3,
            ),
            child: Text(
              "${widget.son1 + 1}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35.0,
                color: widget.rang1,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 100.0,
            width: 100.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(50.0),
              ),
              color: widget.rang2,
            ),
            child: GestureDetector(
              child: Text(
              "${widget.son1}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 45.0,
                color: widget.rang1,
              ),
            ),
            onTap: (){
              setState(() {
                sonQosh();
                hisobla();
              });
            },
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(50.0),
              ),
              color: widget.rang3,
            ),
            child: Text(
              "${widget.son1 - 1}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35.0,
                color: widget.rang1,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20.0),
            alignment: Alignment.center,
            height: 60.0,
            width: 60.0,
            //color: widget.rang3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(50.0),
              ),
              color: widget.rang3,
            ),
            child: Text(
              "${widget.son1 - 2}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color: widget.rang1,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20.0, left: 10.0),
                height: 40.0,
                width: 60.0,
                //color: widget.rang3,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      clear();
                    });
                  },
                  child: Icon(
                    Icons.refresh,
                    color: widget.rang1,
                    size: 25.0,
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: widget.rang3,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  bottom: 20.0,
                  right: 110.0,
                ),
                height: 50.0,
                width: 120.0,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              contentPadding: EdgeInsets.all(0),
                              content: GestureDetector(
                                child: Container(
                                  height: 300.0,
                                  width: 580.0,
                                  child: Image.asset("assets/images/2.jpg"),
                                ),
                                onTap: (){
                                  Navigator.of(context).pop();
                                },
                              ),
                            );
                          });
                    },);
                  },
                  child: Text("Zarur Duolar",style: TextStyle(color: widget.rang1, fontSize: 14.0),),
                  style: ElevatedButton.styleFrom(primary: widget.rang3),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  void sonQosh() {
    widget.son1 += 1;
  }

  void clear() {
    widget.son1 = 0;
  }

  void hisobla() {
    if (widget.son1 % 99 == 0) {
      widget.zikr = " Subhanalloh";
      widget.zikr1 = "سُبْحَانَ الله";
      widget.son1 = 0;
      widget.background = "assets/images/4.jpg";
    } else if (widget.son1 % 66 == 0) {
      widget.zikr = " Allohu Akbar";
      widget.zikr1 = "الله أكبر";
      widget.background = "assets/images/3.jpg";
    } else if (widget.son1 % 33 == 0) {
      widget.zikr = " Alhamdulillah";
      widget.zikr1 = "الحمدلله";
      widget.background = "assets/images/0.jpg";
    }
  }
}

