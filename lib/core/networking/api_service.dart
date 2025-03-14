import 'package:dio/dio.dart';
import 'package:quote_generator_mobile_app/core/models/quote_response.dart';
import 'package:quote_generator_mobile_app/core/networking/api_constants.dart';
import 'package:quote_generator_mobile_app/core/networking/dio_factory.dart';

class ApiService {
  final Dio dio;
  const ApiService(this.dio);

  Future<QuoteResponse> getRandomQuote() async {
    var response = await DioFactory.getData(endPoint: ApiConstants.quotes);
    QuoteResponse moviesResponse = QuoteResponse.fromJson(response.data);
    return moviesResponse;
  }
}
