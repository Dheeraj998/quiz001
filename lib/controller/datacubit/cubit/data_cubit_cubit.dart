import 'package:bloc/bloc.dart';
import 'package:quiz001/controller/data/data.dart';
import 'package:quiz001/model/TestModel.dart';

part 'data_cubit_state.dart';

class DataCubitCubit extends Cubit<DataCubitState> {
  DataCubitCubit() : super(DataCubitInitial()) {
    fetchData();
  }
  // late final data;
  fetchData() async {
    try {
      emit(DataCubitInitial());
      final data = await readJson();
      // print(data);
      emit(DataCubitStateLoaded(data: data));
    } catch (e) {
      print(e);
    }
  }
}
