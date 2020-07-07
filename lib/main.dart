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
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Layout"),
      ),
      body: Center(child: Ex6()),
    );
  }
}

class Ex1 extends StatelessWidget {
  const Ex1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Box(),
        Box(),
        Box(),
      ],
    );
  }
}

class Ex2 extends StatelessWidget {
  const Ex2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Box(),
        SizedBox(height: 50),
        Box(),
        SizedBox(height: 20),
        Box(),
      ],
    );
  }
}

class Ex3 extends StatelessWidget {
  const Ex3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Box()),
        Spacer(),
        Box(),
        Spacer(),
        Flexible(
          flex: 2,
          fit: FlexFit.tight,
          child: Box(),
        ),
      ],
    );
  }
}

class Ex4 extends StatelessWidget {
  const Ex4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          FlutterLogo(
            size: 300,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(50),
              width: 800,
              child: Wrap(
                spacing: 10,
                runSpacing: 20,
                direction: Axis.vertical,
                children:
                    List.generate(20, (index) => Chip(label: Text("flutter"))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Ex5 extends StatelessWidget {
  const Ex5({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: Container(color: Colors.red),
        ),
        Flexible(
          flex: 8,
          fit: FlexFit.tight,
          child: Container(
            margin: EdgeInsets.all(20),
            color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Box(),
                Box(),
                Box(),
              ],
            ),
          ),
        ),
        Flexible(
          child: Container(color: Colors.yellow),
        )
      ],
    );
  }
}

class Ex6 extends StatelessWidget {
  const Ex6({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40),
        Text(
          "Sweet Macaron",
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.star, color: Colors.yellow),
            Icon(Icons.star, color: Colors.yellow),
            Icon(Icons.star, color: Colors.yellow),
            Icon(Icons.star, color: Colors.yellow),
            Icon(Icons.star, color: Colors.yellow),
          ],
        ),
        Text("200 Ratings"),
        SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FlatButton.icon(
              icon: Icon(Icons.favorite),
              label: Text("Like"),
              onPressed: () {},
              textColor: Colors.red,
            ),
            FlatButton.icon(
              icon: Icon(Icons.bookmark),
              label: Text("Save"),
              onPressed: () {},
              textColor: Colors.grey,
            ),
            FlatButton.icon(
              icon: Icon(Icons.share),
              label: Text("Share"),
              onPressed: () {},
              textColor: Colors.grey,
            )
          ],
        ),
        Spacer(),
        Expanded(
          flex: 5,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/macaron.jpg"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class Box extends StatelessWidget {
  const Box({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.amber,
        border: Border.all(),
      ),
    );
  }
}
