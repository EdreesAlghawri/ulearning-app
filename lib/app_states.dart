class AppStates {
  int counter;
  AppStates({required this.counter});
}

class intiStates extends AppStates {
  intiStates() : super(counter: -1);
}
