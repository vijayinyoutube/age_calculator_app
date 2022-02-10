import 'package:bloc/bloc.dart';

part 'age_calculator_state.dart';

class AgeCalculatorCubit extends Cubit<AgeCalculatorInitial> {
  AgeCalculatorCubit() : super(AgeCalculatorInitial(stageOfLife: ":)"));

  void updateAgeVal(int ageval) {
    emit(
      AgeCalculatorInitial(stageOfLife: getStage(ageval)),
    );
  }

  String getStage(int ageval) {
    if (ageval == 0 || ageval == 1) {
      return "Infant";
    } else if (ageval >= 2 && ageval <= 4) {
      return "Toddler";
    } else if (ageval >= 5 && ageval <= 12) {
      return "Child";
    } else if (ageval >= 13 && ageval <= 19) {
      return "Teen";
    } else if (ageval >= 20 && ageval <= 39) {
      return "Adult";
    } else if (ageval >= 40 && ageval <= 59) {
      return "Middle Age Adult";
    } else {
      return "Senior Adult";
    }
  }
}
