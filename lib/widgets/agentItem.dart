import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:valolineups/providers/agent.dart';
import 'package:valolineups/providers/agents.dart';
import 'package:valolineups/screens/mapsScreen.dart';


class AgentItem extends StatelessWidget {
  final String id;
  
  AgentItem(this.id);

  @override
  Widget build(BuildContext context) {
    Agent _agent = Provider.of<Agents>(context).findById(id);

    return GridTile(
      child: GestureDetector(
        child: Image.asset(
          _agent.image,
          fit: BoxFit.fill,
        ),
        onTap: () {
          Navigator.of(context)
              .pushNamed(MapsScreen.routeName, arguments: id);
        },
      ),
      footer: Container(
        height: 20,
        child: GridTileBar(
          backgroundColor: Colors.redAccent,
          title: Text(
            _agent.name,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
