class IUser {
  String name = "";
  String picture = "";
  String email = "";
  String token = "";

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['picture'] = this.picture;
    data['token'] = this.token;
    return data;
  }

  IUser fromJson(Map<String, dynamic> json) {
    user.name = json["name"];
    user.email = json["email"];
    user.picture = json["picture"];
    user.token = json["token"];
    return user;
  }
}

IUser user = new IUser();
