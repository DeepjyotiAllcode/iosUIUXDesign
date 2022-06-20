import 'package:flutter/material.dart';
import 'package:flutter_application_2/Ui/design_buttons.dart';
import 'package:flutter_application_2/Ui/design_color.dart';
import 'package:flutter_application_2/Ui/design_text.dart';
import 'package:ionicons/ionicons.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
          child: ListView(
            children: [
              const SizedBox(height: 20), 
              const SizedBox(height: 200),
              const Text(
                'Login',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: email,
                decoration: const InputDecoration(
                  labelText: 'Email ID',
                  filled: true,
                  prefixIcon: Icon(Ionicons.at_outline),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                  ),
                  fillColor: Colors.transparent,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 1),
                  ),
                  contentPadding: EdgeInsets.fromLTRB(12, 3, 6, 3),
                ),
              ),
              const SizedBox(height: 6),
              Builder(builder: (context) {
                // DesignState state = Provider.of<DesignState>(context);
                return TextField(
                  controller: password,
                  focusNode: FocusNode(),
                  decoration: InputDecoration(
                    labelText: 'Password',
                    filled: true,
                    prefixIcon:
                        const Icon(Ionicons.lock_closed_outline, size: 22),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        // state.passwordView = !state.passwordView;
                        // debugPrint(state.passwordView.toString());
                      },
                      icon: Icon(Ionicons.eye_off),
                    ),
                    fillColor: Colors.transparent,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1),
                    ),
                    contentPadding: const EdgeInsets.fromLTRB(12, 3, 6, 3),
                  ),
                  obscureText: true,
                );
              }),
              const SizedBox(height: 2),
              Container(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (context) => const ForgotScreen(),
                    //   ),
                    // );
                  },
                  child: const DesignText(text: "Forgot Password?"),
                ),
              ),
              const SizedBox(height: 2),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(6),
                            bottomRight: Radius.circular(6),
                            topLeft: Radius.circular(6),
                            topRight: Radius.circular(6),
                          ),
                        ),
                        backgroundColor: DesignColor.blueColor,
                      ),
                      child: const DesignText(text: 'Login'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 14),
              Row(
                children: const [
                  Expanded(
                    child: Divider(),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: DesignText(text: 'OR'),
                  ),
                  Expanded(
                    child: Divider(),
                  )
                ],
              ),
              const SizedBox(height: 14),
              Row(
                children: [
                  Expanded(
                    child: DesignButton.icon(
                      onPressed: () {},
                      text: "Login with Google",
                      icon: const Icon(
                        Ionicons.logo_google,
                        color: Colors.black,
                      ),
                      elevation: 0,
                      pdBottom: 12,
                      pdLeft: 12,
                      pdRight: 12,
                      pdTop: 12,
                      textcolor: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 14),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const DesignText(text: "New to Logistics?"),
                  TextButton(
                    onPressed: () {},
                    child: const DesignText(
                      text: "Register",
                    ),
                  )
                ],
              ),
              const SizedBox(height: 6),
            ],
          ),
        ),
      ),
    );
  }
}
