import 'package:bloc_counter/counter/cubit/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

// A widget that reacts to the provided CounterCubit state and notifies it in response to user input
class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text(
          "Bloc Counter",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Text(
              "$state",
              style: TextStyle(
                color: Colors.black,
                fontSize: Theme.of(context).textTheme.displayMedium!.fontSize,
                fontWeight:
                    Theme.of(context).textTheme.displayMedium!.fontWeight,
              ),
            );
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterCubit>().increment();
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterCubit>().decrement();
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
