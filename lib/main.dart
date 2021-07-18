import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:valolineups/screens/abilitiesScreen.dart';
import 'package:valolineups/screens/ytvideoScreen.dart';
import 'package:valolineups/screens/ytvideosScreen.dart';
import './screens/MapsScreen.dart';
import 'package:valolineups/providers/agents.dart';
import './screens/homeScreen.dart';
import './screens/agentsScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Agents())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.grey,
          accentColor: Colors.amber,
          fontFamily: 'Quicksand',
        ),
        home: HomeScreen(),
        routes: {
          AgentsScreen.routeName: (ctx) => AgentsScreen(),
          MapsScreen.routeName: (ctx) => MapsScreen(),
          AbilitiesScreen.routeName: (ctx) => AbilitiesScreen(),
          YtVideosScreen.routeName: (ctx) => YtVideosScreen(),
          YtvideoScreen.routeName: (ctx) => YtvideoScreen()
        },
      ),
    );
  }
}
