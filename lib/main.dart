import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> dropdownItems = ['Male', 'Female'];

  String _dropdownValue;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Column(
            children: [
              ButtonBar(
                buttonHeight: 1,
                buttonMinWidth: 1,
                alignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Never Mind',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    elevation: 5,
                    padding: EdgeInsets.all(15),
                    color: Colors.black,
                    hoverColor: Colors.blue,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        3,
                      ),
                    ),
                    child: Text(
                      'Confirm Revoke',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                color: Colors.black,
                padding: EdgeInsets.all(10),
                child: DropdownButton(
                  hint: Text(
                    'Geder',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  value: _dropdownValue,
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.white,
                  ),
                  dropdownColor: Colors.black,
                  elevation: 0,
                  underline: Container(),
                  onChanged: (String newValue) {
                    setState(
                      () {
                        _dropdownValue = newValue;
                      },
                    );
                  },
                  items: dropdownItems.map(
                    (value) {
                      return DropdownMenuItem(child: Text(value), value: value);
                    },
                  ).toList(),
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Text('CLICK ME'),
              ),
              Ink(
                decoration: ShapeDecoration(
                  color: Colors.grey,
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                ),
              ),
              OutlineButton(
                onPressed: () {},
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 0.8,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text('PHOTOS'),
              ),
              RaisedButton(
                elevation: 5,
                padding: EdgeInsets.all(15),
                color: Color(0xff0000ff),
                hoverColor: Colors.blue,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
                onPressed: () {},
                child: Text('WATCH'),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
          ),
          backgroundColor: Colors.amber,
          onPressed: () {},
        ),
      ),
    );
  }
}


