import 'package:brasileirao/controller/home_controller.dart';
import 'package:brasileirao/model/time.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var controller = HomeController();

  @override
  void initState() {
    super.initState();
    controller = HomeController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Brasileirão'),
          centerTitle: true,
        ),
        body: ListView.separated(
            itemBuilder: (BuildContext contexto, int i) {
              final List<Time> tabela = controller.tabela;
              return ListTile(
                leading: Image.network(tabela[i].brasao),
                title: Text(tabela[i].nome),
                trailing: Text(tabela[i].pontos.toString()),
              );
            },
            separatorBuilder: (_, __) => Divider(),
            padding: EdgeInsets.all(16),
            itemCount: controller.tabela.length));
  }
}
