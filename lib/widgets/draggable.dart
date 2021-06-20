import 'package:flutter/material.dart';

class DraggableWidget extends StatefulWidget {
  const DraggableWidget({Key? key}) : super(key: key);

  @override
  _DraggableWidgetState createState() => _DraggableWidgetState();
}

class _DraggableWidgetState extends State<DraggableWidget> {
  int acceptedData = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Draggable Widgets')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Draggable<int>(
                  data: 10,
                  child: Container(
                    height: 120.0,
                    width: 120.0,
                    color: Colors.green,
                    child: const Center(
                      child: Text('Draggable'),
                    ),
                  ),
                  feedback: Container(
                    color: Colors.deepOrange,
                    height: 120.0,
                    width: 120.0,
                    child: const Icon(Icons.directions_run),
                  ),
                  childWhenDragging: Container(
                    height: 120.0,
                    width: 120.0,
                    color: Colors.pinkAccent,
                    child: const Center(
                      child: Text('Child When Dragging'),
                    ),
                  ),
                ),
                DragTarget<int>(
                  builder: (
                    BuildContext context,
                    List<dynamic> accepted,
                    List<dynamic> rejected,
                  ) {
                    return Container(
                      height: 120.0,
                      width: 120.0,
                      color: Colors.cyan,
                      child: Center(
                        child: Text('Value is updated to: $acceptedData'),
                      ),
                    );
                  },
                  onAccept: (int data) {
                    setState(() {
                      acceptedData += data;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Draggable<int>(
                  data: 10,
                  child: Container(
                    height: 120.0,
                    width: 120.0,
                    color: Colors.green,
                    child: const Center(
                      child: Text('Draggable'),
                    ),
                  ),
                  feedback: Container(
                    color: Colors.deepOrange,
                    height: 120.0,
                    width: 120.0,
                    child: const Icon(Icons.directions_run),
                  ),
                  childWhenDragging: Container(
                    height: 120.0,
                    width: 120.0,
                    color: Colors.pinkAccent,
                    child: const Center(
                      child: Text('Child When Dragging'),
                    ),
                  ),
                ),
                DragTarget<int>(
                  builder: (
                    BuildContext context,
                    List<dynamic> accepted,
                    List<dynamic> rejected,
                  ) {
                    return Container(
                      height: 120.0,
                      width: 120.0,
                      color: Colors.cyan,
                      child: Center(
                        child: Text('Value is updated to: $acceptedData'),
                      ),
                    );
                  },
                  onAccept: (int data) {
                    setState(() {
                      acceptedData += data;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
