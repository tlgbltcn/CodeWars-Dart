// Singleton pattern is one of the creation design patterns where an application
// wants to have one and only one instance of any class, in all possible scenarios
// without any exceptional condition.

class Problem {
  bool _value = false;

  setValue(bool value) {
    _value = value;
  }

  getValue() => _value;
}

// Singleton created this factory constructor.

class Log {
  static final Log _log = Log._newInstance();

  factory Log() {
    return _log;
  }

  Log._newInstance();

  bool _value = false;

  setValue(bool value) {
    _value = value;
  }

  getValue() => _value;
}

// Singleton created static field with getter.

class Helper {
  static final Helper _instance = Helper._newInstance();

  Helper._newInstance();

  static Helper get instance {
    return _instance;
  }

  bool _value = false;

  setValue(bool value) {
    _value = value;
  }

  getValue() => _value;
}

// Singleton created with static field.

class Provider {
  static final Provider instance = Provider._newInstance();

  Provider._newInstance();

  bool _value = false;

  setValue(bool value) {
    _value = value;
  }

  getValue() => _value;
}

main() {
  // problem
  var _problem1 = Problem();
  _problem1.setValue(true);
  var _problem2 = Problem();
  _problem2.getValue();

  print(identical(_problem1, _problem2));
  print(_problem1 == _problem2);
  print("problem value is " + _problem1.getValue().toString());
  print("problem value is " + _problem2.getValue().toString());

  // factory implementation
  var _logInstance1 = Log();
  _logInstance1.setValue(true);
  var _logInstance2 = Log();
  _logInstance2.getValue();

  print(identical(_logInstance1, _logInstance2));
  print(_problem1 == _problem2);
  print("log value is " + _logInstance1.getValue().toString());
  print("log value is " + _logInstance2.getValue().toString());

  // static field with getter implementation
  var _helper1 = Helper.instance;
  _helper1.setValue(true);
  var _helper2 = Helper.instance;
  _helper2.getValue();

  print(identical(_helper1, _helper2));
  print(_problem1 == _problem2);
  print("helpter value is " + _helper1.getValue().toString());
  print("helpter value is " + _helper2.getValue().toString());

  // static field implementation
  var _provider1 = Provider.instance;
  _provider1.setValue(true);
  var _provider2 = Provider.instance;
  _provider2.getValue();

  print(identical(_provider1, _helper2));
  print(_problem1 == _problem2);
  print("provider value is " + _provider1.getValue().toString());
  print("provider value is " + _provider2.getValue().toString());
}
