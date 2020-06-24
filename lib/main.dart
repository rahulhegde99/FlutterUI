/* import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final appTitle = 'Papr Clips';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
      theme: ThemeData(fontFamily: 'SFUI'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  
  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Colors.black),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ), 
        elevation: 0,
        backgroundColor: Colors.grey[50],
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text('My Page!'),
        ),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(15),
                    child: CircleAvatar(
                      backgroundColor: Colors.blueAccent,
                      child: Text('JD'),
                      radius: 30,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Mr.John Doe',
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text("johndoe@gmail.com")
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Text('Indices',style: TextStyle(fontWeight: FontWeight.w500),),
                ],
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Stocks',style: TextStyle(fontWeight: FontWeight.w500),),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Mutual Funds',style: TextStyle(fontWeight: FontWeight.w500),),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Forex',style: TextStyle(fontWeight: FontWeight.w500),),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
} */



import 'package:PaprClip/navigation/fragments/first_fragment.dart';
import 'package:PaprClip/navigation/fragments/fourth_fragment.dart';
import 'package:PaprClip/navigation/fragments/second_fragment.dart';
import 'package:PaprClip/navigation/fragments/third_fragment.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.black,
        fontFamily: "SFUI"
      ),
      home: MyHomePage(),
    );
  }
}

class DrawerItem {
  String title;
  IconData icon;
  Function body;
  DrawerItem(this.title, this.icon, this.body);
}

class MyHomePage extends StatefulWidget {

  final drawerFragments = [
    new DrawerItem("Indices", Icons.assessment, () => new FirstFragment()),
    new DrawerItem("Stocks", Icons.trending_up, () => new SecondFragment()),
    new DrawerItem("Mutual Funds", Icons.work, () => new ThirdFragment()),
    new DrawerItem("Forex", Icons.monetization_on, () => new FourthFragment())
  ];


  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedDrawerFragmentIndex = 0;

  _getDrawerFragmentWidgetIndex(int pos) {
    if (widget.drawerFragments[pos] != null) {
      return widget.drawerFragments[pos].body();
    } else {
      return new Text("Error");
    }
  }
  
  _onSelectFragment(int index) {
    setState(() => _selectedDrawerFragmentIndex = index);
    Navigator.of(context).pop();
  }
  

  @override
  Widget build(BuildContext context) {
    List<Widget> drawerOptions = [];

    for (var i = 0; i < widget.drawerFragments.length; i++) {
      var d = widget.drawerFragments[i];
      drawerOptions.add(
        new ListTile(
          leading: new Icon(d.icon),
          title: new Text(d.title),
          selected: i == _selectedDrawerFragmentIndex,
          onTap: () => _onSelectFragment(i),
        )
      );
    }

    return new Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: new AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[50],
        iconTheme: new IconThemeData(color: Colors.black),
        title: new Text(widget.drawerFragments[_selectedDrawerFragmentIndex].title, style: TextStyle(color: Colors.black),),
      ),
      drawer: new SizedBox(
        width: MediaQuery.of(context).size.width * 0.80,
        child: new Drawer(
          child: new Column(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: new Text("John Doe", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),), 
                accountEmail: new Text("johndoe@gmail.com",style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.grey,
                ),
              ),
              new Column(children: drawerOptions),
            ],
          ),
        ),
      ),
      body: _getDrawerFragmentWidgetIndex(_selectedDrawerFragmentIndex),
    );
  }
}