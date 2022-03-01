part of 'action_selected_bloc.dart';

abstract class ActionSelectedEvent extends Equatable {
  const ActionSelectedEvent();

  @override
  List<Object> get props => [];
}

class PlaceShapeEvent extends ActionSelectedEvent {}

class ResizeShapeEvent extends ActionSelectedEvent {}

class NoActionEvent extends ActionSelectedEvent {}

class TrimShapeLineEvent extends ActionSelectedEvent {}

class TrimShapeCurveEvent extends ActionSelectedEvent {}

class UnDoEvent extends ActionSelectedEvent {}

class ViewPointsEvent extends ActionSelectedEvent {}
