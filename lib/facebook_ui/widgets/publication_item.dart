import 'package:cached_network_image/cached_network_image.dart';
import 'package:fb/facebook_ui/widgets/avatar.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../../models/publication.dart';

class PublicationItem extends StatelessWidget {
  const PublicationItem({
    Key? key,
    required this.publication,
  }) : super(key: key);
  final Publication publication;

  @override
  Widget build(BuildContext context) {
    const padding = EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 10,
    );
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: padding,
            child: Row(
              children: [
                const Avatar(
                  size: 38,
                  asset: 'assets/users/1.jpg',
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(publication.user.username),
                const Spacer(),
                Text(timeago.format(publication.createAt))
              ],
            ),
          ),
          CachedNetworkImage(
            imageUrl: publication.imageUrl,
            height: 180,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: padding.copyWith(top: 15),
            child: Text(publication.title),
          )
        ],
      ),
    );
  }
}
