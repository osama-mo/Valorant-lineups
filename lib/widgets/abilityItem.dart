import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:valolineups/providers/ability.dart';
import 'package:valolineups/providers/agent.dart';
import 'package:valolineups/providers/agents.dart';
import 'package:valolineups/screens/mapsScreen.dart';
import 'package:valolineups/screens/ytvideosScreen.dart';

class AbilityItem extends StatelessWidget {
  final id;
  final mapid;
  AbilityItem(this.id,this.mapid);

  @override
  Widget build(BuildContext context) {
    Ability _ability = Provider.of<Agents>(context).findAbilityById(id);
    return GridTile(
      child: GestureDetector(
        child: Image.asset(_ability.image,fit: BoxFit.fill,),
        onTap: () {
          Navigator.of(context).pushNamed(YtVideosScreen.routeName,arguments: [id,mapid]);
        },
      ),
      footer: Container(height: 20,
        child: GridTileBar(
           backgroundColor: Colors.redAccent,
          title: Text(
            _ability.name,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
