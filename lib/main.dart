import 'package:contact_bloc/features/bloc_example/bloc/example_bloc.dart';
import 'package:contact_bloc/features/bloc_example/bloc_example.dart';
import 'package:contact_bloc/features/bloc_example/bloc_freezed/example_freezed_bloc.dart';
import 'package:contact_bloc/features/bloc_example/bloc_freezed_example.dart';
import 'package:contact_bloc/features/contacts/register/bloc/contact_register_bloc.dart';
import 'package:contact_bloc/features/contacts/register/contact_register_page.dart';
import 'package:contact_bloc/features/contacts_cubit/contacts_list_cubit_page.dart';
import 'package:contact_bloc/features/contacts_cubit/list/cubit/contacts_list_cubit.dart';
import 'package:contact_bloc/features/contacts_cubit/register/contacts_register_page.dart';
import 'package:contact_bloc/features/contacts_cubit/register/cubit/contacts_register_cubit.dart';
import 'package:contact_bloc/features/contacts_cubit/update/contacts_update_cubit.dart';
import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/contacts/list/bloc/contact_list_bloc.dart';
import 'features/contacts/list/contacts_list_page.dart';
import 'features/contacts/update/bloc/bloc/contact_update_bloc.dart';
import 'features/contacts/update/contact_update_page.dart';
import 'features/contacts_cubit/update/contacts_update_cubit_page.dart';
import 'home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => ContactsRepository(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/home',
        routes: {
          '/home': (context) => const HomePage(),
          '/bloc/example/': (_) => BlocProvider(
                create: (_) => ExampleBloc()..add(ExampleFindNameEvent()),
                child: BlocExample(),
              ),
          '/bloc/example/freezed': (_) => BlocProvider<ExampleFreezedBloc>(
              create: (BuildContext context) => ExampleFreezedBloc()
                ..add(const ExampleFreezedEvent.findNames()),
              child: const BlocFreezedExample()),
          '/contacts/list': (context) => BlocProvider(
                create: (context) => ContactListBloc(
                    repository: context.read<ContactsRepository>())
                  ..add(const ContactListEvent.findAll()),
                child: const ContactsListPage(),
              ),
          '/contacts/register': (context) => BlocProvider(
              create: (context) =>
                  ContactRegisterBloc(contactsRepository: context.read()),
              child: const ContactRegisterPage()),
          '/contacts/update': (context) {
            final contact =
                ModalRoute.of(context)!.settings.arguments as ContactModel;
            return BlocProvider(
              create: (context) =>
                  ContactUpdateBloc(contactsRepository: context.read()),
              child: ContactUpdatePage(contact: contact),
            );
          },
          '/contacts/cubit/list': (context) => BlocProvider(
                create: (context) => ContactsListCubit(
                  repository: context.read(),
                )..findAll(),
                child: const ContactsListCubitPage(),
              ),
          '/contacts/cubit/register': (context) => BlocProvider(
                create: (context) => ContactsRegisterCubit(
                  repository: context.read(),
                ),
                child: const ContactsRegisterPage(),
              ),
          '/contacts/cubit/update': (context) {
            final contact =
                ModalRoute.of(context)!.settings.arguments as ContactModel;
            return BlocProvider(
              create: (context) => ContactsUpdateCubit(
                repository: context.read(),
              ),
              child: ContactsUpdateCubitPage(contact: contact),
            );
          }
        },
      ),
    );
  }
}
