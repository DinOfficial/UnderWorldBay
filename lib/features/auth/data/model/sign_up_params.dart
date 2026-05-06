class SignUpParams {
  final String firsName;
  final String lastName;
  final String email;
  final String password;
  final String phone;
  final String city;

  SignUpParams({
    required this.firsName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.phone,
    required this.city,
  });

  Map<String, dynamic> toJson() {
    return {
      "first_name": firsName,
      "last_name": lastName,
      "email": email,
      "password": password,
      "phone": phone,
      "city": city,
    };
  }
}
