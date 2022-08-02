import 'package:flutter/material.dart';
import 'homepage.dart';

class AfterSplash extends StatelessWidget {
  const AfterSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'RUFW',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: const Color(0xFFFFCC00)),
        home: const HomePage(),
        /******* ROUTE DEFINITIONS ******/
        routes: <String, WidgetBuilder>{
          "GeneralInfoPage": (BuildContext context) => const GeneralInfo(),
          "SchedulePage": (BuildContext context) => const Schedule(),
          "TicketsPage": (BuildContext context) => const Tickets(),
          "SponsorsPage": (BuildContext context) => const Sponsors(),
          "FWPage": (BuildContext context) => const FamilyWeekend(),
          "FacebookPage": (BuildContext context) => const Facebook(),
          "TwitterPage": (BuildContext context) => const Twitter(),
          "FridayPage": (BuildContext context) => const Friday(),
          "SaturdayPage": (BuildContext context) => const Saturday(),
          "SundayPage": (BuildContext context) => const Sunday(),
        });
  }
}
