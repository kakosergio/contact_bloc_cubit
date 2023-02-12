import 'package:flutter/material.dart';

import 'package:contact_bloc/models/contact_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../widgets/loader.dart';
import 'bloc/bloc/contact_update_bloc.dart';

class ContactUpdatePage extends StatefulWidget {
  final ContactModel contact;

  const ContactUpdatePage({
    Key? key,
    required this.contact,
  }) : super(key: key);

  @override
  State<ContactUpdatePage> createState() => _ContactUpdatePageState();
}

class _ContactUpdatePageState extends State<ContactUpdatePage> {
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
      body: Padding(
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
                  final validator = _formKey.currentState?.validate() ?? false;
                  if (validator) {
                    context.read<ContactUpdateBloc>().add(
                          ContactUpdateEvent.save(
                              id: widget.contact.id!,
                              name: _nameEC.text,
                              email: _emailEC.text),
                        );
                  }
                },
                child: const Text('Salvar'),
              ),
              Loader<ContactUpdateBloc, ContactUpdateState>(
                selector: (state) => state.maybeWhen(
                  loading: () => true,
                  orElse: () => false,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
