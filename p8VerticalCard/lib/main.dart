import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

void main() => runApp(const MyApp());

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Tarjeta Vertical',
      debugShowCheckedModeBanner: false,
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: const MyHomePage(),
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> titles = [
    "Challenger",
    "Sierra",
    "Mustang",
    "Tesla",
    "Audi",
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> images = [
      Container(
        child: Column(
          children: <Widget>[
            Image(
              fit: BoxFit.contain,
              height: 100,
              image: const NetworkImage(
                  "https://raw.githubusercontent.com/CristianHDZ-ui/p8VerticalCard/main/carros/challenger.png"),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        child: Column(
          children: <Widget>[
            Image(
              fit: BoxFit.contain,
              height: 100,
              image: const NetworkImage(
                  "https://raw.githubusercontent.com/CristianHDZ-ui/p8VerticalCard/main/carros/sierra.png"),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        child: Column(
          children: <Widget>[
            Image(
              fit: BoxFit.contain,
              height: 100,
              image: const NetworkImage(
                  "https://raw.githubusercontent.com/CristianHDZ-ui/p8VerticalCard/main/carros/mustang.png"),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.cyan,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        child: Column(
          children: <Widget>[
            Image(
              fit: BoxFit.contain,
              height: 100,
              image: const NetworkImage(
                  "https://raw.githubusercontent.com/CristianHDZ-ui/p8VerticalCard/main/carros/tesla.png"),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        child: Column(
          children: <Widget>[
            Image(
              fit: BoxFit.contain,
              height: 100,
              image: const NetworkImage(
                  "https://raw.githubusercontent.com/CristianHDZ-ui/p8VerticalCard/main/carros/audi.png"),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hernandez Vertical',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Expanded(
          child: Container(
            child: VerticalCardPager(
              textStyle:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              titles: titles,
              images: images,
              onPageChanged: (page) {},
              align: ALIGN.CENTER,
              onSelectedItem: (index) {},
            ),
          ),
        ),
      ),
    );
  }
}
