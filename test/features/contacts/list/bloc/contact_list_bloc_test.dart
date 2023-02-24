import 'package:bloc_test/bloc_test.dart';
import 'package:contact_bloc/features/contacts/list/bloc/contact_list_bloc.dart';
import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockContactsRepository extends Mock implements ContactsRepository {}

void main() {
  // declaração
  late ContactsRepository repository;
  late ContactListBloc bloc;
  late List<ContactModel> contacts;

  // preparação
  setUp(() {
    repository = MockContactsRepository();
    bloc = ContactListBloc(repository: repository);
    contacts = [
      ContactModel(
          name: 'Sérgio Ricardo', email: 'sergioricardort@hotmail.com'),
      ContactModel(name: 'Cintya Aparecida', email: 'cinty@hotmail.com'),
      ContactModel(name: 'Maria Luiza', email: 'malu@hotmail.com'),
    ];
  });

  // execução
  blocTest<ContactListBloc, ContactListState>(
    'Testando a busca de contatos',
    build: () => bloc,
    act: (bloc) => bloc.add(const ContactListEvent.findAll()),
    setUp: () => when(() => repository.findAll(),).thenAnswer((_) async => contacts),
    expect: () => [
      ContactListState.loading(),
      ContactListState.data(contacts: contacts)
    ],
  );

  blocTest<ContactListBloc, ContactListState>(
    'Deve retornar erro ao busca de contatos',
    build: () => bloc,
    act: (bloc) => bloc.add(const ContactListEvent.findAll()),
    expect: () => [
      ContactListState.loading(),
      ContactListState.error(error: 'Erro ao buscar contatos')
    ],
  );
}
