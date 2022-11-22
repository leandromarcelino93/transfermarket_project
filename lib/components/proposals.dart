import 'package:flutter/material.dart';


class Proposals extends StatefulWidget {

  final String value;
  final String nameofplayeronitem;

  Proposals(this.value, this. nameofplayeronitem,
      {Key? key}) : super(key: key);

  @override
  State<Proposals> createState() => _ProposalsState();
}

class _ProposalsState extends State<Proposals> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text('Propostas Enviadas'),
        ),
        body: Column(
          children: <Widget>[
            Card(
              child: ListTile(
                leading: Icon(Icons.monetization_on),
                title: Text(widget.value),
                subtitle: Text(widget.nameofplayeronitem),
              ),
            ),
          ],
        ),
      ),
    );
  }
}