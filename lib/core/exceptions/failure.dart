class Failure {
  final String message;
  Failure(this.message);
}

class ErrorHandling {
  static Failure handleException(dynamic error) {
    if (error is String) {
      return Failure(error);
    } else {
      return Failure('An error occurred');
    }
  }
}
