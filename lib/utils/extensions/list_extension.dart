extension ListX<T extends dynamic> on Iterable<T> {
  String foldWithSeparator([String initialValue = "", String separator = ","]) {
    // Assert T is of type String
    assert(T is String);
    return this.fold(initialValue, (prev, next) {
      if (this.last != next) return "$prev$next$separator";
      return "$prev$next";
    });
  }

  T get firstOrNull {
    try {
      return this.first;
    } catch (e) {
      return null;
    }
  }
}
