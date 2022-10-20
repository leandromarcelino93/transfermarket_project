import 'package:flutter/material.dart';
import 'package:transfermarket/main.dart';
import 'package:transfermarket/skills.dart';

class Players extends StatelessWidget {

  final String nameofplayer;
  final String playerheight;
  final String playerweight;
  final String playerfoot;
  final String playerposition;
  final String photo;
  final int ability;

  const Players (this.nameofplayer, this.playerheight, this. playerweight, this.playerfoot,
      this.playerposition, this.photo, this.ability,
      {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Stack(
            children: [
              Container(color: Colors.white, height: 180,),
              Column(
                children: [
                  Container(color: Colors.orangeAccent, height: 140,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:[
                          Container(width: 165, child: Text(playerposition, style: TextStyle(fontSize: 16,))),
                          Container(
                              width: 70, child: Text('Habilidade', style: TextStyle(fontSize: 14),)),
                          Container(
                            width: 130,
                            child:
                            SkillLevel(ability: ability),
                          ),
                        ]
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(color: Colors.orange, height: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row (
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4), color: Colors.black),
                            width: 72, height: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(4),
                              child: Image.network(photo, fit: BoxFit.cover),
                            ),
                          ),
                          Container(
                              width: 100,
                              child: Text(
                                nameofplayer,
                                style: TextStyle(fontSize: 24,),
                              )
                          ),
                          ElevatedButton(
                              onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => ProposalsForm(),),
                                  );
                              },
                              child: Text('Submeter proposta') ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children:[
                              Container(child: Text(playerheight, style: TextStyle(fontSize: 16,)),),
                              Container(child: Text(playerweight, style: TextStyle(fontSize: 16,)),),
                              Container(child: Text(playerfoot, style: TextStyle(fontSize: 16,)),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ]
        ),
      ),
    );
  }
}