import 'package:contact_bloc/features/contacts_cubit/list/cubit/contacts_list_cubit.dart';
import 'package:flutter/material.dart';

import '../../widgets/loader.dart';

class ContactsListCubitPage extends StatelessWidget {
  const ContactsListCubitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
