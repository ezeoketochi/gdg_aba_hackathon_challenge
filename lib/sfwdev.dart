import "package:flutter/material.dart";
import 'package:t_newbie/homepage/ui_content.dart';
import 'package:t_newbie/secondpage/second_page.dart';

class SoftWareDev extends StatelessWidget {
  const SoftWareDev({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: const SoftwareDevPage(),
    );
  }
}

class SoftwareDevPage extends StatefulWidget {
  const SoftwareDevPage({Key? key}) : super(key: key);

  @override
  State<SoftwareDevPage> createState() => _SoftwareDevPageState();
}

class _SoftwareDevPageState extends State<SoftwareDevPage> {
  @override
  Widget build(BuildContext context) {
    debugPrint(
      MediaQuery.of(context).size.height.toString(),
    );
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: ListView(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 100.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Text(
                softWrap: true,
                "What is $title?",
                style: const TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30),
            child: Material(
              color: Colors.transparent,
              elevation: 20,
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.2,
                child: Container(
                  constraints:
                      const BoxConstraints(maxHeight: 200, minHeight: 50),
                  child: ListView(
                    children: [
                      Text(
                        intro,
                        style: const TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30, bottom: 40),
              child: Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 1.2,
                  // height: MediaQuery.of(context).size.height / 2.5,
                  child: ColumnMan(
                    techbranch: "Software Development",
                    imageurl: "lib/assets/images/programmer.jpeg",
                    branch1: "Web Development",
                    branch2: "Application Development",
                    branch3: "Game Development",
                    firstonprss: () {
                      setState(() {
                        changeIntro(Techbranch.webdev);
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SecondPage(),
                        ),
                      );
                    },
                    secondprss: () {
                      setState(() {
                        changeIntro(Techbranch.appdev);
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SecondPage(),
                        ),
                      );
                    },
                    thirdprss: () {
                      setState(() {
                        changeIntro(Techbranch.gameloft);
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SecondPage(),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
