part of dart_extension;

extension YGListExtension<Element> on List<Element> {
   Element? safe(int index) {
    if (this.length >= (index + 1)) {
      return this[index];
    }
    return null;
  }
}
