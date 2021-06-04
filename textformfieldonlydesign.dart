import 'package:flutter/material.dart';
 
void main() => runApp(MyAppnew());
 
class MyAppnew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: TextFormApp()
    );
  }
}
class TextFormApp extends StatefulWidget {
final data;

  const TextFormApp({Key key, this.data}) : super(key: key);

  @override
  _TextFormAppState createState() => _TextFormAppState();
}

class _TextFormAppState extends State<TextFormApp> {
  @override
  Widget build(BuildContext context) {
 final name =TextFormField(
   decoration: InputDecoration(
     labelText: "Name",
     border: OutlineInputBorder(),
    )
 );
final password =TextFormField(
  obscureText: true,
   decoration: InputDecoration(
     labelText: "password",
     border: OutlineInputBorder(),
    )
 );

 final email =TextFormField(
   decoration: InputDecoration(
     labelText: "email",
     border: OutlineInputBorder(),
    )
 );

final submit = RaisedButton(
  child:Text("text submit"),
  onPressed: (){});


    return Scaffold(
appBar: AppBar(
  title: Text("Text Field"),
),
      body:Container(
        margin: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
        Column(children: <Widget>[
          Divider(),
          name,
            Divider(),
            password,
              Divider(),
              email,
              Divider(),
              submit,


        ],
        ),
          ],
        ),
      )
    );
  }
}