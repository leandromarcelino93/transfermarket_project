import 'package:flutter/material.dart';
import 'package:transfermarket/screens/initialscreen.dart';

class SubmitedProposals extends StatefulWidget {
//terceira tela

  SubmitedProposals({Key? key}) : super(key: key);

  @override
  State<SubmitedProposals> createState() => _SubmitedProposalsState();
}

class _SubmitedProposalsState extends State<SubmitedProposals> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Propostas Enviadas',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text('Propostas Enviadas'),
        ),
        body: Column(
          children: [
            //children: ProposalsInherited.of(context).proposalsList,
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InitialScreen(),
                  ),
                );
              },
              child: Text('Fazer Nova Proposta'),
            ),
          ],
        ),
      ),
    );
  }
}

// class SubmitedProposals extends StatefulWidget {
//
//   final String value;
//   final String nameofplayeronitem;
//
//   const SubmitedProposals(this.value,this.nameofplayeronitem,
//       {Key? key}) : super(key: key);
//
//   @override
//   State<SubmitedProposals> createState() => _SubmitedProposalsState();
// }
//
// class _SubmitedProposalsState extends State<SubmitedProposals> {
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: ListTile(
//         leading: Icon(Icons.monetization_on),
//         title: Text(widget.value),
//         subtitle: Text(widget.nameofplayeronitem),
//       ),
//     );
//   }
// }
