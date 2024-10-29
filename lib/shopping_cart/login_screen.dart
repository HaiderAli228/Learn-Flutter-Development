import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'ProviderClass.dart';
import 'home_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isLogin = true;
  Future<void> setData() async {
    final sp = await SharedPreferences.getInstance();
    sp.setString("email", emailController.text.toString());
    sp.setString("password", passwordController.text.toString());
  }

  @override
  Widget build(BuildContext context) {
    final objectOfProvider = Provider.of<ProviderClass>(context, listen: false);
    debugPrint("Rebuild Widget Again");
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/h.jpg"), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.white.withOpacity(0),
        body: Center(
          child: SingleChildScrollView(
            child: SafeArea(
                child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                    child: TextFormField(
                      validator: MultiValidator([
                        EmailValidator(errorText: "Enter Valid Email Address"),
                        RequiredValidator(errorText: "Email is Required"),
                      ]).call,
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon:
                              const Icon(Icons.alternate_email_outlined),
                          hintText: "example@gmail.com",
                          filled: true,
                          fillColor: Colors.grey.shade50),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                    child: Consumer<ProviderClass>(
                      builder: (context, value, child) {
                        return TextFormField(
                          validator: MultiValidator([
                            RequiredValidator(errorText: "Email is Required"),
                            MaxLengthValidator(16,
                                errorText: "password should be less then 16"),
                            MinLengthValidator(4,
                                errorText: "password should be grater then 4")
                          ]).call,
                          controller: passwordController,
                          obscureText: objectOfProvider.isLogin,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              prefixIcon: const Icon(Icons.lock_outlined),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  value.login();
                                },
                                icon: objectOfProvider.isLogin
                                    ? const Icon(Icons.visibility_off)
                                    : const Icon(Icons.visibility),
                              ),
                              filled: true,
                              fillColor: Colors.grey.shade50),
                        );
                      },
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        setState(() {
                          isLogin = false;
                        });
                        setData().then(
                          (value) {
                            setState(() {
                              isLogin = true;
                            });
                          },
                        ).onError(
                          (error, stackTrace) {
                            setState(() {
                              isLogin = true;
                            });
                          },
                        );
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MyHomePage(),
                            ));
                      }
                    },
                    child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10)),
                        child: isLogin
                            ? const Text(
                                "LOGIN",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            : const Center(
                                child: CircularProgressIndicator(
                                  color: Colors.white,
                                ),
                              )),
                  ),
                ],
              ),
            )),
          ),
        ),
      ),
    );
  }
}
