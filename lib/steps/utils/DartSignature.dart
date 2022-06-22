class DartSignature {
  String? first;
  String? _second;

  DartSignature(this.first, this._second);

  void run(){
    _print();
  }

  void setAndRun(String first, String second){
    this.first = first;
    this._second = second;
    run();
  }

  void _print(){
    print("DartSignature: $first, $_second");
  }

  String get set => _second!;
  set second(String value){
    _second = value;
  }
}