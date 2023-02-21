import 'dart:developer';

import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'contacts_register_cubit_state.dart';
part 'contacts_register_cubit.freezed.dart';

class ContactsRegisterCubit extends Cubit<ContactsRegisterCubitState> {
  final ContactsRepository _repository;
  ContactsRegisterCubit({required ContactsRepository repository})
      : _repository = repository,
        super(
          ContactsRegisterCubitState.initial(),
        );

  Future<void> registerContact(
      {required String name, required String email}) async {
    try {
      emit(ContactsRegisterCubitState.loading());

      final model = ContactModel(name: name, email: email);

      await _repository.create(model);
      emit(ContactsRegisterCubitState.success());
    } catch (e, s) {
      log('Erro ao registrar contato', error: e, stackTrace: s);
      emit(ContactsRegisterCubitState.error(
          message: 'Erro ao registrar contato'));
    }
  }
}
