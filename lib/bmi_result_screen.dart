import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
  final bool isMale;
  final double result;
  final int age;

  const BmiResultScreen(
      {Key? key, required this.isMale, required this.age, required this.result})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text(
          'Results',
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 10,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: double.infinity,
              height: 300,
              padding: const EdgeInsetsDirectional.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.black87),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Gender : ${isMale ? 'Male' : 'Female'}',
                    style: const TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Age : ${age}',
                    style: const TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Result : ${result.round()}',
                    style: const TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding: const EdgeInsetsDirectional.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.black87),
              child: Table(
                border: TableBorder.all(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    style: BorderStyle.none,
                    width: 2),
                children: [
                  TableRow(children: [
                    Column(children: const [
                      Text('Catergory',
                          style: TextStyle(
                              fontSize: 35.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))
                    ]),
                    Column(children: const [
                      Text('Range',
                          style: TextStyle(
                              fontSize: 35.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))
                    ]),
                  ]),
                  TableRow(children: [
                    Column(children: const [
                      Text('Severe Thinness	',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))
                    ]),
                    Column(children: const [
                      Text('< 16',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))
                    ]),
                  ]),
                  TableRow(children: [
                    Column(children: const [
                      Text('Moderate Thinness',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))
                    ]),
                    Column(children: const [
                      Text('16 - 17',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))
                    ]),
                  ]),
                  TableRow(children: [
                    Column(children: const [
                      Text('Mild Thinness	',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))
                    ]),
                    Column(children: const [
                      Text('17 - 18.5',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))
                    ]),
                  ]),
                  TableRow(children: [
                    Column(children: const [
                      Text('Normal',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))
                    ]),
                    Column(children: const [
                      Text('18.5 - 25',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))
                    ]),
                  ]),
                  TableRow(children: [
                    Column(children: const [
                      Text('Overweight',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))
                    ]),
                    Column(children: const [
                      Text('25 - 30',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))
                    ]),
                  ]),
                  TableRow(children: [
                    Column(children: const [
                      Text('Obese Class I	',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))
                    ]),
                    Column(children: const [
                      Text('30 - 35',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))
                    ]),
                  ]),
                  TableRow(children: [
                    Column(children: const [
                      Text('Obese Class II	',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))
                    ]),
                    Column(children: const [
                      Text('35 - 40',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))
                    ]),
                  ]),
                  TableRow(children: [
                    Column(children: const [
                      Text('OObese Class III',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))
                    ]),
                    Column(children: const [
                      Text('> 40',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))
                    ]),
                  ]),
                ],
              ),
            ),
          ),
          Text(
            'Developed by : Badieh Nader',
            style: TextStyle(color: Colors.blueGrey, fontSize: 20),
          )
        ],
      ),
    );
  }
}
