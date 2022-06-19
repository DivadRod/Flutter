import 'package:flutter/material.dart';
import 'package:iu_design/gradient_back.dart';
//import 'package:iu_design/description_place.dart';
//import 'package:iu_design/review.dart';
import 'package:iu_design/review_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  //String descriptionTextPlace = "Masaya es una reserva viva de las tradiciones precolombinas, coloniales y republicanas de Nicaragua. Cos tumbres que han mantenido la identidad cultural de las comunidades de la región de la Meseta de los Pueblos. La ciudad de Masaya es, sin lugar a dudas, el centro de la rica cultura indígena y mestiza de Nicaragua.";

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String descriptionTextPlace =
      "Masaya es una reserva viva de las tradiciones precolombinas, coloniales y republicanas de Nicaragua. Cos tumbres que han mantenido la identidad cultural de las comunidades de la región de la Meseta de los Pueblos. La ciudad de Masaya es, sin lugar a dudas, el centro de la rica cultura indígena y mestiza de Nicaragua.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Stack(
          children: <Widget>[
            ListView(children: <Widget>[
              GradinentBack(),
            ])
          ],
        ));
    //body: new DescriptionPlace("Volcan Masaya", 5, descriptionTextPlace),
  }
}
