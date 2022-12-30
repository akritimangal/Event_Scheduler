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
  final List<Widget> _list = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.deepPurple[300],
          appBar: AppBar(
            title: Text("Event Scheduler",textScaleFactor: 1.3),
            backgroundColor: Colors.deepPurple[800],
          ),
          body: ListView.builder(
            itemCount: _list.length,
            itemBuilder: ((context, index) => _list[index]),
          ),
          floatingActionButton: Builder(builder: (context) {
            return FloatingActionButton(
              backgroundColor: Colors.deepPurple[800],
              onPressed: () async {
                String newText = await Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => NewEventScreen()));
                setState(() {
                  _list.add(Text(newText));
                });
              },
              child: Icon(Icons.add),
            );
          }),
        ));
  }
}