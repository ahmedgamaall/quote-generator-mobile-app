import 'package:dartz/dartz.dart';
import 'package:quote_generator_mobile_app/core/models/quote_response.dart';
import 'package:quote_generator_mobile_app/core/networking/api_error_handler.dart';
import 'package:quote_generator_mobile_app/core/networking/api_error_model.dart';
import 'package:quote_generator_mobile_app/core/networking/api_service.dart';

class HomeRepo {
  final ApiService _apiService;

  HomeRepo(this._apiService);

  Future<Either<ApiErrorModel, QuoteResponse>> getRandomQuote() async {
    try {
      final response = await _apiService.getRandomQuote();
      return right(response);
    } catch (error) {
      return left(ApiErrorHandler.handle(error));
    }
  }
}