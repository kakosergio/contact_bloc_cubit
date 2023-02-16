import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:contact_bloc/features/contacts/list/bloc/contact_list_bloc.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../models/contact_model.dart';

part 'contacts_list_cubit_state.dart';
part 'contacts_list_cubit.freezed.dart';

class ContactsListCubit extends Cubit<ContactsListCubitState> {
  final ContactsRepository _repository;
  ContactsListCubit({required ContactsRepository repository})
      : _repository = repository,
        super(ContactsListCubitState.initial());

  Future<void> findAll() async {
    try {
      emit(ContactsListCubitState.loading());
      final contacts = await _repository.findAll();
      Future.delayed(const Duration(seconds: 1));
      emit(ContactsListCubitState.data(contacts: contacts));
    } catch (e, s) {
      log('Erro ao buscar contatos', error: e, stackTrace: s);
      emit(ContactsListCubitState.error(error: 'Erro ao buscar contatos'));
    }
  }
}
