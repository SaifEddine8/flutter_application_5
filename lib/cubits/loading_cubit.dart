// import 'package:cubit_form/cubit_form.dart';

import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<bool> {
  CounterCubit() : super(true);

  void convertStatus() => emit(!state);
}
