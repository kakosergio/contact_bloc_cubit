import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/contact_model.dart';
import '../../../widgets/loader.dart';
import 'contacts_update_cubit.dart';

class ContactsUpdateCubitPage extends StatefulWidget {
  final ContactModel contact;

  const ContactsUpdateCubitPage({
    Key? key,
    required this.contact,
  }) : super(key: key);

  @override
  State<ContactsUpdateCubitPage> createState() => _ContactUpdatePageState();
}

class _ContactUpdatePageState extends State<ContactsUpdateCubitPage> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameEC;
  late final TextEditingController _emailEC;

  @override
  void initState() {
    super.initState();
    _nameEC = TextEditingController(text: widget.contact.name);
    _emailEC = TextEditingController(text: widget.contact.email);
  }

  @override
  void dispose() {
    _nameEC.dispose();
    _emailEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Update Page'),
      ),
      body: BlocListener<ContactsUpdateCubit, ContactsUpdateCubitState>(
        listener: (context, state) {
          state.whenOrNull(
            success: Navigator.of(context).pop,
            error: (message) => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  message,
                  style: const TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.red,
              ),
            ),
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
                    label: Text('Nome'),
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
                      context.read<ContactsUpdateCubit>().updateContact(
                          id: widget.contact.id!,
                          name: _nameEC.text,
                          email: _emailEC.text);
                    }
                  },
                  child: const Text('Salvar'),
                ),
                Loader<ContactsUpdateCubit, ContactsUpdateCubitState>(
                  selector: (state) => state.maybeWhen(
                    loading: () => true,
                    orElse: () => false,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
