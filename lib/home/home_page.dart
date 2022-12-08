import 'package:flutter/material.dart';

import '../core/widgets/button_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
            children: [
              ButtonCard(label: 'Bloc Example', onTap: () => Navigator.of(context).pushNamed('/bloc/example/')),
              ButtonCard(label: 'Bloc Freezed', onTap: () => Navigator.of(context).pushNamed('/bloc/example/freezed')),
              ButtonCard(label: 'Contacts Example', onTap: () => Navigator.of(context).pushNamed('/contacts/list')),
              ButtonCard(label: 'Cubit Contacts', onTap: () => Navigator.of(context).pushNamed('/cubit/contacts/')),
            ],
          ),
        ),
      ),
    );
  }
}
