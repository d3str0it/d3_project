import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class NavigationService extends Cubit<List<Widget>> {
  NavigationService() : super([]);

  void navigateTo(Widget screen) {
    final newState = [...state, screen];
    if (newState.length > 3) {
      emit(newState.sublist(newState.length - 3));
    } else {
      emit(newState);
    }
  }

  void goBack() {
    if (state.isNotEmpty) {
      emit(state.sublist(0, state.length - 1));
    }
  }
}
