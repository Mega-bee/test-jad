import 'package:flutter/material.dart';
import 'package:sentinel/NavigationBar/MainNavigationBar.dart';

import '../Screen/LoginPage.dart';
class LoginButton extends StatefulWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  get formKey => LoginPage();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width * 0.8,
      child: ElevatedButton(
        onPressed: () {
          // final form=formKey.currentState!;
          // if(form.validate()){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const MainNavigationBar();
                },
              ),
            );
          },
        // },
        child: const Text(
          "LOG IN",
          style: TextStyle(color: Colors.white),
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                const Color(0xFFB71C1C)),
            alignment: Alignment.center,
            shape: MaterialStateProperty.all<
                RoundedRectangleBorder>(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
              side: const BorderSide(color: Colors.red),
            ))),
      ),
    )
    ;
  }
}
