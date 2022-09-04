import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:thesis_s2022/constants/style_constants.dart';
import 'package:thesis_s2022/screens/burger_builder_screen.dart';
import 'package:thesis_s2022/screens/home_screen.dart';
import 'package:thesis_s2022/states/burger_state.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => BurgerState(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routeInformationProvider: _router.routeInformationProvider,
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
        title: appTitleText,
        theme: ThemeData.light().copyWith(
          textTheme: Theme.of(context).textTheme.apply(
                fontFamily: defaultFontFamily,
                bodyColor: bodyColor,
              ),
        ),
        debugShowCheckedModeBanner: false,
      );

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const HomeScreen(),
        routes: <GoRoute>[
          GoRoute(
            path: 'burger',
            builder: (BuildContext context, GoRouterState state) =>
                const BurgerBuilderScreen(),
          ),
        ],
      ),
    ],
  );
}
