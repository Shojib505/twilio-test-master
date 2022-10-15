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
*/

class TwilioProgrammableVideoExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: JoinRoomPage(),
    );
  }
}


/**
    --00 step --
    NOW the problem i am getting to make compatible this app with android 11
    by changing build.gradle sdk to 33 and
    permission handler in pubspec.yaml
    it's quadrature latest version of   permission_handler: ^10.....
    but  twilio_programmable_video 1.0.0 depends on permission_handler ^9.2.0
    it's doesn't support 10....


    --1st step --
test this app at home with nokia and SAMSUNG phone multiple time
by changing user name from join_room_cubit.dart file where identity set
'static'

--2nd step --
after that if it's work then => write down the remaining thing that have to be done

--3rd step --
if not
try to understatnd
    TODO: twilioRoomTokenResponse['user'] getting null because response body dose not have 'user' key
        /// TODO: room name static ali set to continue project change it letter to make it dynamic
        print('user  --------- ' + twilioRoomTokenResponse['user'].toString());
        identity = 'static';

        for 1 hours

--4th step --
 if still can't then
    arrange every thing put it one one side
    and write the problem you fall into here
    --
    --
    --
    --
    --
    --
    --
**/