import 'package:flutter/material.dart';

class DetailTask extends StatelessWidget {
  final String task;
  final String room;

  DetailTask(this.task, this.room);

  @override
  Widget build(BuildContext context) {
    Widget textSection = new Container(
        padding: const EdgeInsets.all(32.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              margin: const EdgeInsets.only(bottom: 20.0),
              child: new Text(
                "COMENTARIO",
                softWrap: true,
                style: new TextStyle(fontSize: 20.0, color: Colors.cyan),
              ),
            ),
            new TextField(
              decoration: const InputDecoration(
                  hintText: "Añadir un comentario a la limpieza",
                  border: UnderlineInputBorder()),
              keyboardType: TextInputType.multiline,
              maxLines: 5,
              textAlign: TextAlign.center,
            ),
            new Container(
              margin: const EdgeInsets.only(top: 20.0),
              child: new RaisedButton(
                child: new Text("REALIZAR"),
              ),
            )
          ],
        ));

    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Detalles de " + task),
        ),
        body: new ListView(
          children: <Widget>[
            new Image.asset(
              "images/" + room + ".jpg",
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            ),
            textSection
          ],
        ));
  }
}
