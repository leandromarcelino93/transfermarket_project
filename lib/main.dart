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

class ProposalsForm extends StatefulWidget {
//segunda tela
  ProposalsForm({Key? key}) : super(key: key);

  @override
  State<ProposalsForm> createState() => _ProposalsFormState();
}

class _ProposalsFormState extends State<ProposalsForm> {

  TextEditingController nameController = TextEditingController();
  TextEditingController valueController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Form(
        key: _formKey,
        child: Scaffold(
          backgroundColor: Colors.grey,
          appBar: AppBar(
            title: Text('Faça Sua Proposta'),
          ),
          body: Center(
            child: Container(
              color: Colors.white,
              height: 570,
              width: 350,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: TextFormField(
                      validator: (String? value){
                       if(value != null && value.isEmpty){
                         return 'Insira o nome do jogador';
                       }
                       return null;
                      },
                      controller: nameController,
                      style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400, ),
                      decoration: InputDecoration(labelText: 'Nome do Jogador',
                      hintText: 'Digite o nome do jogador',),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      validator: (value){
                        if(value != null){
                          return 'Insira um valor para proposta';
                        }
                        return null;
                      },
                      controller: valueController,
                      style: TextStyle(fontSize: 23,fontWeight: FontWeight.w400,),
                      decoration: InputDecoration(icon: Icon(Icons.monetization_on), labelText: 'Valor da Proposta'),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  ElevatedButton(onPressed:(){
                    if(_formKey.currentState!.validate()) {
                      print(nameController.text);
                      print(valueController.text);
                      }
                    }, child: Text('Enviar Proposta')),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Proposals extends StatefulWidget {
//terceira tela
  const Proposals({Key? key}) : super(key: key);

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
                 SubmitedProposals(ItemProposals('12.000.000', 'Arjen Robben')),
          ],
        ),
      ),
    );
  }
}

class SubmitedProposals extends StatelessWidget {

  final ItemProposals _itemproposals;

  const SubmitedProposals(this._itemproposals,
      {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_itemproposals.value),
        subtitle: Text(_itemproposals.nameofplayeronitem),
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


















