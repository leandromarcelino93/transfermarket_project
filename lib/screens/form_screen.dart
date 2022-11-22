import 'package:flutter/material.dart';
import 'package:transfermarket/data/inherited_proposals.dart';
import 'package:transfermarket/screens/submited_proposals_screen.dart';


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
                        if(value != null && value.isEmpty){
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
                  ElevatedButton(
                    child: Text('Enviar Proposta'),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        print(nameController.text);
                        print(valueController.text);
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Proposta enviada.'),
                          ),
                        );
                        //SnackBar não está funcionando por enquanto.
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SubmitedProposals(),
                          ),
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}