part of 'data_cubit_cubit.dart';

@override
abstract class DataCubitState {}

class DataCubitInitial extends DataCubitState {
  final data = [];
}

class DataCubitStateLoaded extends DataCubitState {
  final List data;

  DataCubitStateLoaded({required this.data});
}
