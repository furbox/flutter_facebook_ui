import 'package:fb/facebook_ui/widgets/circle_button.dart';
import 'package:fb/icons/custom_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FacebookUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 150,
        leading: SvgPicture.asset(
          'assets/images/facebook.svg',
          color: Colors.blueAccent,
          width: 150,
        ),
        actions: const [
          CircleButton(
            color: Colors.grey,
            iconData: CustomIcons.search,
          ),
          SizedBox(
            width: 5,
          ),
          CircleButton(
            color: Colors.orangeAccent,
            iconData: CustomIcons.bell,
          ),
          SizedBox(
            width: 5,
          ),
          CircleButton(
            color: Colors.lightBlue,
            iconData: CustomIcons.user_friends,
          ),
          SizedBox(
            width: 5,
          ),
          CircleButton(
            color: Colors.blueAccent,
            iconData: CustomIcons.messenger,
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }
}
