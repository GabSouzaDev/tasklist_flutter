import 'package:proj_imc_calc/model/tarefa.dart';

class TarefaRepository {
  List<Tarefa> _tarefas = [];

  //adiciona uma tarefa à lista
  Future<void> adicionar(Tarefa tarefa) async {
    await Future.delayed(const Duration(milliseconds: 100));
    _tarefas.add(tarefa);
  }

  //altera o estado de uma tarefa existente
  Future<void> alterar(String id, bool concluido) async {
    await Future.delayed(const Duration(milliseconds: 100));
    _tarefas.where((tarefa) => tarefa.id == id).first.concluido = concluido;
  }

  //retorna todas as tarefas da lista
  Future<List<Tarefa>> listar() async {
    Future.delayed(const Duration(milliseconds: 100));
    return _tarefas;
  }

  //remove uma tarefa da lista pelo id.
  Future<void> remove(String id) async {
    await Future.delayed(const Duration(milliseconds: 100));
    _tarefas.remove(_tarefas.where((tarefa) => tarefa.id == id).first);
  }

  //retorna apenas as tarefas que não foram concluidas.
  Future<List<Tarefa>> listarNaoConcluidas() async {
    await Future.delayed(const Duration(milliseconds: 100));
    return _tarefas.where((tarefa) => !tarefa.concluido).toList();
  }
}
