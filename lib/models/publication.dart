class Publication {
  final User user;
  final String title;
  final DateTime createAt;
  final String imageUrl;
  final int commentsCount;
  final int sharesCount;
  final Reaction currentUserReaction;

  Publication({
    required this.user,
    required this.title,
    required this.createAt,
    required this.imageUrl,
    required this.commentsCount,
    required this.sharesCount,
    required this.currentUserReaction,
  });
}

class User {
  final String avatar;
  final String username;

  User({
    required this.avatar,
    required this.username,
  });
}

enum Reaction {
  like,
  love,
  laughing,
  sad,
  shocking,
  angry,
}
