class UserModel {
  final int userid;
  final String username;
  final String email;
  final String posid;
  final String posname;

  UserModel(
    this.userid,
    this.username,
    this.email,
    this.posid,
    this.posname,
  );

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      json['userid'] ?? 0,
      json['username'] ?? 'Unknown',
      json['email'] ?? 'Unknown',
      json['posid'] ?? 'Unknown',
      json['posname'] ?? 'Unknown',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userid': userid,
      'username': username,
      'email': email,
      'posid': posid,
      'posname': posname,
    };
  }
}
