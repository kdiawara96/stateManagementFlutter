// import 'package:flutter/material.dart';
// import 'package:new_bloc/stateManagement/Provider/Counter.provider.dart';
// import 'package:provider/provider.dart';

// class HomeProvider extends StatelessWidget {
//   HomeProvider({super.key});

//   int counter = 0;

//   @override
//   Widget build(BuildContext context) {
//     CounterProviderState ctst =
//         Provider.of<CounterProviderState>(context, listen: false);

//     print("build");
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Counter"),
//         centerTitle: true,
//       ),
//       body: Consumer<CounterProviderState>(
//         builder: (context, value, child) {
//           return Center(
//             child: Text(
//               "Counter is => ${value.counter}",
//               style: Theme.of(context).textTheme.headlineSmall,
//             ),
//           );
//         },
//       ),
//       floatingActionButton: Row(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           FloatingActionButton(
//             onPressed: () {
//               ctst.increment();
//             },
//             tooltip: 'Increment',
//             child: const Icon(Icons.add),
//           ),
//           const SizedBox(
//             width: 10,
//           ),
//           FloatingActionButton(
//             onPressed: () {
//               ctst.decrement();
//             },
//             tooltip: 'Decrement',
//             child: const Icon(Icons.remove),
//           ),
//         ],
//       ),
//     );
//   }
// }
