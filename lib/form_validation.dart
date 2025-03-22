import 'package:fancy_popups_new/fancy_popups_new.dart';
import 'package:flutter/material.dart';

import 'database/shared_pref.dart';

class FormValidation extends StatefulWidget {
  const FormValidation({super.key});

  @override
  State<FormValidation> createState() => _FormValidationState();
}

class _FormValidationState extends State<FormValidation> {
  TextEditingController emailController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController uNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void success() {
    showDialog(
        context: context,
        builder: (context) {
          return MyFancyPopup(
              heading: "Success ✅",
              body: "Your account created successfully.",
              onClose: () {
                Navigator.pop(context);
              },
              type: Type.success,
              buttonText: "Continue");
        });
  }

  void fail() {
    showDialog(
        context: context,
        builder: (context) {
          return MyFancyPopup(
              heading: "Error ❌",
              body: "Something went wrong, try again later",
              onClose: () {
                Navigator.pop(context);
              },
              type: Type.success,
              buttonText: "Continue");
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.32),
        child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // username
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "User name required";
                      }
                      if (value.length > 11) {
                        return "Name length must be less than 11";
                      }
                      return null;
                    },
                    controller: uNameController,
                    autocorrect: true,
                    cursorColor: Colors.blue,
                    cursorErrorColor: Colors.red,
                    mouseCursor: MouseCursor.defer,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      filled: true,
                      hintText: "User name",
                      hintStyle: TextStyle(color: Colors.grey.shade500),
                      fillColor: Colors.grey.shade100,
                      prefixIcon: Icon(
                        Icons.alternate_email_rounded,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(color: Colors.grey.shade100)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(color: Colors.grey.shade100)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(color: Colors.grey.shade100)),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(color: Colors.red)),
                    ),
                  ),
                ),
                // email
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Email required";
                      }
                      if (!value.contains("@gmail.com")) {
                        return "Invalid email address";
                      }
                      return null;
                    },
                    controller: emailController,
                    autocorrect: true,
                    cursorColor: Colors.blue,
                    cursorErrorColor: Colors.red,
                    mouseCursor: MouseCursor.defer,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      hintText: "Email",
                      hintStyle: TextStyle(color: Colors.grey.shade500),
                      fillColor: Colors.grey.shade100,
                      prefixIcon: Icon(
                        Icons.email_rounded,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(color: Colors.grey.shade100)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(color: Colors.grey.shade100)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(color: Colors.grey.shade100)),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(color: Colors.red)),
                    ),
                  ),
                ),
                // password
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Password required";
                      }
                      if (value.length < 8) {
                        return "Password length should be 8 Character";
                      }
                      return null;
                    },
                    controller: passwordController,
                    autocorrect: true,
                    cursorColor: Colors.blue,
                    cursorErrorColor: Colors.red,
                    mouseCursor: MouseCursor.defer,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      hintText: "Email",
                      hintStyle: TextStyle(color: Colors.grey.shade500),
                      fillColor: Colors.grey.shade100,
                      prefixIcon: Icon(
                        Icons.email_rounded,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(color: Colors.grey.shade100)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(color: Colors.grey.shade100)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(color: Colors.grey.shade100)),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(color: Colors.red)),
                    ),
                  ),
                ),
                //age
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Age required";
                      }
                      if (value.length > 5) {
                        return " Age length must less than 5 digits";
                      }
                      return null;
                    },
                    controller: ageController,
                    autocorrect: true,
                    cursorColor: Colors.blue,
                    cursorErrorColor: Colors.red,
                    mouseCursor: MouseCursor.defer,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "18",
                      hintStyle: TextStyle(color: Colors.grey.shade500),
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      prefixIcon: Icon(
                        Icons.person,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(color: Colors.grey.shade100)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(color: Colors.grey.shade100)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(color: Colors.grey.shade100)),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(color: Colors.red)),
                    ),
                  ),
                ),
                // this button perform validation
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () async {
                      if (_formKey.currentState!.validate()) {
                        final storedEmail = await SharedPref().getDB();
                        if (storedEmail == null || storedEmail.isEmpty) {
                          print("Shared Pref created");
                          SharedPref().createDB(
                              emailController.text,
                              passwordController.text,
                              int.parse(ageController.text),
                              uNameController.text);
                          print(SharedPref().getDB());
                        }
                        if (await SharedPref()
                            .emailRegistered(emailController.text)) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("Email Already Registred")));
                          print("Email Already Registred");
                        } else {
                          print("Shared Pref already created");
                        }
                        success();
                      }
                    },
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(2),
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Text(
                        "Create account",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
