import 'package:flutter/material.dart';

class ContactRegisterPage extends StatefulWidget {
  const ContactRegisterPage({super.key});

  @override
  State<ContactRegisterPage> createState() => _ContactRegisterPageState();
}

class _ContactRegisterPageState extends State<ContactRegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameEC = TextEditingController();
  final _emailEC = TextEditingController();

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
        title: const Text('Contact Register Page'),
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
              ElevatedButton(onPressed: () {
              }, child: const Text('Salvar'),),
            ],
          ),
        ),
      ),
    );
  }
}
