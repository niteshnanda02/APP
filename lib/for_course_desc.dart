 RaisedButton( padding: const EdgeInsets.all(8.0),
                    textColor: Colors.white,
                    color: Colors.blue,
                    onPressed: (){ Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SecondPage()),
  );},
                    child: new Text("Route"),),