import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:valolineups/screens/ytvideoScreen.dart';
import '../providers/agents.dart';

class YtVideosScreen extends StatelessWidget {
  static const routeName = "\ytVideosScreen";

  @override
  Widget build(BuildContext context) {
    final abilityId =
        ModalRoute.of(context)?.settings.arguments as List;
    final vids = Provider.of<Agents>(context).vids(abilityId[0], abilityId[1]);
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
        itemCount: vids.length,
        itemBuilder: (ctx, i) => GestureDetector(
          onTap: () {
            Navigator.of(context)
                .pushNamed(YtvideoScreen.routeName, arguments: vids[i].ytURL);
          },
          child: GridTile(
            child: Card(
              color: Colors.amber,
              child: Center(
                child: Stack(children: [
                  Text(
                    vids[i].desc,
                    style: TextStyle(
                      fontSize: 40,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 5
                        ..color = Colors.black,
                    ),
                    // style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    vids[i].desc,
                    style: TextStyle(fontSize: 40, color: Colors.redAccent
                        // style: TextStyle(color: Colors.white),
                        ),
                  )
                ]),
              ),
            ),
          ),
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 6 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    ]));
  }
}
