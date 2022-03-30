import 'package:flutter/material.dart';

class AddJob extends StatefulWidget {
  const AddJob({Key? key}) : super(key: key);

  @override
  State<AddJob> createState() => _AddJobState();
}

class _AddJobState extends State<AddJob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff191820),
        appBar: AppBar(
          backgroundColor: const Color(0xff191820),
          title: const Text(
            "Add a New Job",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  hintText: "Enter Job Position",
                  hintStyle: const TextStyle(
                      color: Color.fromARGB(255, 114, 106, 106)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:
                          const BorderSide(width: 2, color: Colors.grey)),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              TextField(
                maxLines: 18,
                decoration: InputDecoration(
                  hintText: "Enter Job Details",
                  hintStyle: const TextStyle(
                      color: Color.fromARGB(255, 114, 106, 106)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide:
                          const BorderSide(width: 2, color: Colors.grey)),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              SizedBox(
                width: 350,
                height: 60,
                child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Submit Job",
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
            ],
          ),
        ));
  }
}
