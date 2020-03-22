// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  final _$indexPageAtom = Atom(name: '_HomeBase.indexPage');

  @override
  int get indexPage {
    _$indexPageAtom.context.enforceReadPolicy(_$indexPageAtom);
    _$indexPageAtom.reportObserved();
    return super.indexPage;
  }

  @override
  set indexPage(int value) {
    _$indexPageAtom.context.conditionallyRunInAction(() {
      super.indexPage = value;
      _$indexPageAtom.reportChanged();
    }, _$indexPageAtom, name: '${_$indexPageAtom.name}_set');
  }

  final _$_HomeBaseActionController = ActionController(name: '_HomeBase');

  @override
  void setPage(dynamic v) {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.setPage(v);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'indexPage: ${indexPage.toString()}';
    return '{$string}';
  }
}
