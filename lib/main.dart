import 'package:flutter/material.dart';
import 'package:flutter_travel/presentation/widgets/theme.dart';

import 'package:flutter_travel/router/app_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  const MyApp({
    Key? key,
    required this.appRouter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Travel',
      theme: MyTheme.lighttheme(context),
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
