import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

var keypad = [

  'C', 'DEL',  '%',  '-',
  '9', '8',  '7',  'x',
  '6',  '5',  '4',  '/',
  '3',  '2',  '1'   '+',
  '0',  '.',  'ANS',  '=',

];

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
          centerTitle: true,
          backgroundColor: Colors.purpleAccent,
          elevation: 0,
        ),
        backgroundColor: Colors.purpleAccent[100],
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: Text('Screen'),
          ),
          Expanded(
            flex: 2,
              child: GridView.builder(
                itemCount: keypad.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 150,
                    mainAxisExtent: 100,
                    childAspectRatio: 5,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                     child: Text(
                         '$keypad'[index],
                     ),
                    );
                  }
              )
          )
        ],
      ),
    );
  }
}

