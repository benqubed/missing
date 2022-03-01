import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'action_selected_event.dart';
part 'action_selected_state.dart';

class ActionSelectedBloc extends Bloc<ActionSelectedEvent, ActionSelectedState> {
  ActionSelectedBloc() : super(PlaceShape()) {
    on<ActionSelectedEvent>((event, emit) {
      if (event is PlaceShapeEvent) {
        emit(PlaceShape());
      }

      if (event is ResizeShapeEvent) {
        emit(ResizeShape());
      }

      if (event is NoActionEvent) {
        emit(NoAction());
      }

      if (event is TrimShapeLineEvent) {
        emit(TrimShapeLine());
      }

      if (event is TrimShapeCurveEvent) {
        emit(TrimShapeCurve());
      }

      if (event is UnDoEvent) {
        var currentState = state;
        emit(Undo());
        emit(currentState);
      }

      if (event is ViewPointsEvent) {
        emit(ViewPoints());
      }
    });
  }
}
