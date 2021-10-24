import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:thirty_widgets/functions/databaseFunctions.dart';
import 'package:thirty_widgets/pages/pets.dart';

class DatabaseOptions extends StatefulWidget {
  const DatabaseOptions({Key? key}) : super(key: key);

  @override
  _DatabaseOptionsState createState() => _DatabaseOptionsState();
}

class _DatabaseOptionsState extends State<DatabaseOptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Database Options'),
        actions: [
          IconButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
              },
              icon: Icon(Icons.leave_bags_at_home))
        ],
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    create('pets', 'bully', 'bully', 'bull', 10);
                  },
                  child: Text('Create')),
              ElevatedButton(
                  onPressed: () {
                    update('pets', 'tom', 'animal', 'tiger');
                  },
                  child: Text('Update')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PetsList()));
                  },
                  child: Text('Retrieve')),
              ElevatedButton(
                  onPressed: () {
                    delete('pets', 'kitty');
                  },
                  child: Text('Delete')),
            ],
          ),
        ),
      ),
    );
  }
}
