

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'bloc/qrbloc_bloc.dart';
import 'config/theme_config/AppTheme.dart';
import 'config/theme_config/ThemeModel.dart';
import 'widgets/qr_home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ChangeNotifierProvider<ThemeModel>(
      create: (BuildContext context) => ThemeModel(),
      child: const MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QRBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MenuChap',
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        themeMode: ThemeMode.system,
        home: QRHome(title: 'MenuChap'),
      ),
    );
  }
}



