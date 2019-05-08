import 'package:flutter/material.dart';

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
//      home: new MyHomePage(title: 'Flutter Demo Home Page'),
      home: new FlexLayoutTestRoute(),
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
      body: Padding(
        //上下左右各添加16像素补白
        padding: EdgeInsets.all(16.0),
    child: Column(
    //显式指定对齐方式为左对齐，排除对齐干扰
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
    Padding(
    //左边添加8像素补白
    padding: const EdgeInsets.only(left: 8.0),
    child: Text("Hello world"),
    ),
    Expanded(
      child:Container(
        color: Colors.green,
        child:  Padding(
          // 分别指定四个方向的补白
          padding: const EdgeInsets.fromLTRB(20.0,30.0,20.0,20.0),
          child: Text("Your friendesdrftgyuhjikoazsxdcfvghbjrtfygiuhijwserdtfygwestrdytfwaestrdytxryctuvybuhrxdctfvygnksdxfcgvh"),
        ),
      ) ,
    ),
    Padding(
      //上下各添加8像素补白
      padding: const EdgeInsets.symmetric(vertical: 8.0),
//    padding: const EdgeInsets.only(left: 8.0),
      child: Text("I am Jack"),
    ),
    ],
    ),
    ),
    );
  }
}
class FlexLayoutTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //Flex的两个子widget按1：2来占据水平空间
        Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                height: 60.0,
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 30.0,
                color: Colors.green,
              ),
            ),
          ],
        ),
        Padding(
          
          padding: const EdgeInsets.only(top: 20.0),
          child: SizedBox(
            height: 200.0,
            //Flex的三个子widget，在垂直方向按2：1：1来占用100像素的空间
            child: Flex(
              direction: Axis.vertical,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 30.0,
                    color: Colors.red,
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 30.0,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}