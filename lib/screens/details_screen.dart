import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:uichallgeneday1/chartScreens/ChartsScreen.dart';

class detail_Screen extends StatefulWidget {
  static const routeName = 'detail';

  @override
  _detail_ScreenState createState() => _detail_ScreenState();
}

class _detail_ScreenState extends State<detail_Screen>
    with TickerProviderStateMixin {
  TabController _tabController;
  var tabData = ["Day", "Week", " Year "];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: tabData.length, vsync: this);
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            }),
        backgroundColor: Colors.white,
        title: Text(
          "Bitcoin Wallet",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage("Image/BTCcard.png"),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "Bitcoin",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            "Btc",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "\$ 19.153 USD",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Chip(
                            backgroundColor: Colors.purpleAccent,
                            label: Text(
                              " -2.32%",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            DefaultTabController(
              length: 4, // length of tabs
              initialIndex: 1,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    child: TabBar(
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.grey,
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey),
                      indicatorSize: TabBarIndicatorSize.tab,

                      tabs: [
                        Tab(text: 'Day'),
                        Tab(
                          text: 'Week',
                        ),
                        Tab(text: 'Month'),
                        Tab(text: 'Year'),
                      ],
                    ),
                  ),
                  Container(
                    height: 310, //height of TabBarView
                    decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(color: Colors.grey, width: 0.5))),
                    child: TabBarView(
                      children: <Widget>[
                        Container(
                          child: Center(
                            child: Text('Display Tab 1',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold)),
                          ),
                        ),
                        Container(
                          height: 200,
                          child: LineCharts(),
                        ),
                        Container(
                          child: Center(
                            child: Text('Display Tab 3',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold)),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Text('Display Tab 4',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                // InkWell(
                //   onTap: () {},
                //   child: Container(
                //     height: 100,
                //     width: 150,
                //     color: Colors.white,
                //     //color: Colors.grey,
                //     child:
                //     Text(
                //         "Buy BTC",
                //         style: TextStyle(
                //         color: Colors.black, fontWeight: FontWeight.bold),),
                //
                //
                //     ),
                // ),


                SfRadialGauge(axes: <RadialAxis>[
                  RadialAxis(
                    minimum: 0,
                    maximum: 20,
                    showLabels: false,
                    showTicks: false,
                    axisLineStyle: AxisLineStyle(
                      thickness: 0.2,
                      cornerStyle: CornerStyle.bothCurve,
                      color: Color.fromARGB(30, 0, 169, 181),
                      thicknessUnit: GaugeSizeUnit.factor,
                    ),
                  )
                ]),

              ],
            )
          ],
        ),
      ),
    );
  }
}
