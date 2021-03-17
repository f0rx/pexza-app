extension ListX on List {
  String foldWithSeparator<T>([String initialValue = "", String separator = ","]) {
    // Assert T is of type String
    assert(T is String);
    return this.fold(initialValue, (prev, next) {
      if (this.last != next) return "$prev$next$separator";
      return "$prev$next";
    });
  }
}
