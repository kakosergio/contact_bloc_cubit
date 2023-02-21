part of 'contacts_register_cubit.dart';

@freezed
class ContactsRegisterCubitState with _$ContactsRegisterCubitState {
  factory ContactsRegisterCubitState.initial() = _Initial;
  factory ContactsRegisterCubitState.loading() = _Loading;
  factory ContactsRegisterCubitState.success() = _Success;
  factory ContactsRegisterCubitState.error({required String message}) = _Error;
}
