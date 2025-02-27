import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class NavigationService extends Cubit<List<Widget>> {
  NavigationService() : super([]);

  void navigateTo(Widget screen) {
    emit([...state, screen]);
  }

  void goBack() {
    if (state.isNotEmpty) {
      emit(state.sublist(0, state.length - 1));
    }
  }
}
