import 'package:flutter/material.dart';

void main() => runApp(Schedule());

class Schedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.blue,
            centerTitle: true,
            title: Text(
              "OrgiSched",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: orgi(),
        ),
      ),
    );
  }
}

class orgi extends StatefulWidget {
  @override
  _orgiState createState() => _orgiState();
}

class _orgiState extends State<orgi> {

  List <Widget> create_new = [];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Column(
                children: create_new,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      color: Colors.green,
                      onPressed: () {
                        setState(() {
                          create_new.add(
                            Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: TextField(
                                      cursorColor: Colors.white,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    height: 50,
                                    color: Colors.teal,
                                  ),
                                ),
                                SizedBox(
                                  height: 50,
                                  width: 2,
                                  child: Container(
                                    color: Colors.white,
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    child: TextField(
                                      cursorColor: Colors.white,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    height: 50,
                                    color: Colors.teal[300],
                                  ),
                                ),
                              ],
                            ),
                          );
                          create_new.add(
                              SizedBox(
                                width: double.maxFinite,
                                height: 2,
                                child: Container(
                                  color: Colors.white,
                                ),
                              )
                          );
                        },);
                      },
                    ),
                  ),
              SizedBox(
                height: 10,
                width:180,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                  color: Colors.red,
                  onPressed: () {
                    setState(() {
                      create_new.removeLast();
                      create_new.removeLast();
                    },);
                  },
                ),
              ),
    ],
    ),
      ],
          ),
        ),
      ],
    );
}}