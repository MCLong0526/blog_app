class User {
  int? id;
  String? name;
  String? email;
  String? image;
  String? token;

  User({this.id, this.name, this.email, this.image, this.token});

  // function to convert json to user object
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['user']['id'],
        name: json['user']['name'],
        email: json['user']['email'],
        image: json['user']['image'],
        token: json['token']);
  }

  // Overriding the toString() method for better logging
  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, image: $image, token: $token)';
  }
}
