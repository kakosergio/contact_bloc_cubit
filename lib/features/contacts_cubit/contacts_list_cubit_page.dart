import 'package:contact_bloc/features/contacts_cubit/list/cubit/contacts_list_cubit.dart';
import 'package:contact_bloc/models/contact_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/loader.dart';

class ContactsListCubitPage extends StatelessWidget {
  const ContactsListCubitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => context.read<ContactsListCubit>().findAll(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () async {
              final read = context.read<ContactsListCubit>();
              await Navigator.of(context).pushNamed('/contacts/cubit/register');
              read.findAll();
            }),
        appBar: AppBar(
          title: const Text('List Cubit'),
        ),
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              child: Column(
                children: [
                  Loader<ContactsListCubit, ContactsListCubitState>(
                    selector: (state) {
                      return state.maybeWhen(
                        orElse: () => false,
                        loading: () => true,
                      );
                    },
                  ),
                  BlocSelector<ContactsListCubit, ContactsListCubitState,
                      List<ContactModel>>(
                    selector: (state) {
                      return state.maybeWhen(
                        orElse: () => <ContactModel>[],
                        data: (contacts) => contacts,
                      );
                    },
                    builder: (context, contacts) {
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: contacts.length,
                        itemBuilder: (_, index) {
                          final contact = contacts[index];
                          return ListTile(
                            // onTap: () async => await Navigator.of(context).pushNamed('/contacts/cubit/register'),
                            onLongPress: () => context
                                .read<ContactsListCubit>()
                                .deleteByModel(contact),
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
    );
  }
}
