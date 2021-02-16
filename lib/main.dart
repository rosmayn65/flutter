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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                      child: Container(
                        child: ListView(
                          children: <Widget>[
                            const Center(child: Text('Indonesia')),
                            ListTile(
                              title: Text('Positif :'),
                            ), //ListTile
                            ListTile(
                              title: Text('Sembuh : '),
                            ), //ListTile
                            ListTile(
                              title: Text('Meninggal : '),
                            ), //ListTile
                          ],
                        ),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.red[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.red[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.red[200],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                color: Colors.orange[100],
                borderRadius: BorderRadius.circular(40),
                ),
                child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.all(8),
                        children: <Widget>[
                          ListItem(),
                          Container(
                            width: 100,
                            color: Colors.green[50],
                          ),
                          Container(
                            width: 100,
                            color: Colors.green[100],
                          ),
                          Container(
                            width: 100,
                            color: Colors.green[200],
                          ),
                          Container(
                            width: 100,
                            color: Colors.green[300],
                          ),
                        ],
                      ),
                    )
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      color: Colors.pink,
    );
  }
}
