import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:valolineups/providers/agent.dart';
import 'package:valolineups/providers/agents.dart';
import '../screens/abilitiesScreen.dart';
import 'package:valolineups/providers/valomap.dart';

class MapItem extends StatelessWidget {
  final id;
  final String agentId;
  MapItem(this.id, this.agentId);

  @override
  Widget build(BuildContext context) {
    ValoMap _map = Provider.of<Agents>(context).findMapById(id);
    return GridTile(
      child: GestureDetector(
        child: Image.asset(
          _map.image,
          fit: BoxFit.fill,
        ),
        onTap: () {
          Navigator.of(context).pushNamed(AbilitiesScreen.routeName,
              arguments: [agentId, _map.id]);
        },
      ),
      footer: Container(
        height: 20,
        child: GridTileBar(
          backgroundColor: Colors.redAccent,
          title: Text(
            _map.name,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
