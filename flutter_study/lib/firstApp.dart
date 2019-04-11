import 'package:flutter/material.dart';
import 'package:flutter_study/SwitchAndCheckBoxTestRoute.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo1',
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
      ),
      routes:{
        "new_page":(context)=>NewRoute(),
        "tip_widgets":(context)=>EchoRoute("内容固定"),
      } ,
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            FlatButton(
              child: Text("open new route"),
              textColor: Colors.blue,
              onPressed: () {
//                debugDumpApp();
                Navigator.pushNamed(context, "new_page");
                //导航到新路由
//                Navigator.push( context,
//                    new MaterialPageRoute(builder: (context) {
//                      return new NewRoute();
//                    }));
              },
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New route"),

      ),
      body: Center(
          child: new Column(
            children: <Widget>[

              Image(
                image: AssetImage("image/lake.jpg"),
                width: 100.0,
                color: Colors.blue,
                colorBlendMode: BlendMode.difference,
              ),

              Image(
                image: AssetImage("image/lake.jpg"),
                width: 100.0,
                color: Colors.blue,
                colorBlendMode: BlendMode.difference,
              ),
              SwitchAndCheckBoxTestRoute(),
            ],
          )
      ),
    );
  }
}
class EchoRoute extends StatelessWidget {
  EchoRoute(this.tip);

  final String tip;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Echo route"),
      ),
      body: Center(
        //回显tip内容
        child: Text(tip),
      ),
    );
  }
}