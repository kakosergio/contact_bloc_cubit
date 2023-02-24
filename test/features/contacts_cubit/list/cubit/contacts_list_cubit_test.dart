import 'package:bloc_test/bloc_test.dart';
import 'package:contact_bloc/features/contacts_cubit/list/cubit/contacts_list_cubit.dart';
import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockContactsRepository extends Mock implements ContactsRepository {}

void main() {
  // declaração
  late ContactsRepository repository;
  late ContactsListCubit cubit;
  late List<ContactModel> contacts;

  // preparação
  setUp(() {
    repository = MockContactsRepository();
    cubit = ContactsListCubit(repository: repository);
    contacts = [
      ContactModel(
          name: 'Sérgio Ricardo', email: 'sergioricardort@hotmail.com'),
      ContactModel(name: 'Cintya Aparecida', email: 'cinty@hotmail.com'),
      ContactModel(name: 'Maria Luiza', email: 'malu@hotmail.com'),
    ];
  });

  // execução
  blocTest<ContactsListCubit, ContactsListCubitState>(
    'Testando a busca de contatos',
    build: () => cubit,
    act: (cubit) => cubit.findAll(),
    setUp: () => when(() => repository.findAll(),).thenAnswer((_) async => contacts),
    expect: () => [
      ContactsListCubitState.loading(),
      ContactsListCubitState.data(contacts: contacts)
    ],
  );

  blocTest<ContactsListCubit, ContactsListCubitState>(
    'Deve retornar erro ao busca de contatos',
    build: () => cubit,
    act: (cubit) => cubit.findAll(),
    expect: () => [
      ContactsListCubitState.loading(),
      ContactsListCubitState.error(error: 'Erro ao buscar contatos')
    ],
  );
}