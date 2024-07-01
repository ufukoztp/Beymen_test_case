import 'package:beymen_test_case/common/base/enum/exception_type.dart';
import 'package:beymen_test_case/core/extensions/null_check_extension.dart';
import 'package:dio/dio.dart';

sealed class Result<S, E extends AppException?> {
  const Result();
  static const String _jsonNodeSuccess= 'isSuccess';
  static const String _jsonNodeErrors = 'errors';
  static const String _message = 'message';

  static Result<T, AppException> fromResponse<T>(
      Response? response,
      T Function(dynamic) mapper,
      ) {
    final responseData = response?.data;

    if (responseData != null && responseData != '') {
      if (responseData is Map &&
          (responseData[_jsonNodeErrors] != null ||
              responseData[_jsonNodeSuccess] == false)) {
        return Failure(AppException(
            message: _getErrorMessage(responseData[_message]),
            exceptionType: AppExceptionType.Exception));
      }
      if (responseData == null) {
        return Failure(AppException(
            message: _getErrorMessage(null),
            exceptionType: AppExceptionType.SuccessButWithOutResponse));
      }
      return Success(mapper(responseData));
    } else {
      return Failure(AppException(
          message: _getErrorMessage(null),
          exceptionType: AppExceptionType.Exception));
    }
  }
}

String _getErrorMessage(String? message) {
  return message.isNullOrEmpty == false
      ? message!
      : "Hata";//LocaleKeys.ErrorMessages_GlobalError.tr();
}

final class Success<S, E extends AppException> extends Result<S, E> {
  const Success(this.value);
  final S value;
}

final class Failure<S, E extends AppException> extends Result<S, E> {
  const Failure(this.exception);
  final E exception;
}

class AppException implements Exception {
  final String message;
  final AppExceptionType exceptionType;

  AppException({required this.message, required this.exceptionType});
}
