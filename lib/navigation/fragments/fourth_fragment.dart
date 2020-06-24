import 'package:flutter/material.dart';

class FourthFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text('Dollar'),
              subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('CHART'),
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
              leading: Icon(Icons.monetization_on),
              title: Text('Rupees'),
              subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('CHART'),
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
              leading: Icon(Icons.monetization_on),
              title: Text('Pounds'),
              subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('CHART'),
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