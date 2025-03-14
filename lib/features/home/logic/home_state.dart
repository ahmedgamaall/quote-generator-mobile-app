import 'package:quote_generator_mobile_app/core/models/quote_response.dart';

abstract class HomeState {}

class InitHomeState extends HomeState {}

class LoadingRandomQuote extends HomeState {}

class SuccessRandomQuote extends HomeState {
  final QuoteResponse quoteResponse;

  SuccessRandomQuote({required this.quoteResponse});
}

class ErrorRandomQuote extends HomeState {
  final String error;

  ErrorRandomQuote({required this.error});
}
