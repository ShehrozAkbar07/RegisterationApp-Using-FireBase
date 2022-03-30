import 'package:bilalbhaias2/addjiob.dart';
import 'package:flutter/material.dart';

class ListSee extends StatefulWidget {
  const ListSee({Key? key}) : super(key: key);

  @override
  State<ListSee> createState() => _ListSeeState();
}

class _ListSeeState extends State<ListSee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff191820),
      appBar: AppBar(
        backgroundColor: const Color(0xff191820),
        title: Column(
          children: const [
            Text("Welcome",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
            Text("Bilal Bhai",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300))
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 8, right: 8),
        // child: Expanded(
        //   flex: 2,
        child: Column(
          children: [
            ist2(),
            const SizedBox(
              height: 13,
            ),
            ist2(),
            const SizedBox(
              height: 13,
            ),
            ist2(),
            const SizedBox(
              height: 13,
            ),
            ist2(),
            const SizedBox(
              height: 13,
            ),
            ist2(),
            const SizedBox(
              height: 13,
            ),
            ist2(),
            const SizedBox(
              height: 13,
            ),
            ist2(),
            const SizedBox(
              height: 13,
            ),
            ist2(),
            const SizedBox(
              height: 13,
            ),
            ist2(),
            const SizedBox(
              height: 13,
            ),
            ist2(),
            const SizedBox(
              height: 13,
            ),
          ],
        ),
      ),
      floatingActionButton: const AddJobButton(),
    );
  }
}

Widget ist2() {
  return Container(
    alignment: Alignment.center,
    height: 100,
    width: 350,
    decoration: BoxDecoration(
        color: Color.fromARGB(255, 122, 116, 116).withOpacity(0.09),
        borderRadius: BorderRadius.circular(10)),
    child: ListTile(
      dense: true,

      // style: ListTileThemeData(tileColor: Color.fromARGB(33,33, 33, 33)),
      title: const Text(
        "Flutter Developer ",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 21,
        ),
      ),
      subtitle: const Text("Karachi | Pakistan",
          style: TextStyle(
            color: Colors.grey,
          )),
      trailing: Row(mainAxisSize: MainAxisSize.min, children: const [
        Icon(
          Icons.edit,
          color: Colors.grey,
        ),
        Icon(
          Icons.delete,
          color: Colors.red,
        ),
      ]),
    ),
  );
}

class AddJobButton extends StatelessWidget {
  const AddJobButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 74,
      height: 74,
      child: FittedBox(
        child: FloatingActionButton(
          backgroundColor: const Color(0xFFE5E5E5),
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => const AddJob())),
          child: const Icon(
            Icons.add_outlined,
            color: Color(0xFF191720),
          ),
        ),
      ),
    );
  }
}
