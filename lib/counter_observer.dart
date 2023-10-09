import 'package:bloc/bloc.dart';

// Observes all state changes in the app
class CounterBlocObserver extends BlocObserver {
  const CounterBlocObserver();

  // @override
  // void onEvent(Bloc bloc, Object? event) {
  //   super.onEvent(bloc, event);
  //   // TODO: implement onEvent
  // }

  // @override
  // void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
  //   // TODO: implement onError
  //   super.onError(bloc, error, stackTrace);
  // }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    // TODO: implement onChange
    print("${bloc.runtimeType} $change");
  }

  // @override
  // void onTransition(Bloc bloc, Transition transition) {
  //   super.onTransition(bloc, transition);
  //   // TODO: implement onChange
  // }
}
