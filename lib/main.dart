import 'package:flutter/material.dart';
import 'package:website_v2/constants.dart';

// ignore: prefer_const_constructors
void main() => runApp(PortfolioApp());

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Open Sans",
        scaffoldBackgroundColor: kDarkPrimaryColor,
        textTheme: const TextTheme(
          headline1: TextStyle(
            color: kLightPrimaryColor,
            fontSize: 27,
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.bold,
          ),
          headline2: TextStyle(
            color: kLightPrimaryColor,
            fontSize: 40,
            fontFamily: 'OpenSans',
          ),
          headline3: TextStyle(
            color: kLightPrimaryColor,
            fontSize: 20,
            fontFamily: 'OpenSans',
          ),
          bodyText1: TextStyle(
            color: kLightPrimaryColor,
            fontFamily: 'OpenSans',
            fontSize: 16,
          ),
        ),
      ),
      routes: {
        '/': (context) => const MainScreen(),
        //'/photography': (context) => PhotographyScreen(),
      },
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: defaultPadding,
                    horizontal: defaultPadding,
                  ),
                  child: Text(
                    "LOGO HERE",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: defaultPadding,
                    horizontal: defaultPadding,
                  ),
                  child: Text(
                    "toggle here",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: defaultPadding,
                    horizontal: defaultPadding,
                  ),
                  child: Text(
                    "about",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: Text(
                    "experience",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: defaultPadding,
                    horizontal: defaultPadding,
                  ),
                  child: Text(
                    "projects",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: Text(
                    "contact",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// how to navigate pages - create a method and call it
//   void _showWelcomeScreen() {
//     Navigator.of(context).pushNamed('/photography');
//   }
