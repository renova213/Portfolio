import 'package:flutter/material.dart';
import 'package:portfolio/common/constants.dart';
import 'package:portfolio/views/responsive_layout.dart';

class ContactMe extends StatefulWidget {
  const ContactMe({super.key});

  @override
  State<ContactMe> createState() => _ContactMeState();
}

class _ContactMeState extends State<ContactMe> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  String _name = '';
  String _email = '';
  String _message = '';

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _emailController.dispose();
    _messageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondColor,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: _desktopBody(context),
      ),
    );
  }

  Padding _desktopBody(context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: SizedBox(
        width: ResponsiveLayout.isDesktop(context)
            ? MediaQuery.of(context).size.width * 0.5
            : MediaQuery.of(context).size.width * 0.6,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Interested to work together?",
              style: headline6.copyWith(color: Colors.white),
            ),
            Text(
              "Let's talk",
              style: headline6.copyWith(
                color: Colors.white,
                decoration: TextDecoration.underline,
                decorationColor: Colors.white,
                decorationThickness: 4,
              ),
            ),
            const SizedBox(height: 16),
            _formField(),
            const SizedBox(height: 16),
            _sendbutton(),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  Column _formField() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: ResponsiveLayout.isDesktop(context)
                  ? MediaQuery.of(context).size.width * 0.24
                  : MediaQuery.of(context).size.width * 0.28,
              height: 50,
              child: TextField(
                onChanged: (value) => setState(() => _name = value),
                controller: _nameController,
                textInputAction: TextInputAction.next,
                style: bodyText2.copyWith(color: Colors.white),
                decoration: InputDecoration(
                  hintStyle: bodyText2.copyWith(color: Colors.white),
                  hintText: "Your Name",
                  fillColor: Colors.redAccent.withOpacity(0.2),
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16),
            SizedBox(
              width: ResponsiveLayout.isDesktop(context)
                  ? MediaQuery.of(context).size.width * 0.24
                  : MediaQuery.of(context).size.width * 0.28,
              height: 50,
              child: TextField(
                onChanged: (value) => setState(() => _email = value),
                controller: _emailController,
                textInputAction: TextInputAction.next,
                style: bodyText2.copyWith(color: Colors.white),
                decoration: InputDecoration(
                  hintStyle: bodyText2.copyWith(color: Colors.white),
                  hintText: "Your E-Mail",
                  fillColor: Colors.redAccent.withOpacity(0.2),
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        TextField(
          onChanged: (value) => setState(() => _message = value),
          textInputAction: TextInputAction.next,
          maxLines: 10,
          style: bodyText2.copyWith(color: Colors.white),
          controller: _messageController,
          decoration: InputDecoration(
            hintStyle: bodyText2.copyWith(color: Colors.white),
            hintText: "Your Message Here ...",
            fillColor: Colors.redAccent.withOpacity(0.2),
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ],
    );
  }

  SizedBox _sendbutton() {
    return SizedBox(
      width: ResponsiveLayout.isDesktop(context)
          ? MediaQuery.of(context).size.width * 0.5
          : MediaQuery.of(context).size.width * 0.6,
      height: 50,
      child: _name.isEmpty || _email.isEmpty || _message.isEmpty
          ? ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(
                  Colors.redAccent.withOpacity(0.2),
                ),
                shape: MaterialStatePropertyAll<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              onPressed: null,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Send",
                    style: bodyText2.copyWith(color: Colors.white),
                  ),
                  const SizedBox(width: 8),
                  const Icon(Icons.send, size: 20),
                ],
              ),
            )
          : ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(
                  Colors.redAccent.withOpacity(0.2),
                ),
                shape: MaterialStatePropertyAll<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              onPressed: () {
                if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                    .hasMatch(_emailController.text)) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      duration: const Duration(milliseconds: 700),
                      content: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text(
                          "Email Tidak Valid",
                          style: bodyText1.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      duration: const Duration(milliseconds: 700),
                      content: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text(
                          "Berhasil Mengirim Pesan",
                          style: bodyText1.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  );
                  setState(() {
                    _nameController.clear();
                    _messageController.clear();
                    _emailController.clear();
                    _name = '';
                    _message = '';
                    _email = '';
                  });
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Send",
                    style: bodyText2.copyWith(color: Colors.white),
                  ),
                  const SizedBox(width: 8),
                  const Icon(Icons.send, size: 20),
                ],
              ),
            ),
    );
  }
}
