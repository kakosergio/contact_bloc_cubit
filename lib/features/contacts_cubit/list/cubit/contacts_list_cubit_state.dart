part of 'contacts_list_cubit.dart';

@freezed
class ContactsListCubitState with _$ContactsListCubitState {
  factory ContactsListCubitState.initial() = _Initial;
  factory ContactsListCubitState.loading() = _Loading;
  factory ContactsListCubitState.data({required List<ContactModel> contacts}) = _Data;
  factory ContactsListCubitState.error({required String error}) = _Error;

}