import 'package:flutter/material.dart';

class home extends StatefulWidget {
  @override
  _home_state createState() => _home_state();
}

class _home_state extends State<home> {
  static TextEditingController userController = new TextEditingController();
  static TextEditingController passwordController = new TextEditingController();
  TextField txf_user = new TextField(
    keyboardType: TextInputType.number,
    controller: userController,
    decoration: new InputDecoration(
      labelText: "Nick",
      hintText: "Digite aqui seu nick",
      //labelStyle: new TextStyle(color: AppColor)
    ),
    //style: new TextStyle(color: AppColor, fontSize: 20),
  );
  TextField txf_pass = new TextField(
    keyboardType: TextInputType.number,
    controller: passwordController,
    decoration: new InputDecoration(
      labelText: "Senha",
      hintText: "Digite aqui sua senha.",
      //labelStyle: new TextStyle(color: AppColor),
    ),
    //style: new TextStyle(color: AppColor, fontSize: 20),
  );

  static List<Widget> questsToSent = <Widget>[
    new ListTile(
      onTap: null,
      title: new Row(
        children: <Widget>[
          new Expanded(child: new Text("Fulano Siclano da Silva")),
          new Checkbox(value: false, onChanged: (bool value) {})
        ],
      ),
    ),
    new ListTile(
      onTap: null,
      title: new Row(
        children: <Widget>[
          new Expanded(child: new Text("Beutrano Beutrame da Silva")),
          new Checkbox(value: true, onChanged: (bool value) {})
        ],
      ),
    ),
    new ListTile(
      onTap: null,
      title: new Row(
        children: <Widget>[
          new Expanded(child: new Text("John Lorem Doe")),
          new Checkbox(value: true, onChanged: (bool value) {})
        ],
      ),
    )
  ];

  static List<Widget> penddingQuests = <Widget>[
    new Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            title: Text('Fulano Siclano da Silva'),
            subtitle: Text('Consequências ambientais (06/12/2019)'),
          ),
          ButtonTheme.bar(
            // make buttons use the appropriate styles for cards
            child: ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('EXIBIR'),
                  onPressed: () {
                    /* ... */
                  },
                ),
                FlatButton(
                  child: const Text('EDITAR'),
                  onPressed: () {
                    /* ... */
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    new Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            title: Text('Beutrano Beutrame da Silva'),
            subtitle: Text('Razões humanas (06/12/2019)'),
          ),
          ButtonTheme.bar(
            // make buttons use the appropriate styles for cards
            child: ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('EXIBIR'),
                  onPressed: () {
                    /* ... */
                  },
                ),
                FlatButton(
                  child: const Text('EDITAR'),
                  onPressed: () {
                    /* ... */
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    new Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            title: Text('John Lorem Doe'),
            subtitle: Text('Sustentabilidade e bom viver (06/12/2019)'),
          ),
          ButtonTheme.bar(
            // make buttons use the appropriate styles for cards
            child: ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('EXIBIR'),
                  onPressed: () {
                    /* ... */
                  },
                ),
                FlatButton(
                  child: const Text('EDITAR'),
                  onPressed: () {
                    /* ... */
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    )
  ];

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    new Scaffold(
      body: new Center(
          child: new Padding(
            padding: EdgeInsets.all(20),
            child: new Text(
              'Toque em + para iniciar um novo questionário.',
              style: optionStyle,
            ),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
      },
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
    ),
    new Scaffold(
      body: new Padding(
          padding: EdgeInsets.all(5),
          child: new ListView(children: penddingQuests)),
    ),
    new Scaffold(
      body: new Padding(
          padding: EdgeInsets.all(5),
          child: new ListView(children: questsToSent)),
    ),
    new Scaffold(
        body: new Padding(
            padding: EdgeInsets.all(5),
            child: new Center(
                child: new ListView(
                  children: <Widget>[
                    new RaisedButton(
                        onPressed: () {},
                        child: new Text('Disabled Button',
                            style: TextStyle(fontSize: 20))),
                    new RaisedButton(
                        onPressed: () {},
                        child: new Text('Disabled Button',
                            style: TextStyle(fontSize: 20))),
                  ],
                ))))
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.question_answer),
            title: Text('Responder'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text('Listar'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud_upload),
            title: Text('Enviar'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.indigo,
        onTap: _onItemTapped,
      ),
    );
  }
}