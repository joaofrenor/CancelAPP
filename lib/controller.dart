import './models/cancelamento.dart';
import 'package:mobx/mobx.dart';
part 'controller.g.dart';

class Controller = _ControllerBase with _$Controller;

abstract class _ControllerBase with Store {
  var cancelamento = Cancelamento();

  @computed
  bool get isValid {
    return validateName() == null;
  }

  String validateName() {
    if (cancelamento.name == null || cancelamento.name.isEmpty) {
      return 'Digita seu nome anjo';
    }

    return null;
  }
}
