import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/agentItem.dart';
import '../providers/agents.dart';

class AgentsScreen extends StatelessWidget {
  static const routeName = "\agentsScreen";

  @override
  Widget build(BuildContext context) {
    final agents = Provider.of<Agents>(context).agents;
    return Scaffold(
        body: Stack(children: [
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
        itemCount: agents.length,
        itemBuilder: (ctx, i) => AgentItem(agents[i].id),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    ]));
  }
}
