import 'package:contact_bloc/features/bloc_example/bloc_freezed/example_freezed_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocFreezedExample extends StatelessWidget {
  const BlocFreezedExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Freezed Example'),
      ),
      body: Column(
        children: [
          BlocSelector<ExampleFreezedBloc, ExampleFreezedState, List<String>>(
            selector: (state) {
              return state.maybeWhen(
                data: (names) => names,
                orElse: () => <String>[],
              );
            },
            builder: (_, names) => ListView.builder(
                    shrinkWrap: true,
                    itemCount: names.length,
                    itemBuilder: (context, index) {
                      final name = names[index];
                      return ListTile(
                        onTap: () {},
                        title: Text(names[index]),
                      );
                    },
                  )
          )
        ],
      ),
    );
  }
}
