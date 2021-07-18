import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class YtvideoScreen extends StatelessWidget {
  
  static const routeName = "\ytvideoScreen";
  @override
  Widget build(BuildContext context) {
    final ytUrl = ModalRoute.of(context)?.settings.arguments as String;
    YoutubePlayerController _controller =
        YoutubePlayerController(initialVideoId: ytUrl);
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
        Flex(
          direction: Axis.vertical,
          children: [
            Flexible(
              flex: 1,
              child: YoutubePlayerIFrame(
                controller: _controller,
              ),
            ),
            Flexible(
              flex: 1,
              child: Center(
                  child: ButtonTheme(
                minWidth: 50,
                height: 100,
                child: SizedBox(
                  width: 200,
                  height: 100,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: ButtonStyle(
                      
                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed))
                          return Colors.redAccent.withOpacity(0.9);
                        return Colors.redAccent; // Use the component's default.
                      },
                    )),
                    child: Text(
                      "Back",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          shadows: [
                            Shadow(
                                color: Colors.black,
                                offset: Offset.zero,
                                blurRadius: 20)
                          ]),
                    ),
                  ),
                ),
              )),
            )
          ],
        ),
      ],
    ));
  }
}
