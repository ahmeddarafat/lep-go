import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bottom_navigation_state.dart';

class BottomNavigationCubit extends Cubit<BottomNavigationState> {
  BottomNavigationCubit() : super(BottomNavigationInitial());

  static BottomNavigationCubit get(BuildContext context) =>
      BlocProvider.of(context);

  int currentIndexUser = 2;
  void changeIndexUser(int index) {
    currentIndexUser = index;
    emit(ChangeItemBottomNavigation(index));
  }
}
