import 'package:flutter/material.dart';
import 'package:valolineups/providers/ability.dart';
import 'package:valolineups/providers/agent.dart';
import 'package:valolineups/providers/lineUpvideo.dart';
import 'package:valolineups/providers/valomap.dart';

class Agents with ChangeNotifier {
  List<Agent> _agents = [
    Agent(id: "0", image: 'assets/images/brimstone.jpg', name: "Brimstone"),
    Agent(id: "1", image: 'assets/images/viper.jpg', name: "Viper"),
    Agent(id: "2", image: 'assets/images/killjoy.jpg', name: "Killjoy")
  ];
  List<Ability> _abilities = [
    Ability(
        id: "0",
        agentId: "0",
        image: 'assets/images/incendiary.png',
        name: "INCENDIARY"),
    Ability(id: "1", agentId: "1", image: '', name: "SNAKE BITE"),
    Ability(id: "2", agentId: "1", image: '', name: "POISON CLOUD"),
    Ability(id: "3", agentId: "1", image: '', name: "TOXIC SCREEN"),
    Ability(id: "4", agentId: "1", image: '', name: "VIPER'S PIT"),
    Ability(id: "5", agentId: "2", image: '', name: "NANOSWARM"),
  ];
  List<ValoMap> _valomaps = [
    ValoMap(id: "0", image: 'assets/images/bind.jpg', name: "BIND"),
    ValoMap(id: "1", image: '', name: "ASCENT"),
    ValoMap(id: "2", image: '', name: "SPLIT"),
    ValoMap(id: "3", image: '', name: "ICEBOX"),
    ValoMap(id: "4", image: '', name: "BREEZE"),
    ValoMap(id: "5", image: '', name: "HAVEN"),
  ];
  List<LineUpVideo> _vids = [
    LineUpVideo(
        mapId: "0",
        abilityId: "0",
        id: "0",
        ytURL: "bWBlfSRlNC4",
        desc: "PostPlant B site"),
        LineUpVideo(
        mapId: "0",
        abilityId: "5",
        id: "1",
        ytURL: "1ZZJX0GHNKk",
        desc: "PostPlant C site"),
  ];

  List<Agent> get agents {
    return [..._agents];
  }

  List<ValoMap> get valomaps {
    return [..._valomaps];
  }

  List<Ability> abilities(String id) {
    return [..._abilities.where((element) => element.agentId == id)];
  }

  List<LineUpVideo> vids(String abid, String mapid) {
    return [
      ..._vids.where(
          (element) => element.abilityId == abid && element.mapId == mapid)
    ];
  }

  Agent findById(String id) {
    return _agents.firstWhere((element) => element.id == id);
  }

  ValoMap findMapById(String id) {
    return _valomaps.firstWhere((element) => element.id == id);
  }

  Ability findAbilityById(String id) {
    return _abilities.firstWhere((element) => element.id == id);
  }
}
