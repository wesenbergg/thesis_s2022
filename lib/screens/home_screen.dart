import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:thesis_s2022/constants/style_constants.dart';

/// The screen of the second page.
class HomeScreen extends StatelessWidget {
  /// Creates a [HomeScreen].
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: appTitle),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () => context.go('/burger'),
                child: const Text('Go back to home page'),
              ),
            ],
          ),
        ),
      );
}
