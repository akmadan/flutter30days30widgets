import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({Key? key}) : super(key: key);

  @override
  _ListGridState createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  List<String> names = ['Akshit', 'Karan', 'Gaurav', 'aasif'];

  Map scores = {
    'names': ['Akshit', 'Aasif', 'Gaurav', 'Karan'],
    'marks': [56, 89, 43, 78]
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Grid'),
      ),
      body: Container(
          child:
              //     ListView(
                // axis
              //   children: [
              //     ListTile(
              //       leading: Icon(Icons.person),
              //       title: Text('Akshit'),
              //     ),
              //     ListTile(
              //       leading: Icon(Icons.person),
              //       title: Text('Akshit'),
              //     ),
              //     ListTile(
              //       leading: Icon(Icons.person),
              //       title: Text('Akshit'),
              //     ),
              //     ListTile(
              //       leading: Icon(Icons.person),
              //       title: Text('Akshit'),
              //     ),
              //   ],
              // )

              //         ListView.builder(
              //   itemCount: scores['names'].length,
              //   itemBuilder: (context, index) {
              //     return ListTile(
              //       leading: Icon(Icons.person),
              //       title: Text(scores['names'][index]),
              //       subtitle: Text(scores['marks'][index].toString()),
              //     );
              //   },
              // ),

              //         GridView(
              //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //       crossAxisCount: 3,
              //       crossAxisSpacing: 5,
              //       mainAxisSpacing: 5,
              //       childAspectRatio: 2 / 3),
              //   children: [
              //     Container(
              //       color: Colors.red,
              //       height: 60,
              //       width: 60,
              //     ),
              //     Container(
              //       color: Colors.red,
              //       height: 60,
              //       width: 60,
              //     ),
              //     Container(
              //       color: Colors.red,
              //       height: 60,
              //       width: 60,
              //     ),
              //     Container(
              //       color: Colors.red,
              //       height: 60,
              //       width: 60,
              //     ),
              //     Container(
              //       color: Colors.red,
              //       height: 60,
              //       width: 60,
              //     ),
              //     Container(
              //       color: Colors.red,
              //       height: 60,
              //       width: 60,
              //     ),
              //     Container(
              //       color: Colors.red,
              //       height: 60,
              //       width: 60,
              //     ),
              //   ],
              // )

              GridView.builder(
                  itemCount: 50,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return Container(color: Colors.yellow);
                  })),
    );
  }
}
