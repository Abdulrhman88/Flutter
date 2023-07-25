import 'package:flutter/material.dart';

import 'package:expense_tracker_app/widgets/expenses.dart';
// import 'package:flutter/services.dart';

var kColorSchme = ColorScheme.fromSeed(
    seedColor: Colors.blueGrey); //Change background Color and button
void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
  //     .then((fn) {});
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
          useMaterial3: true,
          colorScheme: kColorSchme,
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kColorSchme.onPrimaryContainer,
            foregroundColor: kColorSchme.primaryContainer,
          )),
      home: const Expenses(),
    ),
  );
}
