import 'package:fancy_popups_new/fancy_popups_new.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:lottie/lottie.dart';

class LottieAnimation extends StatefulWidget {
  const LottieAnimation({super.key});

  @override
  State<LottieAnimation> createState() => _LottieAnimationState();
}

class _LottieAnimationState extends State<LottieAnimation> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Lottie.asset("assets/images/5.json",
                      height: 300, fit: BoxFit.cover),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: TextFormField(
                      validator: MultiValidator([
                        EmailValidator(errorText: "Enter Valid Email Address"),
                        RequiredValidator(errorText: "Email Required"),
                      ]).call,
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          focusedBorder:  OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                              BorderSide(color: Colors.grey.shade50)),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.grey.shade50)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.grey.shade50)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.grey.shade300)),
                          prefixIcon:
                              const Icon(Icons.alternate_email_outlined),
                          hintText: "Email",
                          filled: true,
                          fillColor: Colors.grey.shade200),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: TextFormField(
                      obscureText: true,
                      validator: MultiValidator([
                        MaxLengthValidator(16,
                            errorText: "Password length less than 16 digits"),
                        RequiredValidator(errorText: "Password Required"),
                      ]).call,
                      controller: passwordController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.visibility_off),
                          focusedBorder:  OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                              BorderSide(color: Colors.grey.shade50)),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.grey.shade50)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.grey.shade50)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.grey.shade300)),
                          prefixIcon: const Icon(Icons.lock_rounded),
                          hintText: "Password",
                          filled: true,
                          fillColor: Colors.grey.shade200),
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return MyFancyPopup(
                                    bodyStyle: TextStyle(
                                        fontFamily: "Poppins",
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.bold),
                                    heading: "Congratulation .. !",
                                    body:
                                        "Uploading completed! Your file uploaded successfully.",
                                    onClose: () {
                                      Navigator.pop(context);
                                    },
                                    type: Type.success,
                                    buttonColor: Colors.orangeAccent,
                                    buttonText: "Continue");
                              });
                        }
                      },
                      child: Container(
                          height: 55,
                          width: 200,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 18),
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(100)),
                          child: Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Poppins",
                                letterSpacing: 1,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 1,
                        alignment: Alignment.center,
                        color: Colors.grey,
                        width: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("or login with"),
                      ),
                      Container(
                        height: 1,
                        alignment: Alignment.center,
                        color: Colors.grey,
                        width: 80,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(10),
                        child: FaIcon(
                          FontAwesomeIcons.facebook,
                          size: 30,
                          color: Colors.blue,
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(10),
                        child: FaIcon(
                          FontAwesomeIcons.instagram,
                          size: 30,
                          color: Colors.deepOrange,
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(10),
                        child: FaIcon(
                          FontAwesomeIcons.pinterest,
                          size: 30,
                          color: Colors.red,
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(10),
                        child: FaIcon(
                          FontAwesomeIcons.twitter,
                          size: 30,
                          color: Colors.blue,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
