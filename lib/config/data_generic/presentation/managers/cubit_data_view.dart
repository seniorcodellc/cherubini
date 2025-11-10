import 'package:cherubini/config/data_generic/domain/use_cases/generic_use_case.dart';

import '../../../../exports.dart';

class CubitDataView<Model> extends Cubit<CubitStates>{
  final GenericUseCases genericUseCases;
  CubitDataView({required this.genericUseCases}):super(InitialState());
  getData({num? id, dynamic query})=>managerExecute<Model>(genericUseCases.getData(query: query,id: id),
  onFail: (message) => emit(FailedState(message: message)),
  onSuccess:(Model? data) {
    emit(LoadedState<Model>(data: data!));
  }, 
  );
}