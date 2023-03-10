import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewEventScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NewEventScreen();
}

class _NewEventScreen extends State<NewEventScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      appBar: AppBar(
          title: Text("New Event", textScaleFactor: 1.2),
          backgroundColor: Colors.deepPurple[800]),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 60.0,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(17.0),
              ),
              child: SingleChildScrollView(
                child: TextFormField(
                  keyboardType: TextInputType.multiline,
                  minLines: 1,
                  maxLines: 10,
                  // expands: true,
                  textInputAction: TextInputAction.newline,
                  controller: _textEditingController,
                  decoration: const InputDecoration(
                    // border: UnderlineInputBorder(),
                    labelText: "Event",
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),

                    prefixIcon: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Icon(
                        Icons.calendar_today,
                        color: Colors.white,
                      ),
                    ),
                  ),

                ),
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            Builder(builder: (context) {
              return SizedBox(
                height: 60,
                width: 350,
                child: ElevatedButton(
                    onPressed: () {
                      String newEventText = _textEditingController.text;
                      Navigator.of(context).pop(newEventText);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple[100],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60),
                        )),
                    child: const Text(
                      "ADD",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    )),
              );
            }),
          ],
        ),
      ),
    );
  }
}