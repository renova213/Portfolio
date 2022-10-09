class EmailModel {
  final String email;
  final String message;
  final String name;

  EmailModel({required this.email, required this.message, required this.name});

  factory EmailModel.fromJson(Map<String, dynamic> json) => EmailModel(
      message: json['message'], email: json['email'], name: json['name']);

  Map<String, dynamic> toJson() =>
      {"message": message, "email": email, "name": name};
}
