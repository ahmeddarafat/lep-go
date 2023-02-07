part of 'bottom_navigation_cubit.dart';

abstract class BottomNavigationState extends Equatable {
  const BottomNavigationState();

  @override
  List<Object> get props => [];
}

class BottomNavigationInitial extends BottomNavigationState {}

class ChangeItemBottomNavigation extends BottomNavigationState {
  final int index;

  const ChangeItemBottomNavigation(this.index);

  @override
  List<Object> get props => [index];
}
