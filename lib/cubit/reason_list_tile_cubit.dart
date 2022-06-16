import 'package:bloc/bloc.dart';

class ReasonListTileCubit extends Cubit<List<String>> {
  ReasonListTileCubit() : super([]);

  void selectReason(String id) {
    if (!isSelected(id)) {
      state.clear();
      state.add(id);
    } else {
      state.remove(id);
    }
    emit(List.from(state));
  }

  bool isSelected(String id) {
    if (!state.contains(id)) {
      return false;
    }
    return true;
  }
}
