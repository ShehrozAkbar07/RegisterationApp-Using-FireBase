import 'package:bilalbhaias2/listview.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
            const Text("Let's Sign you in",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                )),
            const SizedBox(height: 20),
            const Text("Welcome back",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                )),
            const Text("you've been missed!",
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
              child: form("Password"),
            ),
            const SizedBox(height: 140),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  "Register.",
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
                            builder: (context) => (const ListSee())),
                      );
                    },
                    child: const Text(
                      "Sign In",
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

Widget form(name) {
  return TextField(
      decoration: InputDecoration(
    hintText: name,
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
