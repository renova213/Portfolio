import 'package:flutter/cupertino.dart';
import 'package:portfolio/views/models/api/email_api.dart';
import 'package:portfolio/views/models/email_model.dart';

class EmailProvider extends ChangeNotifier {
  void sendEmail(EmailModel message) {
    EmailApi().sendReport(message: message);
    notifyListeners();
  }
}
