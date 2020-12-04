// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_todo_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $CreateTodoController = BindInject(
  (i) => CreateTodoController(i<ITodoRepository>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CreateTodoController on _CreateTodoControllerBase, Store {
  Computed<Todo> _$currentTodoComputed;

  @override
  Todo get currentTodo =>
      (_$currentTodoComputed ??= Computed<Todo>(() => super.currentTodo,
              name: '_CreateTodoControllerBase.currentTodo'))
          .value;

  final _$titleAtom = Atom(name: '_CreateTodoControllerBase.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$dateAtom = Atom(name: '_CreateTodoControllerBase.date');

  @override
  DateTime get date {
    _$dateAtom.reportRead();
    return super.date;
  }

  @override
  set date(DateTime value) {
    _$dateAtom.reportWrite(value, super.date, () {
      super.date = value;
    });
  }

  final _$_CreateTodoControllerBaseActionController =
      ActionController(name: '_CreateTodoControllerBase');

  @override
  dynamic setTitle(String value) {
    final _$actionInfo = _$_CreateTodoControllerBaseActionController
        .startAction(name: '_CreateTodoControllerBase.setTitle');
    try {
      return super.setTitle(value);
    } finally {
      _$_CreateTodoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setDate(DateTime value) {
    final _$actionInfo = _$_CreateTodoControllerBaseActionController
        .startAction(name: '_CreateTodoControllerBase.setDate');
    try {
      return super.setDate(value);
    } finally {
      _$_CreateTodoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
title: ${title},
date: ${date},
currentTodo: ${currentTodo}
    ''';
  }
}
