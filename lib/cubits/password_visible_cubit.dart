import 'package:bloc/bloc.dart';
import 'package:flutter_application_5/cubits/password_state.dart';

class togglePasswordVisibility extends Cubit<PasswordState> {
  togglePasswordVisibility() : super(InitState());
  // void convertvisible() => emit(!state);

  void Convert() {
    emit(PasswordVisibilityUpdated(!state.passwordIsVisible));
  }
}
