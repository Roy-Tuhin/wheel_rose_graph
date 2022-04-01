// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, prefer_conditional_assignment, unnecessary_null_comparison, curly_braces_in_flow_control_structures, unused_element, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';

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
                        top: 17,
                        right: 64,
                        child: Transform(
                          transform: Matrix4.rotationZ(
                              0.330000), //===============================Transform to rotated the graph
                          alignment: FractionalOffset.center,
                          child: Container(
                            margin: const EdgeInsets.only(top: 10),
                            width: 350,
                            height: 300,
                            child: Chart(
                              data: [
                                {
                                  'value': int.parse(user_input_chart_value1),
                                  'name': '1'
                                },
                                {
                                  'value': int.parse(user_input_chart_value2),
                                  'name': '2'
                                },
                                {
                                  'value': int.parse(user_input_chart_value3),
                                  'name': '3'
                                },
                                {
                                  'value': int.parse(user_input_chart_value4),
                                  'name': '4'
                                },
                                {
                                  'value': int.parse(user_input_chart_value5),
                                  'name': '5'
                                },
                                {
                                  'value': int.parse(user_input_chart_value6),
                                  'name': '6'
                                },
                                {
                                  'value': int.parse(user_input_chart_value7),
                                  'name': '7'
                                },
                                {
                                  'value': int.parse(user_input_chart_value8),
                                  'name': '8'
                                },
                                {
                                  'value': int.parse(user_input_chart_value9),
                                  'name': '9'
                                },
                                {
                                  'value': int.parse(user_input_chart_value10),
                                  'name': '10'
                                },
                              ],
                              variables: {
                                'name': Variable(
                                  accessor: (Map map) => map['name'] as String,
                                ),
                                'value': Variable(
                                  accessor: (Map map) => map['value'] as num,
                                  scale: LinearScale(min: 0, marginMax: 0.1),
                                ),
                              },
                              elements: [
                                IntervalElement(
                                  label: LabelAttr(
                                      encoder: (tuple) =>
                                          Label(tuple['name'].toString())),
                                  shape: ShapeAttr(
                                      value: RectShape(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(1)),
                                  )),
                                  color: ColorAttr(variable: 'name', values: [
                                    Color(0xff5b8ff9).withOpacity(0.3),
                                    Color(0xff5ad8a6).withOpacity(0.3),
                                    Color(0xff5d7092).withOpacity(0.3),
                                    Color(0xfff6bd16).withOpacity(0.3),
                                    Color(0xff6f5ef9).withOpacity(0.3),
                                    Color(0xff6dc8ec).withOpacity(0.3),
                                    Color(0xff945fb9).withOpacity(0.3),
                                    Color(0xffff9845).withOpacity(0.3),
                                    Color(0xff1e9493).withOpacity(0.3),
                                    Color(0xffff99c3).withOpacity(0.3),
                                  ]),
                                  elevation: ElevationAttr(value: 0),
                                )
                              ],
                              coord: PolarCoord(startRadius: 0.15),
                              // axes: [
                              //   Defaults.circularAxis,
                              //   Defaults.radialAxis..label = null,
                              // ],
                            ),
                          ),
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
