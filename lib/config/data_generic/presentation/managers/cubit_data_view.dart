import '../../../../exports.dart';

class CubitDataView<Model> extends Cubit<CubitStates> {
  final GenericUseCases genericUseCases;
  Model? model;
  CubitDataView({required this.genericUseCases}) : super(InitialState());
  getData({
    num? id,
    dynamic query,
    dynamic Function(Model?)? onSuccess,

    Function(Model? data, String? message)? onSuccessWithMessage,

    dynamic Function(String)? onFail,
  }) => managerExecute<Model>(
    genericUseCases.getData(query: query, id: id),
    onFail: (message) {
      if (onFail.isNotNull) {
        onFail?.call(message);
      } else {
        emit(FailedState(message: message));
      }
    },
    onSuccessWithMessage: (data, message) {
      onSuccessWithMessage?.call(data, message);
    },
    onSuccess: (Model? data) {
      if (onSuccess.isNotNull) {
        onSuccess?.call(data);
      } else {
        model = data;
        emit(LoadedState<Model>(data: model!));
      }
    },
  );
}
