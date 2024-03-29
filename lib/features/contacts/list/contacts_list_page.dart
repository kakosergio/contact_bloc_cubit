import 'package:contact_bloc/features/contacts/list/bloc/contact_list_bloc.dart';
import 'package:contact_bloc/widgets/loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../models/contact_model.dart';

class ContactsListPage extends StatelessWidget {
  const ContactsListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final read = context.read<ContactListBloc>();
          await Navigator.pushNamed(context, '/contacts/register');
          read.add(const ContactListEvent.findAll());
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: BlocListener<ContactListBloc, ContactListState>(
        // Inclui o ListenWhen para que seja ouvido apenas quando o estado for
        // um error. Então error: (error) => true significa que o estado que
        // veio é um error, se não for, executa o orElse e manda que é falso
        // para que não seja rebuildado
        listenWhen: (previous, current) => current.maybeWhen(
          error: (error) => true,
          success: () => true,
          orElse: () => false,
        ),
        listener: (context, state) {
          state.whenOrNull(
              error: (error) => ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        error,
                        style: const TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.red,
                    ),
                  ),
              success: () {
                context.read<ContactListBloc>().add(const ContactListEvent.findAll());
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Contato excluído com sucesso',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: Colors.green,
                  ),
                );
              });
        },
        child: RefreshIndicator(
          onRefresh: () async => context.read<ContactListBloc>()
            ..add(const ContactListEvent.findAll()),
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                child: Column(
                  children: [
                    Loader<ContactListBloc, ContactListState>(
                      selector: (state) => state.maybeWhen(
                        loading: () => true,
                        orElse: () => false,
                      ),
                    ),
                    BlocSelector<ContactListBloc, ContactListState,
                        List<ContactModel>>(
                      selector: (state) {
                        return state.maybeWhen(
                            data: (contacts) => contacts, orElse: () => []);
                      },
                      builder: (_, contacts) {
                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: contacts.length,
                          itemBuilder: (context, index) {
                            final contact = contacts[index];
                            return ListTile(
                              onLongPress: () {
                                final read = context.read<ContactListBloc>();
                                read.add(
                                  ContactListEvent.delete(model: contact),
                                );
                              },
                              onTap: () async {
                                final read = context.read<ContactListBloc>();
                                await Navigator.of(context).pushNamed(
                                    '/contacts/update',
                                    arguments: contact);
                                read.add(const ContactListEvent.findAll());
                              },
                              title: Text(contact.name),
                              subtitle: Text(contact.email),
                            );
                          },
                        );
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
