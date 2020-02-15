import 'package:mobx/mobx.dart';
part 'cancelamento.g.dart';

class Cancelamento = _CancelamentoBase with _$Cancelamento;

abstract class _CancelamentoBase with Store {
  @observable
  var name = '';

  @action
  void changeName(String newName) => name = newName;

  @computed
  bool get isValid {
    return validateName() == null;
  }

  @computed
  String get getName {
    return name.toString();
  }

  String validateName() {
    if (name == null || name.isEmpty) {
      return 'Digita seu nome anjo';
    }

    return null;
  }
}
