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
    final width = MediaQuery.of(context).size.width;

    return Container(
      color: secondColor,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: ResponsiveLayout(
          mobile: _body(width: width * 0.75, context: context),
          tablet: _body(width: width * 0.6, context: context),
          desktop: _body(width: width * 0.5, context: context),
        ),
      ),
    );
  }

  Padding _body({required double width, required context}) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: SizedBox(
        width: width,
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
            ResponsiveLayout(
              mobile: _formFieldMobile(width: width * 1),
              tablet: _formField(width: width * 0.46),
              desktop: _formField(width: width * 0.46),
            ),
            const SizedBox(height: 16),
            _sendbutton(),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  Column _formField({required double width}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: width,
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
              width: width,
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

  Column _formFieldMobile({required double width}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: width,
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
        const SizedBox(height: 16),
        SizedBox(
          width: width,
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
      width: MediaQuery.of(context).size.width * 1,
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
