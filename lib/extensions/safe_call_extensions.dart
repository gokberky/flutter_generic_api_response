extension GenericExtensions on Object? {
  T? asOrNull<T>() {
    var self = this;
    return self is T ? self : null;
  }
}

T? cast<T>(x) => x is T ? x : null;

extension ListExtensions on List {
  T? firstOrNull<T>() {
    return isEmpty ? null : first;
  }
}

extension StringExtensions on String? {
  String getOrEmpty() {
    var self = this;
    return self is String ? self : "";
  }
}
