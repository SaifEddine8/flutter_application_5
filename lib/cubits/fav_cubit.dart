// import 'package:cubit_form/cubit_form.dart';

import 'package:bloc/bloc.dart';

class FavCubit extends Cubit<bool> {
  FavCubit() : super(false);

  void convertFav() => emit(!state);
}
