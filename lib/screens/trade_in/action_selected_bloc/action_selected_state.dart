part of 'action_selected_bloc.dart';

abstract class ActionSelectedState extends Equatable {
  const ActionSelectedState();

  @override
  List<Object> get props => [];
}

class PlaceShape extends ActionSelectedState {}

class ResizeShape extends ActionSelectedState {}

class NoAction extends ActionSelectedState {}

class TrimShapeLine extends ActionSelectedState {}

class TrimShapeCurve extends ActionSelectedState {}

class Undo extends ActionSelectedState {}

class ViewPoints extends ActionSelectedState {}
