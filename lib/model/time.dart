import 'package:brasileirao/model/titulo.dart';
import 'package:flutter/material.dart';

class Time {
  int id;
  String nome;
  String brasao;
  int pontos;
  Color cor;
  List<Titulo> titulos = [];

  Time({this.id, this.brasao, this.nome, this.pontos, this.cor, this.titulos});
}
