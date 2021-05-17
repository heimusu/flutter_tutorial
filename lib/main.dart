import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:hello_world/TestPage1.dart';
import 'package:hello_world/TestPage2.dart';
import 'package:hello_world/TestPage3.dart';

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
        ),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
        routes: {
          "/test1": (BuildContext context) => TestPage1(),
          "/test2": (BuildContext context) => TestPage2(),
          "/test3": (BuildContext context) => TestPage3(),
        });
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _type = '偶数';

  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter % 2 == 0) {
        _type = '偶数';
      } else {
        _type = '奇数';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: TestPage1()
        // appBar: AppBar(
        //     title: Row(
        //   children: [Icon(Icons.create), Text('初めてのタイトル')],
        // )),
        // drawer: Drawer(
        //   child: Center(
        //     child: Text('Drawer'),
        //   ),
        // ),
        // body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        //   Text('初めてのテキスト'),
        //   Text('2番目のテキスト'),
        //   TextButton(onPressed: () => {print('ボタンが押されたよ')}, child: Text('更新')),
        //   Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceAround,
        //     children: [
        //       Icon(Icons.favorite, color: Colors.pink, size: 24.0),
        //       Icon(Icons.audiotrack, color: Colors.green, size: 30.0),
        //       Icon(Icons.beach_access, color: Colors.blue, size: 36.0)
        //     ],
        //   ),
        //   Text(
        //     'You have pushed the button this many times:',
        //   ),
        //   Text(
        //     '$_counter',
        //     style: Theme.of(context).textTheme.headline4,
        //   ),
        //   Text(
        //     '$_type',
        //     style: TextStyle(fontSize: 20, color: Colors.red),
        //   ),
        //   if (_counter % 2 == 0)
        //     Text('偶数です', style: TextStyle(fontSize: 20, color: Colors.red)),
        //   if (_counter % 2 == 1)
        //     Text('奇数です', style: TextStyle(fontSize: 20, color: Colors.red)),
        //   IconButton(
        //       icon: Icon(Icons.open_in_browser),
        //       onPressed: () async {
        //         String url = Uri.encodeFull("https://www.google.co.jp");
        //         if (await canLaunch(url)) {
        //           await launch(url);
        //         }
        //       }),
        // ]),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: _incrementCounter,
        //   child: Icon(Icons.timer),
        // ),
        );
  }
}
