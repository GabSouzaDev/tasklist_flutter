import 'package:flutter/material.dart';

class Tarefa {
  final String _id = UniqueKey().toString(); //Cria um ID único
  String _descricao = ""; //define a descricao
  bool _concluido = false; //define o estado da tarefa

  Tarefa(this._descricao, this._concluido);

  String get id => _id;

  String get descricao => _descricao;

  bool get concluido => _concluido;

  set descricao(String descricao) {
    _descricao = descricao;
  }

  set concluido(bool concluido) {
    _concluido = concluido;
  }
}
