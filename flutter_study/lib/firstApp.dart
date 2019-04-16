import 'package:flutter/material.dart';
import 'package:flutter_study/SwitchAndCheckBoxTestRoute.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo1',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
      ),
//      routes:{
//        "new_page":(context)=>NewRoute(),
//        "tip_widgets":(context)=>EchoRoute(),
//        "Padding_example":(context)=>PaddingTestRoute(),
//      } ,
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
                Navigator.pushNamed(context, "Padding_example");
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
              new Expanded(
                child: Image(
                  image: AssetImage("image/lake.jpg"),
                  width: 100.0,
                ),
              ),

      Column(
        //测试Row对齐方式，排除Column默认居中对齐的干扰
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(" hello world "),
              Text(" I am Jack "),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(" hello world "),
              Text(" I am Jack "),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            textDirection: TextDirection.rtl,
            children: <Widget>[
              Text(" hello world "),
              Text(" I am Jack "),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            verticalDirection: VerticalDirection.up,
            children: <Widget>[
              Text(" hello world ", style: TextStyle(fontSize: 30.0),),
              Text(" I am Jack "),
            ],
          ),
        ],
      ),



            ],
          )
      ),
    );
  }
}
