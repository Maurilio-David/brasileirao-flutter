import 'package:brasileirao/model/time.dart';
import 'package:flutter/material.dart';

class TimePage extends StatefulWidget {
  final Time time;
  const TimePage({ Key key, this.time }) : super(key: key);

  @override
  _TimePageState createState() => _TimePageState();
}

class _TimePageState extends State<TimePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: widget.time.cor,
        title: Text(widget.time.nome),
        bottom: TabBar(tabs: [
          Tab(icon: Icon(Icons.stacked_line_chart), text: 'Estatisticas', ),
          Tab(icon: Icon(Icons.emoji_events,), text: 'Titulos', )
        ], indicatorColor: Colors.white,),
        ),
      ),
    );
  }
}