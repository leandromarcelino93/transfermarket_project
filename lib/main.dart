import 'package:flutter/material.dart';
import 'package:transfermarket/initialscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: InitialScreen(),
    );
  }
}

class ProposalsForm extends StatelessWidget {

  ProposalsForm({Key? key}) : super(key: key);

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
          title: Text('Faça Sua Proposta'),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: TextField(
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400, ),
                decoration: InputDecoration(labelText: 'Nome do Jogador',
                hintText: 'Digite o nome do jogador',),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                style: TextStyle(fontSize: 23,fontWeight: FontWeight.w400,),
                decoration: InputDecoration(icon: Icon(Icons.monetization_on), labelText: 'Valor da Proposta'),
                keyboardType: TextInputType.number,
              ),
            ),
            ElevatedButton(onPressed:(){

              }, child: Text('Enviar Proposta')),
          ],
        ),
      ),
    );
  }
}

class Proposals extends StatelessWidget {

  const Proposals({Key? key}) : super(key: key);

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
                 SubmitedProposals(ItemProposals('12.000.000', 'Arjen Robben')),
          ],
        ),
      ),
    );
  }
}

class SubmitedProposals extends StatelessWidget {

  final ItemProposals itemproposals;

  const SubmitedProposals(this.itemproposals,
      {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(itemproposals.value),
        subtitle: Text(itemproposals.nameofplayeronitem),
      ),
    );
  }
}

class ItemProposals extends StatelessWidget {

  final String value;
  final String nameofplayeronitem;

  const ItemProposals(this.value, this.nameofplayeronitem,
      {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


















