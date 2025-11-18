
import '../../../../exports.dart';

class CubitDataView<Model> extends Cubit<CubitStates> {
  final GenericUseCases genericUseCases;
  Model? model;
  CubitDataView({required this.genericUseCases}) : super(InitialState());
  getData({
    num? id,
    dynamic query,
    dynamic Function(Model?)? onSuccess,

    Function(ResponseModel data)? onSuccessWithMessage,

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
    onSuccessWithMessage: (data) {
      onSuccessWithMessage?.call(data);
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
  postDataWithDialog({
    num? id,
    dynamic query,
    dynamic Function(Model?)? onSuccess,
    required String startingMessage,
    Function(ResponseModel data)? onSuccessWithMessage,

    dynamic Function(String)? onFail,
  }) => executeWithDialog<Model>(
    either:genericUseCases.getData(query: query, id: id),
    onError: (message) {
      if (onFail.isNotNull) {
        onFail?.call(message);
      } else {
        emit(FailedState(message: message));
      }
    },
    onSuccessWithMessage: (response) {
      onSuccessWithMessage?.call(response);
    },
    onSuccess: (Model? data) {
      if (onSuccess.isNotNull) {
        onSuccess?.call(data);
      } else {
        model = data;
        emit(LoadedState<Model>(data: model!));
      }
    },
    startingMessage: startingMessage
  );
}
