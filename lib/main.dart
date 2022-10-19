import 'package:flutter/material.dart';

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
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text('Transfermarket of Dutch Players'),
        ),
        body: ListView(
          children:
          [
            Players('Arjen Robben', 'Altura: 180cm', 'Peso: 80kg', 'Pé esq', 'Posição: Ponta dir.', 'https://www.lance.com.br/files/article_main/uploads/2018/12/02/5c0417bd2a201.jpeg', 5),
            Players('Robin Van Persie', 'Altura: 183cm', 'Peso: 71kg', 'Pé esq', 'Posição: Atacante', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Loco-Fener_%2810%29.jpg/265px-Loco-Fener_%2810%29.jpg', 5),
            Players('Patrick Kluivert', 'Altura: 189cm', 'Peso: 82kg', 'Pé dir', 'Posição: Atacante', 'https://www.ogol.com.br/img/jogadores/95/769195_ori__20210403203542_patrick_kluivert.png', 4),
            Players('Memphis Depay', 'Altura: 177cm', 'Peso: 78kg', 'Pé dir', 'Posição: Ponta esq.', 'https://img.a.transfermarkt.technology/portrait/header/167850-1597927069.jpg?lm=1', 3),
            Players('Matthijs de Ligt', 'Altura: 189cm', 'Peso: 89kg', 'Pé dir', 'Posição: Zagueiro', 'https://images2.minutemediacdn.com/image/upload/c_fill,w_720,ar_16:9,f_auto,q_auto,g_auto/shape%2Fcover%2Fsport%2FEURO-2020-group-CThe-Netherlands-v-Austria-ead1af2215b17e061d181ffd6a6cb8c0.jpg', 4),
          ],
        ),
      ),
    );
  }
}

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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                              Icon(Icons.star, color: (ability >=1) ? Colors.black : Colors.white),
                              Icon(Icons.star, color: (ability >=2) ? Colors.black : Colors.white),
                              Icon(Icons.star, color: (ability >=3) ? Colors.black : Colors.white),
                              Icon(Icons.star, color: (ability >=4) ? Colors.black : Colors.white),
                              Icon(Icons.star, color: (ability >=5) ? Colors.black : Colors.white),
                              ]
                            )
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
                          ElevatedButton(onPressed: (){}, child: Text('Submeter proposta') ),
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


















