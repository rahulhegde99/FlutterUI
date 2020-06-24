import 'package:flutter/material.dart';

class ThirdFragment extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.trending_up),
              title: Text('Toyota'),
              subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('GRAPH'),
                  onPressed: () {/* ... */},
                ),
                FlatButton(
                  child: const Text('TABLE'),
                  onPressed: () {/* ... */},
                ),
              ],
            ),
            Divider(),
            const ListTile(
              leading: Icon(Icons.trending_flat),
              title: Text('Fiat'),
              subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('GRAPH'),
                  onPressed: () {/* ... */},
                ),
                FlatButton(
                  child: const Text('TABLE'),
                  onPressed: () {/* ... */},
                ),
              ],
            ),
            Divider(),
            const ListTile(
              leading: Icon(Icons.trending_down),
              title: Text('Google'),
              subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('GRAPH'),
                  onPressed: () {/* ... */},
                ),
                FlatButton(
                  child: const Text('TABLE'),
                  onPressed: () {/* ... */},
                ),
              ],
            ),
            Divider(),
            const ListTile(
              leading: Icon(Icons.trending_up),
              title: Text('Amazon'),
              subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('GRAPH'),
                  onPressed: () {/* ... */},
                ),
                FlatButton(
                  child: const Text('TABLE'),
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