import 'dart:developer';

import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'contacts_update_cubit_state.dart';
part 'contacts_update_cubit.freezed.dart';

class ContactsUpdateCubit extends Cubit<ContactsUpdateCubitState> {
  final ContactsRepository _repository;
  ContactsUpdateCubit({required ContactsRepository repository})
      : _repository = repository,
        super(ContactsUpdateCubitState.initial());

  Future<void> updateContact({
    required int id,
    required String name,
    required String email,
  }) async {
    try {
      emit(ContactsUpdateCubitState.loading());

      final model = ContactModel(name: name, email: email, id: id);

      await _repository.update(model);
      emit(ContactsUpdateCubitState.success());
    } catch (e, s) {
      log('Erro ao atualizar contato', error: e, stackTrace: s);
      emit(
          ContactsUpdateCubitState.error(message: 'Erro ao atualizar contato'));
    }
  }
}
