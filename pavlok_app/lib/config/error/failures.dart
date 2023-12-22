import 'package:pavlok_app/config/error/failure.dart';

class InternetExceptionFailure extends Failure {
  InternetExceptionFailure({ super.message="No internet connection ."});
}

class ServerExceptionFailure extends Failure {
  ServerExceptionFailure({super.message = 'Server error .'});
}
class ConnectionTimedOutFailure extends Failure {
  ConnectionTimedOutFailure({super.message = 'Connection timed out , try again later .'});
}
class BadResponseFailure extends Failure{
  BadResponseFailure({required super.message});
}

