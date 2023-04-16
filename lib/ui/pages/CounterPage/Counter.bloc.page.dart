import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_bloc/stateManagement/bloc/Counter/counter.bloc.dart';

class CounterPage extends StatelessWidget {
  CounterPage({super.key});

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
        centerTitle: true,
      ),
      body: Center(
        child:
            BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
          if (state is CounterSuccessState || state is CounterIntialState) {
            counter = state.counter;
            return Text(" La valeur = $counter");
          } else if (state is CounterErrorState) {
            return Column(
              children: [
                Text("La valeur = ${state.counter}"),
                Text("Error = ${state.errorMessage}"),
              ],
            );
          } else {
            return Container();
          }
        }),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              // Logique nous allons acceder au bloc et executer une action
              context.read()<CounterBloc>().add(IncrementCounterEvent());
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(DecrementCounterEvent());
            },
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
