import 'package:flutter/material.dart';
import './helppers/cut_corners_border.dart';

import './ui/login.dart';
import './ui/home.dart';
import './helppers/colors.dart';

final ThemeData _PsTheme = _buildPsTheme();

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Psicología',
        theme: _PsTheme,
        home: Home(),
        initialRoute: '/login',
        onGenerateRoute: _getRoute,
      );
  }
}

Route<dynamic> _getRoute(RouteSettings settings) {
    if (settings.name != '/login') {
      return null;
    }

    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => LoginPage(),
      fullscreenDialog: true,
    );
  }

ThemeData _buildPsTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    accentColor: psDarkPurple200,
    primaryColor: psDarkPurple,
    buttonTheme: base.buttonTheme.copyWith(
      buttonColor: psDarkRed,
      textTheme: ButtonTextTheme.normal,
    ),
    scaffoldBackgroundColor: psLetterWhite,
    cardColor: psLetterWhite,
    textSelectionColor: psDarkPurple200,
    errorColor: psErrorRed,
    textTheme: _buildShrineTextTheme(base.textTheme),
    primaryTextTheme: _buildShrineTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildShrineTextTheme(base.accentTextTheme),
    inputDecorationTheme: InputDecorationTheme(
      border: CutCornersBorder(), // Replace code
    ),
    primaryIconTheme: base.iconTheme.copyWith(
        color: psDarkPurple
    ),
  );
}

TextTheme _buildShrineTextTheme(TextTheme base) {
  return base.copyWith(

    headline: base.headline.copyWith(
      fontWeight: FontWeight.w500,
    ),
    title: base.title.copyWith(
        fontSize: 18.0
    ),
    caption: base.caption.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 14.0,
    ),
  ).apply(
    fontFamily: 'Laila',
    displayColor: psLetterWhite,
    bodyColor: psDarkPurple300,
  );
}