import 'package:flutter/material.dart';
import 'package:new_project/screens/ciclo_stateful.dart';

class CicloStatefulParent extends StatefulWidget {
  const CicloStatefulParent({super.key});

  @override
  State<CicloStatefulParent> createState() => _CicloStatefulParentState();
}

class _CicloStatefulParentState extends State<CicloStatefulParent> {
  Color corAtual = Colors.blue;

  void trocaCor(){
    setState(() {
      corAtual = corAtual == Colors.blue ? Colors.purple : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ciclo de vida - statefulWidget (parent)")),
        body: Column(
          children: [
            Text("Simulando os diferentes ciclos de vida de um widget stateful",
            textAlign: TextAlign.center,),
            SizedBox(height: 20),
            CicloStateful(cor: corAtual),
            SizedBox(height: 20),
            ElevatedButton(onPressed:trocaCor, child: Text("Trocar cor")),
          ],
        )
    );
  }
}