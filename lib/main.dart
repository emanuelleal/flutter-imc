import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Indíce de Massa Corporal'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text('Seu IMC é: '),
              RaisedButton(
                  child: Text('Informe seus dados'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => InformationsPage()),
                    );
                  }
              ),
            ],
          ),
        )
    );
  }
}

class InformationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Informações'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Form(
          child: Column(
            children: <Widget>[
              nameFormField(context),
              heightFormField(context),
              weightFormField(context)
            ],
          ),
        ),
      ),
    );
  }

  TextFormField nameFormField(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          hintText: 'Name', icon: Icon(Icons.person), fillColor: Colors.white),
      validator: (value) {
        if (value.length == 0 || value.trim() == "") {
          return ('Digite um nome válido');
        }
      },
    );
  }

  heightFormField(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          hintText: 'Height',
          icon: Icon(Icons.assessment),
          fillColor: Colors.white),
    );
  }

  weightFormField(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          hintText: 'Weithg',
          icon: Icon(Icons.person_outline),
          fillColor: Colors.white),
    );
  }
}
