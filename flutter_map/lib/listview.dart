import 'package:flutter/material.dart';
import 'package:flutter_google_maps/main_map.dart';

class MyHomePage extends StatelessWidget {
  final VoidCallback signOut;
  MyHomePage(this.signOut);
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman ListView"),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              signOut();
            },
            icon: Icon(Icons.lock_open),
          )
        ],
      ),
      body: _buildListView(context),
    );
  }

  ListView _buildListView(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (_, index) {
        return Card(
          child: ListTile(
            title: Text('Buka Google Map #$index'),
            subtitle: Text('Klik Icon Panah Untuk Buka Map'),
            leading: Icon(
              Icons.room_sharp,
              color: Colors.red,
              size: 40,
            ),
            trailing: IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Main_map(index),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
