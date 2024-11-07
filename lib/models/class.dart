class UserProfile {
  String gender;
  String firstName;
  String lastName;
  String email;
  String phone;
  String picture;

  UserProfile({
    required this.gender,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.picture,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) {
    return UserProfile(
      gender: json['gender'],
      firstName: json['name']['first'],
      lastName: json['name']['last'],
      email: json['email'],
      phone: json['phone'],
      picture: json['picture']['large'],
    );
  }
}
