abstract class NhsResponseError<T> {
  /// If the request is denied or fails, the authorisation server informs the
  /// client using this parameter.
  T get error;

  /// Description of the error
  String get errorDescription;

  /// URI of a web page that includes additional information about the error
  String get errorUri;
}
