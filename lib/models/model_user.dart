class UserModel {
  String? accessToken;
  String? tokenType;
  String? expiresAt;
  Users? users;
  String? subfunc;
  String? posname;

  UserModel(
      {this.accessToken,
      this.tokenType,
      this.expiresAt,
      this.users,
      this.subfunc,
      this.posname});

  UserModel.fromJson(Map<String, dynamic> json) {
    accessToken = json['access_token'];
    tokenType = json['token_type'];
    expiresAt = json['expires_at'];
    users = json['users'] != null ? Users.fromJson(json['users']) : null;
    subfunc = json['subfunc'];
    posname = json['posname'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['access_token'] = accessToken;
    data['token_type'] = tokenType;
    data['expires_at'] = expiresAt;
    if (users != null) {
      data['users'] = users!.toJson();
    }
    data['subfunc'] = subfunc;
    data['posname'] = posname;
    return data;
  }
}

class Users {
  String? guid;
  String? domain;
  String? name;
  String? username;
  String? email;
  String? updatedAt;
  String? createdAt;
  int? id;

  Users(
      {this.guid,
      this.domain,
      this.name,
      this.username,
      this.email,
      this.updatedAt,
      this.createdAt,
      this.id});

  Users.fromJson(Map<String, dynamic> json) {
    guid = json['guid'];
    domain = json['domain'];
    name = json['name'];
    username = json['username'];
    email = json['email'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['guid'] = guid;
    data['domain'] = domain;
    data['name'] = name;
    data['username'] = username;
    data['email'] = email;
    data['updated_at'] = updatedAt;
    data['created_at'] = createdAt;
    data['id'] = id;
    return data;
  }
}
