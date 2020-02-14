import 'package:mobx/mobx.dart';
part 'cancelamento.g.dart';

class Cancelamento = _CancelamentoBase with _$Cancelamento;

abstract class _CancelamentoBase with Store {
  @observable
  String name;

  @action
  changeName(String newName) => name = newName;
}
