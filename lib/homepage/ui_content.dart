import 'package:flutter/material.dart';

class ColumnMan extends StatelessWidget {
  const ColumnMan({
    Key? key,
    required this.techbranch,
    required this.imageurl,
    required this.branch1,
    required this.branch2,
    required this.branch3,
    required this.firstonprss,
    required this.secondprss,
    required this.thirdprss,
  }) : super(key: key);

  final String techbranch;
  final String imageurl;
  final String branch1;
  final String branch2;
  final String branch3;
  final void Function() firstonprss;
  final void Function() secondprss;
  final void Function() thirdprss;

  @override
  Widget build(BuildContext context) {
    final double screenwidth = MediaQuery.of(context).size.width;
    return Material(
      elevation: 20,
      child: SizedBox(
        width: screenwidth / 2.5,
        // height: MediaQuery.of(context).size.height / 2,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0, bottom: 15),
              child: Text(
                techbranch,
                style: const TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w900,
                    fontSize: 17),
              ),
            ),
            SizedBox(
              height: 100,
              width: 150,
              child: Image.asset(
                imageurl,
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(0),
              ),
              onPressed: firstonprss,
              // debugPrint(screenwidth.toString());

              child: rowman(ppg: branch1, screenwidth: screenwidth),
            ),
            const SizedBox(
              height: 10,
              width: 150,
              child: Divider(
                color: Colors.black,
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(0),
              ),
              onPressed: secondprss,
              child: rowman(ppg: branch2, screenwidth: screenwidth),
            ),
            const SizedBox(
              height: 10,
              width: 150,
              child: Divider(
                color: Colors.black,
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(0),
              ),
              onPressed: thirdprss,
              child: rowman(
                ppg: branch3,
                screenwidth: screenwidth,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget rowman({required String ppg, required double screenwidth}) {
  return SizedBox(
    width: 150,
    height: 50,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Icon(Icons.arrow_forward),
        // const SizedBox(width: 20),
        SizedBox(
          width: 120,
          // color: Colors.cyan,
          child: Text(
            ppg,
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
          ),
        ),
      ],
    ),
  );
}
