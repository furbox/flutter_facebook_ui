import 'package:fb/icons/custom_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widgets/circle_button.dart';
import 'widgets/quick_actions.dart';
import 'widgets/what_is_on_your_mind.dart';

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
            showBadge: true,
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
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ).copyWith(top: 20),
        children: const [
          WhatIsOnYourMind(),
          SizedBox(
            height: 30,
          ),
          QuickActions(),
        ],
      ),
    );
  }
}
