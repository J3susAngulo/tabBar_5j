import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pestaña Tab',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.indigo,
      ),
      home: MyHomePage(),
    );
  }
} //mi app

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
} // mi MyHomePage

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Colors.indigoAccent), //Change background color from here
            tabs: [
              Tab(icon: Icon(Icons.tiktok)),
              Tab(icon: Icon(Icons.search)),
              Tab(icon: Icon(Icons.vpn_key)),
              Tab(icon: Icon(Icons.access_time_outlined)),
            ],
          ),
          title: Text('Tabs Demo'),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.tiktok, size: 350),
            Icon(Icons.search, size: 350),
            Icon(Icons.vpn_key, size: 350),
            Icon(Icons.access_time_outlined, size: 350),
          ],
        ),
      ),
    );
  }
} // fin _MyHomePageState
