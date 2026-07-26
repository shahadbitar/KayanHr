import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(            // child 1
          title: Text("My App"),   // child of AppBar
        ),
        body: Column(               // child 2
          children: [
            Text("Hello"),          // child of Column
            Icon(Icons.star),       // another child of Column
            //Image.network("data:image/png;base64,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"),
            //Image(image: NetworkImage("data:image/png;base64,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")),
            Image.asset("assets/images/flutter.png"),
            Icon(Icons.star, color: Colors.yellow, size: 30),
            ElevatedButton(
              onPressed: () {
                print("Button pressed!");
              },
              child: Text("Click Me"),
            ),
            Row(
              children: [
                Icon(Icons.star),
                Text("Rating"),
              ],
            ),
            Stack(
              children: [
                //Image.asset("assets/images/flutter.png"),
                Text("Overlay Text"), // sits on top of the image
              ],
            ),
            Row(
              children: [
                Icon(Icons.star),
                Expanded(
                  child: Text("This text takes up all remaining space"),
                ),
              ],
            ),
            //Padding(
            //               padding: EdgeInsets.all(16),
            //               child: Text("Padded text"),
            //             ),
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.blue,
              child: Text("Inside a container"),
            ),
            Card(
              elevation: 4,
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Text("This is a card"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// // ---------- StatelessWidget ----------
// // No internal state. Doesn't change once built.
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     // BuildContext (context) tells this widget where it sits in the widget tree
//     return MaterialApp(
//       home: const HomePage(),
//     );
//   }
// }
//
// // ---------- StatefulWidget ----------
// // Has internal state (the counter) that changes over time.
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   int _counter = 0; // this is the "state"
//
//   void _incrementCounter() {
//     setState(() {
//       // setState tells Flutter: "rebuild this widget, state changed"
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // Scaffold = basic screen structure (app bar + body)
//       appBar: AppBar(
//         title: const Text('Week 3 Demo'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0), // Padding widget
//         child: Column(
//           // Column = arrange children vertically
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Image widget (loaded from assets/)
//             Image.asset(
//               'assets/images/flutter.png',
//               width: 100,
//               height: 100,
//             ),
//
//             const SizedBox(height: 20),
//
//             // Card widget = styled container with shadow
//             Card(
//               elevation: 4,
//               child: Padding(
//                 padding: const EdgeInsets.all(12.0),
//                 child: Row(
//                   // Row = arrange children horizontally
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     const Icon(Icons.info, color: Colors.blue), // Icon
//                     const Text('Counter Value:'), // Text
//                     Expanded(
//                       // Expanded = fill remaining space in Row/Column
//                       child: Text(
//                         '$_counter',
//                         textAlign: TextAlign.right,
//                         style: const TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//
//             const SizedBox(height: 20),
//
//             // Stack = layer widgets on top of each other
//             Stack(
//               alignment: Alignment.center,
//               children: [
//                 Container(
//                   width: 150,
//                   height: 150,
//                   decoration: BoxDecoration(
//                     color: Colors.deepPurple,
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                 ),
//                 const Icon(Icons.star, color: Colors.white, size: 40),
//               ],
//             ),
//
//             const SizedBox(height: 20),
//
//             // Button widget
//             ElevatedButton(
//               onPressed: _incrementCounter, // triggers setState
//               child: const Text('Increment'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
