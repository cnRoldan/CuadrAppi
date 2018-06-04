import 'package:flutter/material.dart';
import 'package:cuadranizate/DetailTask.dart';

class CuadranteMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    createCard(String name, String task, String room, Color color, String url) {
      return new GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              new MaterialPageRoute(
                  builder: (context) => new DetailTask(task, room)));
        },
        child: new Card(
            color: color,
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new ListTile(
                  leading: new CircleAvatar(
                    backgroundImage: new NetworkImage(url),
                  ),
                  title: Text(
                    name,
                    style: new TextStyle(color: Colors.white, fontSize: 22.0),
                  ),
                  subtitle: Text(
                    task,
                    style: new TextStyle(color: Colors.white),
                  ),
                ),
                new ButtonTheme.bar(
                  alignedDropdown: true,
                  child: new ButtonBar(
                    children: <Widget>[
                      new Icon(
                        Icons.mode_comment,
                        color: Colors.white,
                      ),
                      new Checkbox(value: true, onChanged: null),
                    ],
                  ),
                )
              ],
            )),
      );
    }

    Container container = new Container(
        padding: const EdgeInsets.all(10.0),
        child: new Column(
          children: [
            createCard("RAQUEL", "Cocina", "cocina", Colors.red,
                'https://www.sideshowtoy.com/wp-content/uploads/2017/11/dc-comics-justice-league-batman-statue-prime1-studio-feature-903246-1.jpg'),
            createCard("FULANITO", "Salón", "salon", Colors.cyan,
                'https://images-na.ssl-images-amazon.com/images/I/41T1AHZPAjL._SY355_.jpg'),
            createCard("MENGANITO", "Baño/Basura", "bano", Colors.deepPurple,
                'https://i0.wp.com/www.tomosygrapas.com/wp-content/uploads/2017/09/Hugh-Jackman-in-The-Wolverine.jpg'),
            createCard("JUANCHO", "Baño/Pasillo", "bano2", Colors.green,
                'https://www.elmulticine.com/imagenes/noticias/16/fanart-ali-linterna-verde.jpg')
          ],
        ));

    AppBar appBar = new AppBar(title: new Text("Cuadrante"));

    Scaffold scaffold = new Scaffold(
        appBar: appBar,
        body: new ListView(
          children: <Widget>[
            container,
          ],
        ));

    return scaffold;
  }
}
