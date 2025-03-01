import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';

class MainBlocObserver extends BlocObserver {
  final Logger logger = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 8,
      lineLength: 120,
      colors: true,
      printEmojis: true,
    ),
    level: Level.all, 
  );

  @override
  void onCreate(BlocBase bloc) {
    logger.i('onCreate: ${bloc.runtimeType}');
    super.onCreate(bloc);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    logger.i('onEvent: ${bloc.runtimeType} -> $event');
    super.onEvent(bloc, event);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    logger.i('onChange: ${bloc.runtimeType} -> ${change.currentState} -> ${change.nextState}');
    super.onChange(bloc, change);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    logger.i('onTransition: ${bloc.runtimeType} -> ${transition.currentState} -> ${transition.nextState}');
    super.onTransition(bloc, transition);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    logger.e('onError: ${bloc.runtimeType} -> $error');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    logger.i('onClose: ${bloc.runtimeType}');
    super.onClose(bloc);
  }
}
