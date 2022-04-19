// ignore_for_file: non_constant_identifier_names

import 'package:car_naviagator/Display.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CarList(),
    ),
  );
}

class CarList extends StatefulWidget {
  @override
  _CarListState createState() => _CarListState();
}

class _CarListState extends State<CarList> {
  @override
  TextEditingController carName = new TextEditingController();
  TextEditingController carPrice = new TextEditingController();
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  int range = 0;
  int index = 0;
  String Cidan = '';
  String Hashbeach = '';
  String xuv = '';
  List types = [];
  List lstCar = [];

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Add Car',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: carName,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                hintText: 'Enter Car Name',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: carPrice,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                hintText: 'Enter Car Price',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CheckboxListTile(
                title: Text('cidan'),
                value: value1,
                onChanged: (value) {
                  setState(() {});
                  value1 = value!;
                  if (value1) {
                    Cidan = 'Cidan';
                    types.add(Cidan);
                  } else {
                    Cidan = '';
                  }
                }),
            CheckboxListTile(
                title: Text('Hashbeach'),
                value: value2,
                onChanged: (value) {
                  setState(() {});
                  value2 = value!;
                  if (value2) {
                    Hashbeach = 'Hashbeach';
                    types.add(Hashbeach);
                  } else {
                    Hashbeach = '';
                  }
                }),
            CheckboxListTile(
                title: Text('xuv'),
                value: value3,
                onChanged: (value) {
                  setState(() {});
                  value3 = value!;
                  if (value3) {
                    xuv = 'xuv';
                    types.add(xuv);
                  } else {
                    xuv = '';
                  }
                }),
            Slider(
              min: 0,
              max: 50,
              value: range.toDouble(),
              onChanged: (value) {
                setState(() {});
                range = value.toInt();
              },
            ),
            Text('$range'),
            ElevatedButton(
                onPressed: () {
                  setState(() {});
                  Cars newCar = new Cars();
                  newCar.Name = carName.text;
                  newCar.Price = int.parse(carPrice.text);
                  newCar.Ctype = types;
                  newCar.Avg = range;
                  lstCar.add(newCar);
                },
                child: Text('Add')),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  print(Cidan);
                  print(Hashbeach);
                  print(xuv);
                  print(types);
                });
              },
              child: Text('Show'),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {});
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Display(lstCar),
                    ),
                  );
                  Cars sinElement = lstCar[0];
                  print(sinElement.Name);
                },
                child: Text('Next'),
              ),
            ),
            Text('Total Entries: ${lstCar.length}'),
          ],
        ),
      ),
    );
  }
}

class Cars {
  String Name = '';
  int Price = 0;
  List Ctype = [];
  int Avg = 0;
}
