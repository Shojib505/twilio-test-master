import 'package:flutter/material.dart';
import 'package:chatroom_twilio/room/join_room_page.dart';

void main() {
  runApp(TwilioProgrammableVideoExample());
}
/*
account sid
AC41876bd1d0f599409e0987e682adf6f0
SID:_
SKa447474b0ceb009695a47462779094cd
secret:
6E6SPu87b6iO74Hy09UXQdk6FLjXv2nZ
* */

class TwilioProgrammableVideoExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: JoinRoomPage(),
    );
  }
}
