import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:uichallgeneday1/screens/details_screen.dart';
import 'package:uichallgeneday1/widget/CardWidget.dart';

import '../BottomNavigationBar.dart';

class Home extends StatefulWidget {
  static const routeName = " Home ";

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String valueChoose;

  List listItem = [
    "USD",
    "RUPEE",
    "CAD",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        actions: [
          Icon(
            Icons.create_new_folder,
            color: Colors.grey,
            size: 50,
          ),
        ],
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Wallet",
          style: TextStyle(
            fontFamily: 'Roboto_Condensed',
            fontStyle: FontStyle.normal,
            color: Colors.black,
            fontSize: 22,
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              CardWidget(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.s,
                  children: [
                    Text(
                      "Sorted by higher %",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "24H",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        icon: Icon(Icons.arrow_drop_down_outlined),
                        onPressed: () {}),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Container(
              height: 300,
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    SizedBox(
                      height: 10,
                    );

                    return InkWell(
                      onTap: () => Navigator.of(context)
                          .pushNamed(detail_Screen.routeName),
                      child: Card(
                          color: Colors.white,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundImage:
                                          AssetImage("Image/BTCcard.png"),
                                    ),
                                    Text(
                                      "3.59020 BTC",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "\$19.153",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                              Text(
                                "\$ 5.44",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              Text(
                                " +4.34%",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )),
                    );
                  }),
            ),
          ),
        ],
      ),

      // bottomNavigationBar: MyBottomNavigation(),
    );
  }
}
