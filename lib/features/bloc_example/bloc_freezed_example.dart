import 'package:contact_bloc/features/bloc_example/bloc_freezed/example_freezed_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocFreezedExample extends StatelessWidget {
  const BlocFreezedExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => context.read<ExampleFreezedBloc>().add(
              const ExampleFreezedEvent.addName('Nome Freezed'),
            ),
      ),
      appBar: AppBar(
        title: const Text('Freezed Example'),
      ),
      body: BlocListener<ExampleFreezedBloc, ExampleFreezedState>(
        listener: (context, state) {
          state.whenOrNull(
            showBanner: (message, _) =>
                ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(message),
              ),
            ),
          );
        },
        child: Column(
          children: [
            BlocSelector<ExampleFreezedBloc, ExampleFreezedState, bool>(
              selector: (state) =>
                  state.maybeWhen(loading: () => true, orElse: () => false),
              builder: (context, showLoader) {
                if (showLoader) {
                  return const Expanded(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
                return const SizedBox.shrink();
              },
            ),
            BlocSelector<ExampleFreezedBloc, ExampleFreezedState, List<String>>(
                selector: (state) {
                  return state.maybeWhen(
                    showBanner: (_, names) => names,
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
                          onTap: () {
                            context
                                .read<ExampleFreezedBloc>()
                                .add(ExampleFreezedEvent.removeNames(name));
                          },
                          title: Text(names[index]),
                        );
                      },
                    ))
          ],
        ),
      ),
    );
  }
}
