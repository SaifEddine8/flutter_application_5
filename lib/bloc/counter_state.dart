abstract class CounterState {
  final counter;
  CounterState(this.counter);
}


class initState extends CounterState
{
  initState():super(1);
}

class UpdateState extends CounterState
{
  UpdateState(super.counter);
}
