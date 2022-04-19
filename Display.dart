// ignore_for_file: prefer_const_constructors, non_constant_identifier_names,prefer_const_literals_to_create_immutables

import 'package:car_naviagator/main.dart';
import 'package:flutter/material.dart';

class Display extends StatefulWidget {
  List lstCar;
  Display(this.lstCar,{Key? key}) : super(key: key);

  @override
  State<Display> createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  @override
  String name = '';
  int price = 0;
  String type = '';
  int avg = 0;
  int index = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Display Cars'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 150, 5, 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text('Car Name'),
                      SizedBox(
                        width: 120,
                      ),
                      // Text('${widget.lstCar}'),
                      Text('$name'),
                    ],
                  ),
                  Divider(
                    height: 15,
                    thickness: 2,
                  ),
                  Row(
                    children: [
                      Text('Car Price'),
                      SizedBox(
                        width: 120,
                      ),
                      Text('$price'),
                    ],
                  ),
                  Divider(
                    height: 15,
                    thickness: 2,
                  ),
                  Row(
                    children: [
                      Text('Car type'),
                      SizedBox(
                        width: 120,
                      ),
                      Text('$type'),
                    ],
                  ),
                  Divider(
                    height: 15,
                    thickness: 2,
                  ),
                  Row(
                    children: [
                      Text('Car Average'),
                      SizedBox(
                        width: 120,
                      ),
                      Text('$avg'),
                    ],
                  ),
                  Divider(
                    height: 15,
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 5, 0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {});
                            Cars singleMobile = widget.lstCar[0];
                            name = singleMobile.Name;
                            price = singleMobile.Price;
                            dynamic list = '1)' +
                                singleMobile.Ctype[0] +
                                ' ' +
                                '2)' +
                                singleMobile.Ctype[1] +
                                ' ' +
                                '3)' +
                                singleMobile.Ctype[2];
                            type = singleMobile.Ctype[0];
                            type = list;
                            avg = singleMobile.Avg;
                          },
                          child: Text('First'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 5, 0),
                        child: ElevatedButton(
                          onPressed: () {
                            index++;
                            setState(() {});
                            Cars singleMobile = widget.lstCar[index];
                            name = singleMobile.Name;
                            price = singleMobile.Price;
                            dynamic list = '1)' +
                                singleMobile.Ctype[0] +
                                ' ' +
                                '2)' +
                                singleMobile.Ctype[1] +
                                ' ' +
                                '3)' +
                                singleMobile.Ctype[2];
                            type = singleMobile.Ctype[0];
                            type = list;
                            avg = singleMobile.Avg;
                          },
                          child: Text('>'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: ElevatedButton(
                          onPressed: () {
                            index--;
                            setState(() {});
                            Cars singleMobile = widget.lstCar[index];
                            name = singleMobile.Name;
                            price = singleMobile.Price;
                            dynamic list = '1)' +
                                singleMobile.Ctype[0] +
                                ' ' +
                                '2)' +
                                singleMobile.Ctype[1] +
                                ' ' +
                                '3)' +
                                singleMobile.Ctype[2];
                            type = singleMobile.Ctype[0];
                            type = list;
                            avg = singleMobile.Avg;
                          },
                          child: Text('<'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {});
                            // for (dynamic i = 0; i < widget.lstCar.length; i++) {
                            Cars singleMobile =
                                widget.lstCar[widget.lstCar.length - 1];
                            name = singleMobile.Name;
                            price = singleMobile.Price;
                            // dynamic list='1)'+singleMobile.Ctype[0]+' '+'2)'+singleMobile.Ctype[1]+' '+'3)'+singleMobile.Ctype[2];
                            type = singleMobile.Ctype[0];
                            // type = list;
                            avg = singleMobile.Avg;
                            // }
                          },
                          child: Text('Last'),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
