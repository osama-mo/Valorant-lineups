import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:valolineups/providers/ability.dart';
import 'package:valolineups/widgets/abilityItem.dart';
import 'package:valolineups/widgets/mapItem.dart';
import '../widgets/agentItem.dart';
import '../providers/agents.dart';

class AbilitiesScreen extends StatelessWidget {
  static const routeName = "\abilitiesScreen";
  // final agentId;
  // AbilitiesScreen(this.agentId);
 
  @override
  Widget build(BuildContext context) {
    final listofarg = ModalRoute.of(context)?.settings.arguments as List;
    final _abilities = Provider.of<Agents>(context).abilities(listofarg[0]);
    print(_abilities.length);
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
            itemCount: _abilities.length,
            itemBuilder: (ctx, i) => AbilityItem(_abilities[i].id,listofarg[1]),
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
