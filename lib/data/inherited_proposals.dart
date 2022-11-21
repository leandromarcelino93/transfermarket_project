import 'package:flutter/material.dart';
import 'package:transfermarket/main.dart';

class ProposalsInherited extends InheritedWidget {
    ProposalsInherited ({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  final List<Proposals> proposalsList =
  [
    Proposals('12000', 'Robben'),
    Proposals('15000', 'Kluivert'),
  ];

  void newProposal(String valueofplayer, String nameofplayer){
    proposalsList.add(Proposals(valueofplayer, nameofplayer));
  }

  static ProposalsInherited of(BuildContext context) {
    final ProposalsInherited? result = context.dependOnInheritedWidgetOfExactType<ProposalsInherited>();
    assert(result != null, 'No  found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(ProposalsInherited oldWidget) {
    return oldWidget.proposalsList.length != proposalsList.length;
  }
}
