import 'package:flutter/material.dart';
import 'package:sentinel/LoginPage/ui/Widget/CheckBoxField.dart';
import 'package:sentinel/LoginPage/ui/Widget/LoginButton.dart';
import 'package:sentinel/LoginPage/ui/Widget/EmailTextField.dart';
import 'package:sentinel/LoginPage/ui/Widget/PasswordTextField.dart';
import 'package:sentinel/LoginPage/ui/Widget/ForgetPassword.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Form(
        key: formKey,
        child:SingleChildScrollView(
            child: Column(children: [
              Stack(
                children: [
                  SafeArea(
                    child: Image.asset(
                      "assets/images/HomePageImagee.png",
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.45,
                      fit: BoxFit.cover,
                      color: Colors.white.withOpacity(0.1),
                      colorBlendMode: BlendMode.modulate,
                    ),
                  ),
                  Positioned(
                      child: Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.45,
                          color: Colors.transparent,
                          child: Center(
                              child: Column(children: [
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.225),
                            RichText(
                              text: const TextSpan(
                                // Note: Styles for TextSpans must be explicitly defined.
                                // Child text spans will inherit styles from parent
                                style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Welcome To',
                                      style: TextStyle(
                                        color: Colors.black,
                                      )),
                                  TextSpan(
                                      text: ' SENTINEL',
                                      style:
                                          TextStyle(color: Color(0xFFB71C1C))),
                                ],
                              ),
                            ),
                            const Text("Health analytics",
                                style: TextStyle(fontSize: 22))
                          ])))),
                  //     // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                  //     width: 300,
                  //     color: Colors.black54,
                  //     padding: const EdgeInsets.all(10),
                  //     child: const Text(
                  //       'I Like Potatoes And Oranges',
                  //       style: TextStyle(fontSize: 20,
                  //           color: Colors.white,
                  //           ),textAlign: TextAlign.center
                  //     ),
                  //   ),
                  // )
                ],
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 20),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text("Email address",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                            textAlign: TextAlign.left),
                      ],
                    ),
                    EmailTextField( Emailcontroller: emailController,),
                    const SizedBox(height: 20),
                    Row(
                      children: const [
                        Text("Password",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                            textAlign: TextAlign.left),
                      ],
                    ),
                    const PasswordTextField(),
                    const SizedBox(height: 30),
                    Row(
                      children: const [
                        CheckBoxField(),
                        Text("Remember me "),
                        Spacer(),
                        ForgetPassword()
                      ],
                    ),
                    const SizedBox(height: 20),
                    const LoginButton()
                  ],
                ),
              ),
            ]),
          ),
        )
        );
  }
}
