// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancelamento.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Cancelamento on _CancelamentoBase, Store {
  Computed<bool> _$isValidComputed;

  @override
  bool get isValid =>
      (_$isValidComputed ??= Computed<bool>(() => super.isValid)).value;
  Computed<String> _$getNameComputed;

  @override
  String get getName =>
      (_$getNameComputed ??= Computed<String>(() => super.getName)).value;

  final _$nameAtom = Atom(name: '_CancelamentoBase.name');

  @override
  String get name {
    _$nameAtom.context.enforceReadPolicy(_$nameAtom);
    _$nameAtom.reportObserved();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.context.conditionallyRunInAction(() {
      super.name = value;
      _$nameAtom.reportChanged();
    }, _$nameAtom, name: '${_$nameAtom.name}_set');
  }

  final _$_CancelamentoBaseActionController =
      ActionController(name: '_CancelamentoBase');

  @override
  void changeName(String newName) {
    final _$actionInfo = _$_CancelamentoBaseActionController.startAction();
    try {
      return super.changeName(newName);
    } finally {
      _$_CancelamentoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'name: ${name.toString()},isValid: ${isValid.toString()},getName: ${getName.toString()}';
    return '{$string}';
  }
}
