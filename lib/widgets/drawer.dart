import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    //drawer / end Drawer
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Widget'),
      ),
      drawer: Drawer(
          child: Container(
        color: Colors.deepPurple.shade900,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Row(children: [
                    CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            'https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock-.jpg')),
                    SizedBox(width: 10),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Akshit Madan',
                            style: TextStyle(fontSize: 18),
                          ),
                          Text('Data Science'),
                        ])
                  ]),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.folder),
              title: Text('My Files'),
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text('Shared with me'),
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Starred'),
            ),
            ListTile(
              leading: Icon(Icons.delete),
              title: Text('Trash'),
            ),
            ListTile(
              leading: Icon(Icons.upload),
              title: Text('Uploads'),
            ),
          ],
        ),
      )),
      body: Center(
        child: Text('Hello'),
      ),
    );
  }
}
