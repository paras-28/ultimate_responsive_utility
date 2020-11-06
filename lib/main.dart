import 'package:flutter/material.dart';
import 'package:utlimate_responsive_utility/util%20/responsive_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ultimate_responsive_utility',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Responsive responsive = Responsive();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive "),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: responsive.getResponsiveValue(
              forShortScreen: Colors.blue,
              forMobLandScapeMode: Colors.purple,
              forMediumScreen: Colors.yellow,
              forLargeScreen: Colors.red,
              context: context),
        ),
      ),
    );
  }
}
