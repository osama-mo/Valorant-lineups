import 'package:flutter/material.dart';
import 'package:valolineups/screens/agentsScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Valorant Lineups"),
      // ),
      // backgroundColor: Colors.black54,
      body: Stack(children: <Widget>[
        Container(
          child: Image.asset(
            'assets/images/homeScreen_background.jpg',
            fit: BoxFit.fill,
          ),
          height: 2000,
          width: 2000,
        ),
        Center(
          child: Column(children: <Widget>[
            SizedBox(
              height: 200,
            ),
            Stack(children: [
              Text(
                "Valorant lineups!",
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
                "Valorant lineups!",
                style: TextStyle(fontSize: 40, color: Colors.redAccent
                    // style: TextStyle(color: Colors.white),
                    ),
              )
            ]),
            SizedBox(
              height: 100,
            ),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AgentsScreen.routeName);
                },
                child: Text(
                  "Select Your agent",
                  style: TextStyle(
                      fontSize: 19,
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      shadows: [
                        Shadow(
                            color: Colors.black,
                            offset: Offset.zero,
                            blurRadius: 20)
                      ]),
                ),
                
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed))
                        return Colors.redAccent.withOpacity(0.9);
                      return Colors.redAccent; // Use the component's default.
                    },
                  ),
                ),
              ),
            )
          ]),
        ),
      ]),
    );
  }
}
