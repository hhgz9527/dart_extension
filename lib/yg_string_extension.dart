part of dart_extension;

extension YGStringExntesion on String {
  /// remove string last chart
  ///
  /// 'last' -> 'las'
  String get dropLast {
    return this.substring(0, this.length - 1);
  }

  /// remove string last [count] chart
  ///
  /// 'last' -> dropLastWith(2) -> 'la'
  String dropLastWith(int count) {
    return this.substring(0, this.length - count);
  }

  /// remove string frist chart
  ///
  /// 'last' -> 'ast'
  String get dropFirst {
    return this.substring(1, this.length);
  }

  /// Check text is email
  ///
  /// `'1@qq.com'.isEmail` -> true
  bool get isEmail {
    RegExp exp = RegExp(r"^[\w!#$%&'*+/=?^_`{|}~-]+(?:\.[\w!#$%&'*+/=?^_`{|}~-]+)*@(?:[\w](?:[\w-]*[\w])?\.)+[\w](?:[\w-]*[\w])?");
    print(this);
    return exp.hasMatch(this);
  }

  /// get string last characters
  /// 
  /// `'last'.last` => `'t'`
  String get last {
    if (this == '') return '';
    return this.substring(this.length - 1);
  }

  /// remove string first [count] chart
  ///
  /// 'last' -> dropFristWith(2) -> 'st'
  String dropFristWith(int count) {
    return this.substring(count, this.length);
  }
}
