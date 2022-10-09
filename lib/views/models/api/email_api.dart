import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:portfolio/views/models/email_model.dart';

class EmailApi {
  Future<void> sendReport({required EmailModel message}) async {
    try {
      await http.post(
        Uri.parse("https://api.emailjs.com/api/v1.0/email/send"),
        headers: {
          'origin': 'http://localhost',
          'Content-Type': 'application/json',
        },
        body: jsonEncode(
          {
            'service_id': 'service_a29re6a',
            'template_id': 'template_3ox2lco',
            'user_id': 'X7q8O0RPBcKptSUNi',
            'template_params': message
          },
        ),
      );
    } on Exception catch (_) {
      throw Exception("Failed Post");
    }
  }
}
