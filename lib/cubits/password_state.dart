abstract class PasswordState {
  final bool passwordIsVisible;
  PasswordState(this.passwordIsVisible);
}

class InitState extends PasswordState {
  InitState() : super(false);
}

class PasswordVisibilityUpdated extends PasswordState {
  PasswordVisibilityUpdated(super.passwordIsVisible);
}
