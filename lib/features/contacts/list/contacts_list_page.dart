import 'package:contact_bloc/features/contacts/list/bloc/contact_list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/contact_model.dart';

class ContactsListPage extends StatelessWidget {
  const ContactsListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Column(
              children: [
                BlocSelector<ContactListBloc, ContactListState,
                    List<ContactModel>>(
                  selector: (state) {
                    print(state);
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
    );
  }
}
