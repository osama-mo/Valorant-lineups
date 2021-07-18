import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:valolineups/widgets/mapItem.dart';
import '../widgets/agentItem.dart';
import '../providers/agents.dart';

class MapsScreen extends StatelessWidget {
  static const routeName = "\mapssScreen";
 

  @override
  Widget build(BuildContext context) {
     final  agentId = ModalRoute.of(context)?.settings.arguments as String;
    final maps = Provider.of<Agents>(context).valomaps;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Image.asset(

              'assets/images/homeScreen_background.jpg',
              fit: BoxFit.fill,
            ),
            height: 2000,
            width: 2000,
          ),
          GridView.builder(
            padding:
                const EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 10),
            itemCount: maps.length,
            itemBuilder: (ctx, i) => MapItem(maps[i].id,agentId),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
          ),
        ],
      ),
    );
  }
}
