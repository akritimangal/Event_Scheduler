import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewEventScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NewEventScreen();
}

class _NewEventScreen extends State<NewEventScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      appBar: AppBar(
          title: Text("New Event", textScaleFactor: 1.2),
          backgroundColor: Colors.deepPurple[800]),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: "Event",
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
                fillColor: Colors.orange,
                prefixIcon: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Icon(
                    Icons.calendar_today,
                    color: Colors.white,
                  ),
                ),
              ),
              controller: _textEditingController,

              //-----------------NOT WORKING -------------------------
              validator: (value) {
                if (value!.isEmpty) {
                  return "Event cannot be empty";
                }
                return null;
              },
              onChanged:(value){
                setState((){});
              },
              //---------------------------------------------------------------

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
                    child: Text(
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

/*-------TO DO--------------------
1)event text formfield can't get multiple line input
2)textform field enclose in box
3)main home page scrollable
4)event in form of box
5)event delete functionality
 */