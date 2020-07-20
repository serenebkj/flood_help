import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyEntryPage(title: 'Flood Help'),
    );
  }
}

class MyEntryPage extends StatefulWidget {
  MyEntryPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyEntryPageState createState() => _MyEntryPageState();
}

class _MyEntryPageState extends State<MyEntryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 100.0, right: 20.0, left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'We are here to help you',
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade800),
            ),
            SizedBox(
              height: 40.0,
            ),
            buildTextField("Enter your locality"),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String textHint) {
    return TextField(
      decoration: InputDecoration(
          hintText: textHint,
          hintStyle: TextStyle(
            color: Colors.blue,
            fontSize: 16.0,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          prefixIcon: textHint == "Enter your locality"
              ? Icon(
                  Icons.location_on,
                  color: Colors.blue.shade600,
                )
              : Icon(Icons.location_on)),
    );
  }
}
