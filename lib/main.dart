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
            Players('Arjen Robben'),
            Players('Robin Van Persie'),
            Players('Patrick Kluivert'),
            Players('Memphis Depay'),
            Players('Matthijs de Ligt'),
          ],
        ),
      ),
    );
  }
}

class Players extends StatelessWidget {

  final String nameofplayer;

  const Players (this.nameofplayer, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Stack(
            children: [
              Container(color: Colors.orangeAccent, height: 140,),
              Container(color: Colors.orange, height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row (
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(color: Colors.black54, width: 72, height: 100,),
                      Container(
                        width: 200,
                          child: Text(
                            nameofplayer,
                            style: TextStyle(fontSize: 27),
                          )
                      ),
                      ElevatedButton(onPressed: (){}, child: Icon(Icons.add),),
                      Container(),
                    ],
                  ),
                ),
              ),
            ]
        ),
      ),
    );
  }
}


















