// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ModelUser {
  String userId;
  String userName;
  String email;
  int points;
  int level;
  DateTime date;
  String avatar;
  ModelUser({
    required this.userId,
    required this.userName,
    required this.email,
    required this.points,
    required this.level,
    required this.date,
    required this.avatar,
  });

  ModelUser copyWith({
    String? userId,
    String? userName,
    String? email,
    int? points,
    int? level,
    DateTime? date,
    String? avatar,
  }) {
    return ModelUser(
      userId: userId ?? this.userId,
      userName: userName ?? this.userName,
      email: email ?? this.email,
      points: points ?? this.points,
      level: level ?? this.level,
      date: date ?? this.date,
      avatar: avatar ?? this.avatar,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userId': userId,
      'userName': userName,
      'email': email,
      'points': points,
      'level': level,
      'date': date.millisecondsSinceEpoch,
      'avatar': avatar,
    };
  }

  factory ModelUser.fromMap(Map<String, dynamic> map) {
    return ModelUser(
      userId: map['userId'] as String,
      userName: map['userName'] as String,
      email: map['email'] as String,
      points: map['points'] as int,
      level: map['level'] as int,
      date: DateTime.fromMillisecondsSinceEpoch(map['date'] as int),
      avatar: map['avatar'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ModelUser.fromJson(String source) => ModelUser.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ModelUser(userId: $userId, userName: $userName, email: $email, points: $points, level: $level, date: $date, avatar: $avatar)';
  }

  @override
  bool operator ==(covariant ModelUser other) {
    if (identical(this, other)) return true;
  
    return 
      other.userId == userId &&
      other.userName == userName &&
      other.email == email &&
      other.points == points &&
      other.level == level &&
      other.date == date &&
      other.avatar == avatar;
  }

  @override
  int get hashCode {
    return userId.hashCode ^
      userName.hashCode ^
      email.hashCode ^
      points.hashCode ^
      level.hashCode ^
      date.hashCode ^
      avatar.hashCode;
  }
}
