import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  String valueChoose;
  var _expanded = false;
  List listItem = [
    "USD",
    "RUPEE",
    "CAD",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          height: 220,
          width: double.infinity,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("Image/bitcoinWallet.jpg"),
                      backgroundColor: Colors.grey[200],
                      radius: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Total Wallet Balance ",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black45,
                          fontWeight: FontWeight.w600),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    DropdownButton(
                      hint: Text("Currency"),
                      //  icon: Icon(Icons.arrow_drop_down),
                      value: valueChoose,
                      onChanged: (newValue) {
                        setState(() {
                          valueChoose = newValue;
                        });
                      },
                      items: listItem
                          .map((valueItem) => DropdownMenuItem(
                              value: valueItem, child: Text(valueItem)))
                          .toList(),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      "\$ 39.548",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Chip(
                      label: Text(
                        "+3.5 %",
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.green,
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      "7.251332 BTC",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              IconButton(
                icon: Icon(_expanded ? Icons.expand_less : Icons.expand_more),
                onPressed: () {
                  setState(() {
                    _expanded = !_expanded;
                  });
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
