import 'package:flutter/material.dart';
import 'package:new_project/widgets/titulo_secao.dart';

class WidgetsLayout extends StatelessWidget {
  const WidgetsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text( "Widgets de Layout"),),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TituloSecao(titulo: "Padding"),
          Container(
            color: Colors.amberAccent,
            child:Padding(
          padding: EdgeInsets.all(20),
          child: Text("Texto com padding interno de 20px"),
        ),
        ),
        Divider(),
        TituloSecao(titulo: "Align"),
        Container(
          height: 80,
          color: Colors.greenAccent,
          child: Align( 
            alignment: Alignment.bottomRight,
            child: Text("Texto alinhado ao fundo à direita"),
          ),
        ),
        Divider(),
        TituloSecao(titulo: "Center"),
        Container(
          height: 80,
          color: Colors.lightBlueAccent,
          child: Center(
            child: Text("Texto centralizado"),
          ),
        ),
        Divider(),
        TituloSecao(titulo: "SizedBox"),
        Column(
          children: [
            Text("Texto acima do SizedBox"),
            SizedBox(height: 30, child: Container(color: Colors.deepOrange,)),
            Text("Texto abaixo do SizedBox com espaçamento de 30px"),
          ],
        ),
        Divider(),
        TituloSecao(titulo: "Expanded e Flexible (em coluna)"),
        Container(
          height: 200,
          color: Colors.grey[300],
          child: Column(children: [
            Expanded(child: Container(
              color: Colors.red,
              child: Center(child: Text("Expanded")
              ),
            )
            ),
            Flexible(flex: 2, child: Container(
              color: Colors.green,
              child: Center(child: Text("Flexible com flex 2")),
            )
            ),
            
          ],)
        ),
        Divider(),

        TituloSecao(titulo:"Expanded e Flexible (em linha)"),
        Container(
          height: 100,
          color: Colors.grey[300],
          child: Row(children: [
            Expanded(child: Container(
              color: Colors.purple,
              child: Center(child: Text("Expanded")
              ),
            )
            ),
            Flexible(flex: 2, child: Container(
              color: Colors.orange,
              child: Center(child: Text("Flexible com flex 2")),
            )
            ),
         ]),
        ),
        ],
      ),
    );}
}