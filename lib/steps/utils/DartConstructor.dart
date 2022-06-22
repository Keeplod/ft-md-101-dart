class DartConstructor{
  int varInt;
  String varString;
  double? optionDouble;

  DartConstructor(this.varInt, this.varString, [this.optionDouble]);

  void run(){
    print("DartConstructor: $varInt, $varString, $optionDouble");
  }
}