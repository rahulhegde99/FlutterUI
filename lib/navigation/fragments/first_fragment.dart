import 'package:flutter/material.dart';

/* class FirstFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Container(
        child: Column(children: <Widget>[
          Card(
            child: ,
          )
        ],)
      ),
    );
  }

} */

class FirstFragment extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.trending_up),
              title: Text('Dow Jones'),
              subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('GRAPH'),
                  onPressed: () {/* ... */},
                ),
                FlatButton(
                  child: const Text('INDEX'),
                  onPressed: () {/* ... */},
                ),
              ],
            ),
            Divider(),
            const ListTile(
              leading: Icon(Icons.trending_flat),
              title: Text('FTSE 100 Index'),
              subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('GRAPH'),
                  onPressed: () {/* ... */},
                ),
                FlatButton(
                  child: const Text('INDEX'),
                  onPressed: () {/* ... */},
                ),
              ],
            ),
            Divider(),
            const ListTile(
              leading: Icon(Icons.trending_down),
              title: Text('Nifty'),
              subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('GRAPH'),
                  onPressed: () {/* ... */},
                ),
                FlatButton(
                  child: const Text('INDEX'),
                  onPressed: () {/* ... */},
                ),
              ],
            ),
            Divider(),
            const ListTile(
              leading: Icon(Icons.trending_up),
              title: Text('BSE SENSEX'),
              subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('GRAPH'),
                  onPressed: () {/* ... */},
                ),
                FlatButton(
                  child: const Text('INDEX'),
                  onPressed: () {/* ... */},
                ),
              ],
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
