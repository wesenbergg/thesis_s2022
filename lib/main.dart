import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thesis_s2022/constants/style_constants.dart';
import 'package:thesis_s2022/screens/burger_builder_screen.dart';
import 'package:thesis_s2022/states/burger_state.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => BurgerState(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitleText,
      theme: ThemeData.light().copyWith(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        // primarySwatch: Colors.red,
        // typography: Typography.material2018(),
        // varelaRound
        // meriendaOne
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: defaultFontFamily,
              bodyColor: bodyColor,
            ),
      ),
      home: const BurgerBuilderScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
