import 'package:fancy_popups_new/fancy_popups_new.dart';
import 'package:flutter/material.dart';

class FormValidation extends StatefulWidget {
  const FormValidation({super.key});

  @override
  State<FormValidation> createState() => _FormValidationState();
}

class _FormValidationState extends State<FormValidation> {
  TextEditingController emailController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController uNameController = TextEditingController();
  TextEditingController cPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool valueIs1 = false;
  bool valueIs2= false;
  bool valueIs3 = false;
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
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text("Reading"),
                    ),
                    Checkbox(
                        value: valueIs1,
                        onChanged: (newValue) {
                          setState(() {
                            valueIs1 = !valueIs1;
                          });
                        }),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text("Walking"),
                    ),
                    Checkbox(
                        value: valueIs2,
                        onChanged: (newValue) {
                          setState(() {
                            valueIs2 = !valueIs2;
                          });
                        }),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text("Sleeping"),
                    ),
                    Checkbox(
                        value: valueIs3,
                        onChanged: (newValue) {
                          setState(() {
                            valueIs3 = !valueIs3;
                          });
                        })
                  ],
                ),

                // this button perform validation
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
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
