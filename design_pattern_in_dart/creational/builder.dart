// Builder pattern is one of the creation design patterns where an application
// When piecewise object construction is complicated, provide an API for doing it in simple & clear manner

class Dialog {
  String _title;
  String _message;
  int _icon;
  void _successCallBack = () {};
  void _errorCallBack = (int code) {};

  DialogBuilder _builder;

  Dialog(DialogBuilder builder) {
    this._builder = builder;
    this._title = builder._title;
    this._message = builder._message;
    this._icon = builder._icon;
    this._successCallBack = builder._successCallBack;
    this._errorCallBack = builder._errorCallBack;
  }

  String get title => _title;

  String get message => _message;

  int get icon => _icon;
}

class DialogBuilder {
  String _title;
  String _message;
  int _icon;
  void _successCallBack = () {};
  void _errorCallBack = (int code) {};

  DialogBuilder(String title, String message, int icon, void successCallBack,
      void errorCallBack) {
    this._title = title;
    this._message = message;
    this._icon = icon;
    this._successCallBack = successCallBack;
    this._errorCallBack = _errorCallBack;
  }

  DialogBuilder.setup();

  int get icon => _icon;

  String get message => _message;

  String get title => _title;

  DialogBuilder setIcon(int value) {
    _icon = value;
    return this;
  }

  DialogBuilder setMessage(String value) {
    _message = value;
    return this;
  }

  DialogBuilder setTitle(String value) {
    _title = value;
    return this;
  }

  DialogBuilder setSuccessCallBack(void Function() successCallBack) {
    _successCallBack = successCallBack;
    return this;
  }

  DialogBuilder setErrorCallBack(void Function() errorCallBack) {
    _errorCallBack = errorCallBack;
    return this;
  }

  Dialog build() {
    if (_title.isNotEmpty) {
      successCallBack();
    } else {
      errorCallBack(499);
    }

    DialogBuilder builder = DialogBuilder(
        _title, _message, _icon, _successCallBack, _errorCallBack);

    return Dialog(builder);
  }
}

main() {
  void Function() errorCallBack = () => {print("sdsd")};

  var dialogBuilder = DialogBuilder.setup()
      .setTitle("a")
      .setMessage("dummy message")
      .setIcon(0)
      .setSuccessCallBack(successCallBack)
      .setErrorCallBack(errorCallBack)
      .build();

  print(
      "${dialogBuilder.title} ${dialogBuilder.message}  ${dialogBuilder.icon} ");
}

void successCallBack() => {print("success")};

void errorCallBack(int code) => {print("${code} error")};
