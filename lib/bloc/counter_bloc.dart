import 'package:bloc/bloc.dart';
import 'package:flutter_application_5/bloc/counter_event.dart';
import 'package:flutter_application_5/bloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent,CounterState>{
CounterBloc():super(initState()){
  on<incrementEvent>((event,emit){
    emit(UpdateState(state.counter+1));
  });


  on<DecrementEvent>((event,emit){
    emit(UpdateState(state.counter-1));
  });
}
}