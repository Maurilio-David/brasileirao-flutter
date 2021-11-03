import 'package:brasileirao/controller/home_controller.dart';
import 'package:brasileirao/model/time.dart';
import 'package:brasileirao/pages/time_page.dart';
import 'package:brasileirao/repositories/times_repository.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
        body: Consumer<TimesRepository>(builder: (context, repositorio, child) {
          return ListView.separated(
              itemBuilder: (BuildContext contexto, int time) {
                final List<Time> tabela = controller.tabela;
                return ListTile(
                  onTap: () {
                    Navigator.push(
                        contexto,
                        MaterialPageRoute(
                            builder: (_) => TimePage(
                                  key: Key(tabela[time].nome),
                                  time: tabela[time],
                                )));
                  },
                  leading: Image.network(tabela[time].brasao),
                  title: Text(tabela[time].nome),
                  trailing: Text(tabela[time].pontos.toString()),
                );
              },
              separatorBuilder: (_, __) => Divider(),
              padding: EdgeInsets.all(16),
              itemCount: controller.tabela.length);
        }));
  }
}
