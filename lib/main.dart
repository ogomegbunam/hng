import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _name;

  var _age;
  final _nameController = new TextEditingController();
  final _ageController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HNG'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.blue,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    border: Border.all(color: Colors.blue)),
                height: 50,
                child: TextField(
                  controller: _nameController,
                  textInputAction: TextInputAction.done,
                  autofocus: true,
                  cursorColor: Colors.black54,
                  decoration: InputDecoration(
                    hintText: 'Name',
                    contentPadding: EdgeInsets.only(left: 8, bottom: 16),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    border: Border.all(color: Colors.blue)),
                height: 50,
                child: TextField(
                  controller: _ageController,
                  textInputAction: TextInputAction.done,
                  autofocus: true,
                  cursorColor: Colors.black54,
                  decoration: InputDecoration(
                    hintText: 'Age',
                    contentPadding: EdgeInsets.only(left: 8, bottom: 16),
                    border: InputBorder.none,
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    _name = _nameController.text;
                    _age = _ageController.text;
                  });
                },
                child: Text('Submit'),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Your name is $_name, you are $_age  years old'),
            ],
          ),
        ),
      ),
    );
  }
}
