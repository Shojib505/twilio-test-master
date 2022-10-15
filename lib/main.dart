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

    tried to edit the main permission_handler ^9.2.0 library file

    https://jtuto.com/solved-android-13-sdk-33-packagemanager-getpackageinfostring-int-deprecated-what-is-the-alternative/

    https://developer.android.com/reference/android/content/pm/PackageManager#queryIntentActivities(android.content.Intent,%20android.content.pm.PackageManager.ResolveInfoFlags)

    https://developer.android.com/reference/android/content/pm/PackageManager#queryIntentActivities(android.content.Intent,%20int)

    https://stackoverflow.com/questions/73666471/how-to-solve-queryintentactivities-deprecated-in-api-33/73666551

    https://stackoverflow.com/questions/73890532/flutter-app-suddenly-ran-into-error-deprecation-queryintentactivitiesintent-i

    https://www.google.com/search?q=PackageManager+has+been+deprecated+++++++++++++List%3CResolveInfo%3E+callAppsList+%3D+pm.queryIntentActivities%28callIntent%2C+0%29%3B&biw=1920&bih=969&ei=_blKY6ySCvPv4-EPlLyMmAk&ved=0ahUKEwjshN3jr-L6AhXz9zgGHRQeA5MQ4dUDCA4&uact=5&oq=PackageManager+has+been+deprecated+++++++++++++List%3CResolveInfo%3E+callAppsList+%3D+pm.queryIntentActivities%28callIntent%2C+0%29%3B&gs_lcp=Cgdnd3Mtd2l6EANKBAhBGABKBQhAEgExSgQIRhgAUABYAGDnAmgAcAF4AIABAIgBAJIBAJgBAKABAqABAcABAQ&sclient=gws-wiz

    https://www.google.com/search?q=Because+twilio+programmable+video+1.0.0+depends+on+permission_handler+%5E9.2.0+and+no+versions+of+twilio_programmable_video+match+%3E1.0.0+%3C2.0.0,+twilio_programmable_video+%5E1.0.0+requires+permission_handler+%5E9.2.0.+So,+because+chatroom_twilio+depends+on+both+twilio_programmable_video+%5E1.0.0+and+permission_handler+%5E10.1.0,+version+solving+failed.+pub+get+failed+(1;+So,+because+chatroom_twilio+depends+on+both+twilio_programmable_video+%5E1.0.0+and+permission_handler+%5E10.1.0,+version+solving+failed.)&spell=1&sa=X&ved=2ahUKEwjm67nZruL6AhWDwzgGHdPxCYEQBSgAegQIBhAB&biw=1920&bih=969&dpr=1

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