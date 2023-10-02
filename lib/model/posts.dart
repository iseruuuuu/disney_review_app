class Posts {
  Posts({
    required this.userId,
    required this.id,
    required this.attractionName,
    required this.content,
    required this.rank,
    required this.heart,
    required this.createdTime,
    required this.isSpoiler,
  });

  final String userId;
  final String id;
  final String attractionName;
  final String content;
  final double rank;
  final int heart;
  final DateTime createdTime;
  final bool isSpoiler;

  Posts fromJson({
    required Map<String, dynamic> map,
    required String id,
  }) {
    return Posts(
      userId: map['user_id'],
      id: id,
      attractionName: map['attraction_name'],
      content: map['content'],
      rank: map['rank'],
      heart: map['heart'],
      createdTime: map['created_time'],
      isSpoiler: map['is_spoiler'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'user_id': userId,
      'id': id,
      'attraction_name': attractionName,
      'content': content,
      'rank': rank,
      'heart': heart,
      'created_time': createdTime.toIso8601String(),
      'is_spoiler': isSpoiler,
    };
  }
}
