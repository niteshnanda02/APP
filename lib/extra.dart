
Widget _getListItemUI(BuildContext context, int index) {
  return new Card(
      child: new Column(children: <Widget>[
        new ListTile(
            title: new Text(
              "Python Programming",
              style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
            ),
            subtitle: new Column(
              children: <Widget>[
                Text("Platform", style: TextStyle(fontSize: 9.0))
              ],
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
            onTap: () {})
      ]));
}

final gridItem = new Card(
  child: new Column(children: <Widget>[
    new Container(
      color: Colors.red,
    )
  ]),
);
