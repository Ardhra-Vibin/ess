import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:localization/lacalization/demo_localization.dart';
import 'package:localization/routes/custome_router.dart';
import 'package:localization/routes/route_names.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  static void setLocale(BuildContext context,Locale Locale){
    _MyAppState state = context.

  }
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale locale;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      locale: locale,
      supportedLocales: [
        Locale('en','US'),
        Locale('ar','SA')
      ],
      localizationsDelegates: [
        DemoLocalization.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      localeResolutionCallback: (deviceLocale,supportedLocales){
        for(var locale in supportedLocales){
          if(locale.languageCode == deviceLocale.languageCode && locale.countryCode == deviceLocale.countryCode){
            return deviceLocale;
          }

        }
        return supportedLocales.first;
      },
      debugShowCheckedModeBanner: false,
      onGenerateRoute: CustomRouter.allRoutes,
      initialRoute: homeRoute,
    );
  }
}

