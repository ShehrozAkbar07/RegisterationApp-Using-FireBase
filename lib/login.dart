import 'package:bilalbhaias2/Signup.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff191820),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(padding: EdgeInsets.all(35)),
            const Text("Let's sign you up",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                )),
            const SizedBox(height: 20),
            const Text("Welcome",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                )),
            const Text("Join the community!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                )),
            const SizedBox(height: 90),
            Container(
              padding: EdgeInsets.only(right: 20),
              child: form("Email Address"),
            ),
            const SizedBox(height: 30),
            Container(
              padding: EdgeInsets.only(right: 20),
              child: form("Username"),
            ),
            const SizedBox(height: 30),
            Container(
              padding: EdgeInsets.only(right: 20),
              child: form("Password"),
            ),
            const SizedBox(height: 140),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Already have an account?",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  "Signin.",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(right: 20),
              child: SizedBox(
                width: 350,
                height: 65,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUp(),
                          ));
                    },
                    child: const Text(
                      "Signup",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget form(String name2) {
  return TextField(
      decoration: InputDecoration(
    hintText: name2,
    hintStyle: const TextStyle(color: Color.fromARGB(255, 114, 106, 106)),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(width: 2, color: Colors.grey),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey, width: 2),
    ),
  ));
}
