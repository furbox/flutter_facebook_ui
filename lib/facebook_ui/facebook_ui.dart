import 'package:fb/facebook_ui/widgets/publication_item.dart';
import 'package:fb/icons/custom_icons.dart';
import 'package:fb/models/publication.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:faker/faker.dart';

import 'widgets/circle_button.dart';
import 'widgets/quick_actions.dart';
import 'widgets/what_is_on_your_mind.dart';
import 'widgets/stories.dart';

class FacebookUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final faker = Faker();
    final publications = <Publication>[];
    for (int i = 0; i < 50; i++) {
      final publication = Publication(
        user: User(
          avatar: faker.image.image(),
          username: faker.person.name(),
        ),
        title: faker.lorem.sentence(),
        createAt: faker.date.dateTime(),
        imageUrl: faker.image.image(),
        commentsCount: faker.randomGenerator.integer(50000),
        sharesCount: faker.randomGenerator.integer(50000),
        currentUserReaction: Reaction.values[faker.randomGenerator.integer(
          Reaction.values.length - 1,
        )],
      );
      publications.add(publication);
    }
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
        children: [
          const SizedBox(height: 10),
          const WhatIsOnYourMind(),
          const SizedBox(height: 30),
          const QuickActions(),
          const SizedBox(height: 30),
          const Stories(),
          const SizedBox(height: 20),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (_, index) => PublicationItem(
              publication: publications[index],
            ),
            itemCount: publications.length,
          )
        ],
      ),
    );
  }
}
