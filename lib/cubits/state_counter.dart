abstract class StateCounter {
  final int counter;

  StateCounter(this.counter);
}

class InitState extends StateCounter {
  InitState() : super(1);
}

class UpdateState extends StateCounter {
  UpdateState(super.counter);
}
