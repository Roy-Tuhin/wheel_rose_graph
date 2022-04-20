// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, prefer_conditional_assignment, unnecessary_null_comparison, curly_braces_in_flow_control_structures, unused_element, prefer_typing_uninitialized_variables, unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Color> palette = const <Color>[
    Color.fromRGBO(75, 135, 185, 1),
    Color.fromRGBO(192, 108, 132, 1),
    Color.fromRGBO(246, 114, 128, 1),
    Color.fromRGBO(248, 177, 149, 1),
    Color.fromRGBO(116, 180, 155, 1),
    Color.fromRGBO(0, 168, 181, 1),
    Color.fromRGBO(73, 76, 162, 1),
    Color.fromRGBO(255, 205, 96, 1),
    Color.fromRGBO(255, 240, 219, 1),
    Color.fromRGBO(238, 238, 238, 1)
  ];
  String selectedValue = "1";
  var user_input_chart_value1 = "0";
  var user_input_chart_value2 = "0";
  var user_input_chart_value3 = "0";
  var user_input_chart_value4 = "0";
  var user_input_chart_value5 = "0";
  var user_input_chart_value6 = "0";
  var user_input_chart_value7 = "0";
  var user_input_chart_value8 = "0";
  var user_input_chart_value9 = "0";
  var user_input_chart_value10 = "0";
  List<String> allValues = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wheel Try 3"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Select new skills"),
                Container(
                  // width: 163,
                  height: 40,
                  decoration: BoxDecoration(
                    //color: Colors.green,
                    border: Border.all(
                      color: Color(0xff8E8E8E),
                    ),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  margin: EdgeInsets.only(top: 10),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButton<String>(
                      underline: Container(),
                      icon: Icon(Icons.keyboard_arrow_down),
                      iconSize: 24,
                      isExpanded: true,
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value!;
                        });
                      },
                      value: selectedValue,
                      items: allValues
                          .map((state) => DropdownMenuItem(
                                child: Text(
                                  state,
                                  maxLines: 2,
                                ),
                                value: state,
                              ))
                          .toList(),
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (user_input_chart_value1 == "0") {
                          user_input_chart_value1 = selectedValue;
                        } else if (user_input_chart_value2 == "0" &&
                            user_input_chart_value1 != "0") {
                          user_input_chart_value2 = selectedValue;
                        } else if (user_input_chart_value3 == "0" &&
                            user_input_chart_value2 != "0") {
                          user_input_chart_value3 = selectedValue;
                        } else if (user_input_chart_value4 == "0" &&
                            user_input_chart_value3 != "0") {
                          user_input_chart_value4 = selectedValue;
                        } else if (user_input_chart_value5 == "0" &&
                            user_input_chart_value4 != "0") {
                          user_input_chart_value5 = selectedValue;
                        } else if (user_input_chart_value6 == "0" &&
                            user_input_chart_value5 != "0") {
                          user_input_chart_value6 = selectedValue;
                        } else if (user_input_chart_value7 == "0" &&
                            user_input_chart_value6 != "0") {
                          user_input_chart_value7 = selectedValue;
                        } else if (user_input_chart_value8 == "0" &&
                            user_input_chart_value7 != "0") {
                          user_input_chart_value8 = selectedValue;
                        } else if (user_input_chart_value9 == "0" &&
                            user_input_chart_value8 != "0") {
                          user_input_chart_value9 = selectedValue;
                        } else if (user_input_chart_value10 == "0" &&
                            user_input_chart_value9 != "0") {
                          user_input_chart_value10 = selectedValue;
                        }
                      });
                    },
                    child: Text("Continue")),

                Container(
                  height: 500,
                  width: double.infinity,
                  child: Stack(children: [
                    Positioned(
                        top: 10,
                        right: 70,
                        child: Image.asset(
                          "assets/images/Wheel.png",
                        )),
                    Positioned(
                        top: 28,
                        right: 90,
                        child: Transform(
                          transform: Matrix4.rotationZ(
                              0.320000), //===============================Transform to rotated the graph
                          alignment: FractionalOffset.center,
                          child: SfCircularChart(
                            //backgroundColor: Colors.red,
                            palette: <Color>[
                              Color(0xffE5C7A0),
                              Colors.brown.withOpacity(0.3),
                              Colors.green.withOpacity(0.3),
                              Colors.redAccent.withOpacity(0.3),
                              Colors.blueAccent.withOpacity(0.3),
                              Colors.teal.withOpacity(0.3)
                            ],
                            series: <DoughnutSeries<ChartData, String>>[
                              DoughnutSeries<ChartData, String>(
                                //opacity: 100,
                                radius: '30%',
                                dataSource: <ChartData>[
                                  //   ChartData(
                                  //       'USA',
                                  //       9,
                                  //       (int.parse(user_input_chart_value1) - 5)
                                  //               .toString() +
                                  //           '0%'),
                                  // ChartData(
                                  //     'China',
                                  //     9,
                                  //     (int.parse(user_input_chart_value2) - 5)
                                  //             .toString() +
                                  //         '0%'),
                                  // ChartData(
                                  //     'Russia',
                                  //     9,
                                  //     (int.parse(user_input_chart_value3) - 5)
                                  //             .toString() +
                                  //         '0%'),
                                  // ChartData(
                                  //     'Germany',
                                  //     9,
                                  //     (int.parse(user_input_chart_value4) - 5)
                                  //             .toString() +
                                  //         '0%'),
                                  // ChartData(
                                  //     'USA',
                                  //     9,
                                  //     (int.parse(user_input_chart_value5) - 5)
                                  //             .toString() +
                                  //         '0%'),
                                  // ChartData(
                                  //     'China',
                                  //     9,
                                  //     (int.parse(user_input_chart_value7) - 6)
                                  //             .toString() +
                                  //         '0%'),
                                  // ChartData(
                                  //     'Russia',
                                  //     9,
                                  //     (int.parse(user_input_chart_value8) - 7)
                                  //             .toString() +
                                  //         '0%'),
                                  // ChartData(
                                  //     'Germany',
                                  //     9,
                                  //     (int.parse(user_input_chart_value9) - 8)
                                  //             .toString() +
                                  //         '0%'),
                                  // ChartData(
                                  //     'Russia',
                                  //     9,
                                  //     (int.parse(user_input_chart_value1) - 9)
                                  //             .toString() +
                                  //         '0%'),
                                  // ChartData(
                                  //     'Germany',
                                  //     9,
                                  //     (int.parse(user_input_chart_value1) - 10)
                                  //             .toString() +
                                  //         '0%')
                                  //===========================================================
                                  ChartData(
                                      'USA', 9, user_input_chart_value1 + '0%'),
                                  ChartData('China', 9,
                                      user_input_chart_value2 + '0%'),
                                  ChartData('Russia', 9,
                                      user_input_chart_value3 + '0%'),
                                  ChartData('Germany', 9,
                                      user_input_chart_value4 + '0%'),
                                  ChartData(
                                      'USA', 9, user_input_chart_value5 + '0%'),
                                  ChartData('China', 9,
                                      user_input_chart_value6 + '0%'),
                                  ChartData('Russia', 9,
                                      user_input_chart_value7 + '0%'),
                                  ChartData('Germany', 9,
                                      user_input_chart_value8 + '0%'),
                                  ChartData('Russia', 9,
                                      user_input_chart_value9 + '0%'),
                                  ChartData('Germany', 9,
                                      user_input_chart_value10 + '0%')
                                ],
                                xValueMapper: (ChartData data, _) => data.xVal,
                                yValueMapper: (ChartData data, _) => data.yVal,
                                pointRadiusMapper: (ChartData data, _) =>
                                    data.radius,
                              ),
                            ],
                          ),
                          // Container(
                          //   margin: const EdgeInsets.only(top: 10),
                          //   width: 350,
                          //   height: 302,
                          //   child: Chart(
                          //     data: [
                          //       {
                          //         'value': int.parse(user_input_chart_value1),
                          //         'name':
                          //             '/' //################################# P R O B L E M
                          //       },
                          //       {
                          //         'value': int.parse(user_input_chart_value2),
                          //         'name': '.'
                          //       },
                          //       {
                          //         'value': int.parse(user_input_chart_value3),
                          //         'name': '..'
                          //       },
                          //       {
                          //         'value': int.parse(user_input_chart_value4),
                          //         'name': '.*'
                          //       },
                          //       {
                          //         'value': int.parse(user_input_chart_value5),
                          //         'name': 'o.'
                          //       },
                          //       {
                          //         'value': int.parse(user_input_chart_value6),
                          //         'name': ':'
                          //       },
                          //       {
                          //         'value': int.parse(user_input_chart_value7),
                          //         'name': '._'
                          //       },
                          //       {
                          //         'value': int.parse(user_input_chart_value8),
                          //         'name': '.i'
                          //       },
                          //       {
                          //         'value': int.parse(user_input_chart_value9),
                          //         'name': '^'
                          //       },
                          //       {
                          //         'value': int.parse(user_input_chart_value10),
                          //         'name': '.~'
                          //       },
                          //       // {'value': 10, 'name': 'adad'},
                          //     ],
                          //     variables: {
                          //       'name': Variable(
                          //         accessor: (Map map) => map['name'] as String,
                          //       ),
                          //       'value': Variable(
                          //         accessor: (Map map) => map['value'] as num,
                          //         scale: LinearScale(min: 0, marginMax: 0.1),
                          //       ),
                          //     },
                          //     elements: [
                          //       IntervalElement(
                          //         label: LabelAttr(
                          //             encoder: (tuple) =>
                          //                 Label(tuple['name'].toString())),
                          //         shape: ShapeAttr(
                          //             value: RectShape(
                          //           borderRadius: const BorderRadius.all(
                          //               Radius.circular(1)),
                          //         )),
                          //         color: ColorAttr(variable: 'name', values: [
                          //           Color(0xff5b8ff9).withOpacity(0.3),
                          //           Color(0xff5ad8a6).withOpacity(0.3),
                          //           Color(0xff5d7092).withOpacity(0.3),
                          //           Color(0xfff6bd16).withOpacity(0.3),
                          //           Color(0xff6f5ef9).withOpacity(0.3),
                          //           Color(0xff6dc8ec).withOpacity(0.3),
                          //           Color(0xff945fb9).withOpacity(0.3),
                          //           Color(0xffff9845).withOpacity(0.3),
                          //           Color(0xff1e9493).withOpacity(0.3),
                          //           Color(0xffff99c3).withOpacity(0.3),
                          //           //Colors.transparent
                          //         ]),
                          //         elevation: ElevationAttr(value: 0),
                          //       )
                          //     ],
                          //     coord: PolarCoord(startRadius: 0.15),
                          //     // axes: [
                          //     //   Defaults.circularAxis,
                          //     //   Defaults.radialAxis..label = null,
                          //     // ],
                          //   ),
                          // ),
                        )),
                  ]),
                ),
                //===============================================================
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChartData {
  ChartData(this.xVal, this.yVal, this.radius);
  final String xVal;
  final int yVal;
  final String radius;
}
