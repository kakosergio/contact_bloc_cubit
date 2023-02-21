part of 'contacts_update_cubit.dart';

@freezed
class ContactsUpdateCubitState with _$ContactsUpdateCubitState {
  factory ContactsUpdateCubitState.initial() = _Initial;
  factory ContactsUpdateCubitState.loading() = _Loading;
  factory ContactsUpdateCubitState.error({required String message}) = _Error;
  factory ContactsUpdateCubitState.success() = _Success;
}
