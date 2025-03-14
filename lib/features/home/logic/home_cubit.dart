import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quote_generator_mobile_app/features/home/data/repos/home_repo.dart';
import 'package:quote_generator_mobile_app/features/home/logic/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(InitHomeState());

  void getRandomQuote() async {
    emit(LoadingRandomQuote());
    final response = await _homeRepo.getRandomQuote();
    response.fold(
      (error) {
        emit(ErrorRandomQuote(error: error.message ?? 'Failure'));
      },
      (moviesResponse) async {
        emit(SuccessRandomQuote(quoteResponse: moviesResponse));
      },
    );
  }
}
