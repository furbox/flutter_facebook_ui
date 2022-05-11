import 'circle_button.dart';
import '../../icons/custom_icons.dart';
import 'package:flutter/material.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Row(
          children: const [
            _QuickButton(
              iconData: CustomIcons.photos,
              color: Color(0xffAEE2A4),
              text: 'Gallery',
            ),
            SizedBox(
              width: 10,
            ),
            _QuickButton(
              iconData: CustomIcons.user_friends,
              color: Color(0xff2880D4),
              text: 'Tag Friends',
            ),
            SizedBox(
              width: 10,
            ),
            _QuickButton(
              iconData: CustomIcons.video_camera,
              color: Color(0xffFB7171),
              text: 'Live',
            ),
          ],
        ),
      ),
    );
  }
}

class _QuickButton extends StatelessWidget {
  const _QuickButton({
    Key? key,
    required this.iconData,
    required this.color,
    required this.text,
  }) : super(key: key);

  final IconData iconData;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 25),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleButton(
            color: color.withOpacity(0.6),
            iconData: iconData,
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            "Galery",
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
