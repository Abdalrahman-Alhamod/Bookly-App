import 'package:dio/dio.dart';

import 'failure.dart';

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);
  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout, please try again!');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout, please try again!');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Recieve timeout, please try again!');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad certificate, please try again!');
      case DioExceptionType.badResponse:
        return ServerFailure.fromBadResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request was canceled, please try again!');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection error, please try again!');
      case DioExceptionType.unknown:
        if (dioException.toString().contains('SocketException')) {
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure('Unexpected error, please try again later!');
      default:
        return ServerFailure('Somthing wrong happend, please try again later!');
    }
  }
  factory ServerFailure.fromBadResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(
          'Your request was not found, please try again later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server Error, please try again later!');
    } else {
      return ServerFailure('Somthing wrong happend, please try again later!');
    }
  }
}
