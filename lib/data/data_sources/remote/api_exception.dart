// Custom ApiException class to handle unforeseen non-String message
class ApiException implements Exception {
  final dynamic message;
  ApiException({required this.message});
  @override
  String toString() {
    if (message is String) {
      return message;
    }
    return "An error occurred!";
  }
}
