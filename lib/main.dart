import 'package:event_scheduler/new_event.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  final List<String> _list = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple[300],
        appBar: AppBar(
          title: Text("Event Scheduler", textScaleFactor: 1.3),
          backgroundColor: Colors.deepPurple[800],
        ),
        body: Container(
          width: double.infinity,
          child: ListView.builder(
            itemCount: _list.length,
            // itemBuilder: ((BuildContext context,int index) => _list[index]),
            itemBuilder: (context, index) {
              return Card(
                elevation: 17,
                margin: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                child: ListTile(
                  // trailing: const Icon(Icons.delete),
                  tileColor: Colors.white,

                  title: Text(
                    "Event ${index + 1}",
                    style:
                        TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),

                  textColor: Colors.black,

                  subtitle: Text(
                    _list[index].toString(),
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            },
          ),
        ),
        floatingActionButton: Builder(builder: (context) {
          return FloatingActionButton(
            backgroundColor: Colors.deepPurple[800],
            onPressed: () async {
              String newText = await Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => NewEventScreen()));
              setState(() {
                _list.add(newText);
              });
            },
            child: Icon(Icons.add),
          );
        }),
      ),
    );
  }
}
