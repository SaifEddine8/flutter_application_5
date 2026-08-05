import 'package:cubit_form/cubit_form.dart';

class CounterCubit extends Cubit<bool> {
  CounterCubit() : super(true);

  void convertStatus() => emit(!state);
}
