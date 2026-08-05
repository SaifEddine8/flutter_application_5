import 'package:cubit_form/cubit_form.dart';

class FavCubit extends Cubit<bool> {
  FavCubit() : super(false);

  void convertFav() => emit(!state);
}
