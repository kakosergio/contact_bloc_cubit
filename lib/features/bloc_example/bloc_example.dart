import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/example_bloc.dart';

class BlocExample extends StatelessWidget {
  const BlocExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Example'),
      ),
      body: BlocListener<ExampleBloc, ExampleState>(
        listener: (context, state) {
          if (state is ExampleStateData) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'A quantidade de nomes é: ${state.names.length}',
                ),
              ),
            );
          }
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocConsumer<ExampleBloc, ExampleState>(
              builder: (context, state) {
                if (state is ExampleStateData) {
                  return Text('Total de nomes é: ${state.names.length}');
                }
                return const SizedBox.shrink();
              },
              listener: (context, state) {
                print('Estado alterado para ${state.runtimeType}');
              },
            ),
            BlocSelector<ExampleBloc, ExampleState, bool>(
              selector: (state) {
                if (state is ExampleStateInitial) {
                  return true;
                }
                return false;
              },
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

            BlocSelector<ExampleBloc, ExampleState, List<String>>(selector: (state) {
              if(state is ExampleStateData){
                return state.names;
              }
              return [];
            }, builder: (context, names) {
               return ListView.builder(
                    shrinkWrap: true,
                    itemCount: names.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(names[index]),
                      );
                    },
                  );
            },),
            // BlocBuilder<ExampleBloc, ExampleState>(
            //   builder: (context, state) {
            //     if (state is ExampleStateData) {
            //       return ListView.builder(
            //         shrinkWrap: true,
            //         itemCount: state.names.length,
            //         itemBuilder: (context, index) {
            //           return ListTile(
            //             title: Text(state.names[index]),
            //           );
            //         },
            //       );
            //     }
            //     return const Center(
            //       child: Text('Nenhum nome cadastrado'),
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
