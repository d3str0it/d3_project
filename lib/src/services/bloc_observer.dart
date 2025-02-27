import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';

class MainBlocObserver extends BlocObserver {
  final Logger logger = Logger();

  @override
  void onEvent(Bloc bloc, Object? event) {
    logger.d('onEvent: $event');
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    logger.d('onTransition - Current state: ${transition.currentState}, Next state: ${transition.nextState}');
    super.onTransition(bloc, transition);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    logger.e('onError: $error');
    super.onError(bloc, error, stackTrace);
  }
}
