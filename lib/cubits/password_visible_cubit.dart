
import 'package:bloc/bloc.dart';

class PasswordVisibleCubit extends Cubit<bool>{
  PasswordVisibleCubit():super(false);
  void convertvisible() => emit(!state);
}