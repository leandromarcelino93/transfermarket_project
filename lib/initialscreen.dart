import 'package:flutter/material.dart';
import 'package:transfermarket/players.dart';


class InitialScreen extends StatelessWidget {

  const InitialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}