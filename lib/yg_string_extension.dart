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
  String dropLastWith(num count) {
    return this.substring(0, this.length - count);
  }

  /// remove string frist chart
  ///
  /// 'last' -> 'ast'
  String get dropFirst {
    return this.substring(1, this.length);
  }

  bool get isEmail {
    RegExp exp = RegExp(r"^[\w!#$%&'*+/=?^_`{|}~-]+(?:\.[\w!#$%&'*+/=?^_`{|}~-]+)*@(?:[\w](?:[\w-]*[\w])?\.)+[\w](?:[\w-]*[\w])?");
    print(this);
    return exp.hasMatch(this);
  }

  /// remove string first [count] chart
  ///
  /// 'last' -> dropFristWith(2) -> 'st'
  String dropFristWith(num count) {
    return this.substring(count, this.length);
  }
}
