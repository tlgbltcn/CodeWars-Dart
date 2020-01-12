class Problem extends Validate {
  @override
  bool get _value => super._value;

  @override
  setValue(bool value) {
    _value = value;
  }

  @override
  getValue() => _value;
}

// Singleton created this factory constructor.

class Log extends Validate {
  static final Log _log = Log._newInstance();

  factory Log() {
    return _log;
  }

  Log._newInstance();

  @override
  bool get _value => super._value;

  @override
  setValue(bool value) {
    _value = value;
  }

  @override
  getValue() => _value;
}

// Singleton created static field with getter.

class Helper extends Validate {
  static final Helper _instance = Helper._newInstance();

  Helper._newInstance();

  static Helper get instance {
    return _instance;
  }

  @override
  bool get _value => super._value;

  @override
  setValue(bool value) {
    _value = value;
  }

  @override
  getValue() => _value;
}

// Singleton created with static field.

class Provider extends Validate {
  static final Provider instance = Provider._newInstance();

  Provider._newInstance();

  @override
  bool get _value => super._value;

  @override
  setValue(bool value) {
    _value = value;
  }

  @override
  getValue() => _value;
}

main() {
  // problem
  var _problem1 = Problem();
  _problem1.setValue(true);
  var _problem2 = Problem();
  _problem2.getValue();

  compareExecute(_problem1, _problem2);

  // factory implementation
  var _logInstance1 = Log();
  _logInstance1.setValue(true);
  var _logInstance2 = Log();
  _logInstance2.getValue();

  compareExecute(_logInstance1, _logInstance2);

  // static field with getter implementation
  var _helper1 = Helper.instance;
  _helper1.setValue(true);
  var _helper2 = Helper.instance;
  _helper2.getValue();

  compareExecute(_helper1, _helper2);

  // static field implementation
  var _provider1 = Provider.instance;
  _provider1.setValue(true);
  var _provider2 = Provider.instance;
  _provider2.getValue();

  compareExecute(_provider1, _provider2);
}

compareExecute(Validate obj1, Validate obj2) {
  print(identical(obj1, obj2));
  print(obj1 == obj2);
  print("value is " + obj1.getValue().toString());
  print("value is " + obj2.getValue().toString());
}

abstract class Validate {
  bool _value = false;

  setValue(bool value) {
    _value = value;
  }

  getValue() => _value;
}
