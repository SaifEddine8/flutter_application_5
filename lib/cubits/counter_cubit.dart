import 'package:cubit_form/cubit_form.dart';
import 'package:flutter_application_5/cubits/state_counter.dart';

class CounterCubit extends Cubit<StateCounter> {
  CounterCubit() : super(InitState());
  void increament() {
    emit(UpdateState(state.counter + 1));
  }

  void decreament() {
    emit(UpdateState(state.counter - 1));
  }
}
