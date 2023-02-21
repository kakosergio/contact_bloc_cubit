import 'package:contact_bloc/features/contacts_cubit/register/cubit/contacts_register_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../widgets/loader.dart';

class ContactsRegisterPage extends StatefulWidget {
  const ContactsRegisterPage({super.key});

  @override
  State<ContactsRegisterPage> createState() => _ContactsRegisterPageState();
}

class _ContactsRegisterPageState extends State<ContactsRegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameEC = TextEditingController();
  final _emailEC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Register Page'),
      ),
      body: BlocListener<ContactsRegisterCubit, ContactsRegisterCubitState>(
        listenWhen: (previous, current) => current.maybeWhen(
          success: () => true,
          error: (_) => true,
          orElse: () => false,
        ),
        listener: (context, state) {
          state.whenOrNull(
            success: () {
              Navigator.of(context).pop();
            },
            error: (message) =>
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
                message,
                style: const TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.red,
            )),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _nameEC,
                  decoration: const InputDecoration(
                    label: Text('Nome'),
                  ),
                  validator: (String? value) => value == null || value.isEmpty
                      ? 'Nome é obrigatório'
                      : null,
                ),
                TextFormField(
                  controller: _emailEC,
                  decoration: const InputDecoration(
                    label: Text('E-mail'),
                  ),
                  validator: (String? value) => value == null || value.isEmpty
                      ? 'E-mail é obrigatório'
                      : null,
                ),
                ElevatedButton(
                  onPressed: () {
                    final validator =
                        _formKey.currentState?.validate() ?? false;
                    if (validator) {
                      context.read<ContactsRegisterCubit>().registerContact(
                          name: _nameEC.text, email: _emailEC.text);
                    }
                  },
                  child: const Text('Salvar'),
                ),
                Loader<ContactsRegisterCubit, ContactsRegisterCubitState>(
                    selector: (state) => state.maybeWhen(
                          loading: () => true,
                          orElse: () => false,
                        ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
