import 'package:flutter/material.dart';
import 'package:t_newbie/homepage/ui_content.dart';
import 'package:t_newbie/secondpage/second_page.dart';
import 'package:t_newbie/sfwdev.dart';
// import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("POPULAR TECH BRANCHES"),
        ),
        body: const BodyPage(),
      ),
    ),
  );
}

class BodyPage extends StatefulWidget {
  const BodyPage({Key? key}) : super(key: key);

  @override
  State<BodyPage> createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  @override
  Widget build(BuildContext context) {
    debugPrint(MediaQuery.of(context).size.height.toString());
    Size screenwidth = MediaQuery.of(context).size;

    return SizedBox(
      width: screenwidth.width,
      height: screenwidth.height,
      child: ListView(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ColumnMan(
                techbranch: "CODING",
                imageurl: "lib/assets/images/programmer.jpeg",
                branch1: "CyberSecurity",
                branch2: "Software Development",
                branch3: "Data Science",
                // screenwidth: screenwidth,
                firstonprss: () {
                  setState(() {
                    changeIntro(Techbranch.cybersecurity);
                  });

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SecondPage(),
                    ),
                  );
                  debugPrint("$screenwidth");
                },
                secondprss: () {
                  setState(() {
                    changeIntro(Techbranch.softwaredev);
                  });

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SoftWareDev(),
                    ),
                  );
                  debugPrint("Software Dev");
                },
                thirdprss: () {
                  setState(() {
                    changeIntro(Techbranch.datascience);
                  });
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SecondPage(),
                      ));
                  debugPrint("Data Science");
                },
              ),
              ColumnMan(
                techbranch: "MARKETTING",
                imageurl: "lib/assets/images/marketting.jpeg",
                branch1: "Expertnaire",
                branch2: "Jumia Affliate",
                branch3: "Konga Affliate",
                firstonprss: () {
                  setState(() {
                    changeIntro(Techbranch.expertnaire);
                  });
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SecondPage(),
                      ));

                  debugPrint("Expertnaire");
                },
                secondprss: () {
                  setState(() {
                    changeIntro(Techbranch.jumia);
                  });
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SecondPage(),
                      ));

                  debugPrint("Jumia Affliate");
                },
                thirdprss: () {
                  setState(() {
                    changeIntro(Techbranch.konga);
                  });
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SecondPage(),
                      ));
                  debugPrint("Konga Affliate");
                },
                // screenwidth: screenwidth,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ColumnMan(
                techbranch: "WRITING",
                imageurl: "lib/assets/images/writing.jpeg",
                branch1: "Online Typist",
                branch2: "Kindle Publishing",
                branch3: "Content Creation",
                firstonprss: () {
                  setState(() {
                    changeIntro(Techbranch.typer);
                  });
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SecondPage(),
                      ));

                  debugPrint("Online typer");
                },
                secondprss: () {
                  setState(() {
                    changeIntro(Techbranch.kindle);
                  });
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SecondPage(),
                      ));

                  debugPrint("Kindle Publishing");
                },
                thirdprss: () {
                  setState(() {
                    changeIntro(Techbranch.content);
                  });
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SecondPage(),
                      ));
                  debugPrint("Content Creation");
                },
                // screenwidth: screenwidth,
              ),
              ColumnMan(
                techbranch: "TRADING",
                imageurl: "lib/assets/images/forex.jpeg",
                branch1: "Crypto Trading",
                branch2: 'Forex Trading',
                branch3: "Stock Trading",
                firstonprss: () {
                  setState(() {
                    changeIntro(Techbranch.crypto);
                  });
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SecondPage(),
                      ));

                  debugPrint("Crypto Trading");
                },
                secondprss: () {
                  setState(() {
                    changeIntro(Techbranch.forex);
                  });
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SecondPage(),
                      ));

                  debugPrint("Forex Trading");
                },
                thirdprss: () {
                  setState(() {
                    changeIntro(Techbranch.stock);
                  });
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SecondPage(),
                      ));
                  debugPrint("Stock Trading");
                },

                // screenwidth: screenwidth,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "tochioluebube@gmail.com",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
