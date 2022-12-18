import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:contact_bloc/models/contact_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../repositories/contacts_repository.dart';

part 'contact_register_bloc.freezed.dart';
part 'contact_register_event.dart';
part 'contact_register_state.dart';

class ContactRegisterBloc
    extends Bloc<ContactRegisterEvent, ContactRegisterState> {
  final ContactsRepository _contactsRepository;

  ContactRegisterBloc({required ContactsRepository contactsRepository})
      : _contactsRepository = contactsRepository,
        super(const ContactRegisterState.initial()) {
    on<_Save>(_save);
  }

  Future<FutureOr<void>> _save(
      _Save event, Emitter<ContactRegisterState> emit) async {
    try {
      emit(const ContactRegisterState.loading());
      await Future.delayed(const Duration(seconds: 3));
      final contactModel = ContactModel(name: event.name, email: event.email);

      await _contactsRepository.create(contactModel);
      emit(const ContactRegisterState.success());
    } catch (e, s) {
      emit(const ContactRegisterState.error(message: 'Erro ao salvar o novo contato'));
      log('Erro ao salvar o novo contato', error: e, stackTrace: s);
    }
  }
}
