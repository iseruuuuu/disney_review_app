class Users {
  Users({
    required this.id,
    required this.name,
    required this.userName,
    required this.imagePath,
    required this.isOfficial,
    required this.createdTime,
    required this.updateTime,
    this.selfIntroduction,
    this.instagram,
    this.twitter,
  });

  String id;
  String name;
  String userName;
  String imagePath;
  DateTime createdTime;
  DateTime updateTime;
  bool isOfficial;
  String? selfIntroduction;
  String? instagram;
  String? twitter;

  Users fromJson({
    required Map<String, dynamic> map,
    required String id,
  }) {
    return Users(
      id: id,
      name: map['name'],
      userName: map['user_name'],
      imagePath: map['image_path'],
      createdTime: map['created_time'],
      updateTime: map['updated_time'],
      isOfficial: map['is_official'],
      selfIntroduction: map['selfIntroduction'],
      instagram: map['instagram'],
      twitter: map['twitter'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'userName': userName,
      'imagePath': imagePath,
      'createdTime': createdTime.toIso8601String(),
      'updateTime': updateTime.toIso8601String(),
      'isOfficial': isOfficial,
      'selfIntroduction': selfIntroduction,
      'instagram': instagram,
      'twitter': twitter,
    };
  }
}
