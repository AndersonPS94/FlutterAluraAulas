import 'package:flutter/material.dart';

class CicloStateful extends StatefulWidget {
  final Color cor;
  const CicloStateful({super.key, required this.cor,});

  @override
  State<CicloStateful> createState() => _CicloStatefulState();
}

class _CicloStatefulState extends State<CicloStateful> {

  @override
  void initState() {
    super.initState();
    print("initState: widget foi inserido a arvore");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies: widget teve suas dependências alteradas");
  }

  @override
  void didUpdateWidget(CicloStateful oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget: widget foi atualizado");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose: widget foi removido da arvore");
  }

  @override
  Widget build(BuildContext context) {
    print("build: método build chamado");

    return Container(
      height: 200,
      width: 200,
      color: widget.cor,
      child: Center(
        child: Text("cor atual", 
        style: TextStyle(color: Colors.white)),
      ),
    );
  }
}