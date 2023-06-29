import 'package:flutter/material.dart';
import 'package:flutter_approuter/flutter_approuter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /// [navigatorKey] make sure to add navigatorKey, else appRouter will not work.
      navigatorKey: navigatorKey,
      title: 'Flutter Approuter demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Approuter Demo"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton.icon(
            onPressed: () {
              /// [appRouter.push(Widget page)] - push navigate without context
              appRouter.push(const SecondPage());
            },
            icon: const Icon(Icons.forward),
            label: const Text("Navigate to second page"),
          ),
          ElevatedButton.icon(
            onPressed: () {
              /// [appRouter.getContext()] - get context without before page Builds
              BuildContext context = appRouter.getContext()!;
              print(context.size);
            },
            icon: const Icon(Icons.gamepad),
            label: const Text("Get Context"),
          ),
        ],
      )),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            /// [appRouter.pop()] - pop navigate without context
            appRouter.pop();
          },
          icon: const Icon(Icons.keyboard_backspace_rounded),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            /// [appRouter.pushOffAll(Widget page)] - pushOffAll navigate without context
            appRouter.pushOffAll(const HomePage());
          },
          child: const Icon(Icons.keyboard_backspace_rounded),
        ),
      ),
    );
  }
}
