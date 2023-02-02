class UserDetails {
  final String? id;
  final String fullname;
  final String email;
  final String phoneNo;
  final String password;

  const UserDetails({
    this.id,
    required this.fullname,
    required this.email,
    required this.password,
    required this.phoneNo,
  });

  toJson() {
    return {
      "Fullname": fullname,
      "Email": email,
      "Phone": phoneNo,
      "Password": password,
    };
  }
}
