// ignore_for_file: use_key_in_widget_constructors
import 'package:t_newbie/thridpage/third_page.dart';
import 'package:flutter/material.dart';
import 'package:t_newbie/homepage/newbie.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

enum Techbranch {
  cybersecurity,
  softwaredev,
  webdev,
  appdev,
  gameloft,
  datascience,
  expertnaire,
  jumia,
  konga,
  typer,
  kindle,
  content,
  crypto,
  forex,
  stock,
}

String intro = "";
String title = "";
String youtubelink = "";

void changeIntro(Techbranch branch) {
  if (branch == Techbranch.cybersecurity) {
    title = "Cyber-Security";
    intro = cyber;
    youtubelink = "https://www.youtube.com/watch?v=U_P23SqJaDc";
  } else if (branch == Techbranch.softwaredev) {
    title = "Software Development";
    intro = softwaredev;
    youtubelink = "https://www.youtube.com/watch?v=J6rVaFzOEP8&t=197s";
  } else if (branch == Techbranch.webdev) {
    title = "Web Development";
    intro = webdev;
    youtubelink = "https://www.youtube.com/watch?v=5YDVJaItmaY";
  } else if (branch == Techbranch.appdev) {
    title = "Application Development";
    intro = appdev;
    youtubelink = "https://www.youtube.com/watch?v=SW2tT5njHek";
  } else if (branch == Techbranch.gameloft) {
    title = "Game Development";
    intro = gamedev;
    youtubelink = "https://www.youtube.com/watch?v=fsEwtkEBXmo";
  } else if (branch == Techbranch.datascience) {
    title = "Data Science & Analysis";
    intro = datascience;
    youtubelink = "https://www.youtube.com/watch?v=ua-CiDNNj30";
  } else if (branch == Techbranch.expertnaire) {
    title = "Expertnaire";
    intro = expertnaire;
    youtubelink = "https://www.youtube.com/watch?v=bAI3QLM5KBw";
  } else if (branch == Techbranch.jumia) {
    title = "Jumia Affiliate";
    intro = jumia;
    youtubelink = "https://www.youtube.com/watch?v=cCDPtkNEPYk";
  } else if (branch == Techbranch.konga) {
    title = "Konga Affliate";
    intro = konga;
    youtubelink = "https://www.youtube.com/watch?v=WpxWBg_EQbk";
  } else if (branch == Techbranch.typer) {
    title = "Online Typing";
    intro = typing;
    youtubelink = "https://www.youtube.com/watch?v=rTi6IAiF0n0";
  } else if (branch == Techbranch.kindle) {
    title = "Kindle Publishing";
    intro = kindle;
    youtubelink = "https://www.youtube.com/watch?v=zAkTkn-7rM4";
  } else if (branch == Techbranch.content) {
    title = "Content Creation";
    intro = content;
    youtubelink = "https://www.youtube.com/watch?v=PHDw2NKvPsY";
  } else if (branch == Techbranch.crypto) {
    title = "Crypto Trading";
    intro = crypto;
    youtubelink = "https://www.youtube.com/watch?v=JgEcBdiadms";
  } else if (branch == Techbranch.forex) {
    title = "Forex Trading";
    intro = forex;
    youtubelink = "https://www.youtube.com/watch?v=hQs6AYpYxWE";
  } else if (branch == Techbranch.stock) {
    title = "Stock Trading";
    intro = stock;
    youtubelink = "https://www.youtube.com/watch?v=slBxM4J3BEA";
  }
}

String cyber = intromap["programming"]["cybersecurity"];
String softwaredev = intromap["programming"]["softwaredev"];
String webdev = intromap["programming"]["webdev"];
String appdev = intromap["programming"]["appdev"];
String gamedev = intromap["programming"]["gamedev"];
String datascience = intromap["programming"]["datascience"];
String expertnaire = intromap["affliate"]["expertnaire"];
String jumia = intromap["affliate"]["jumia"];
String konga = intromap["affliate"]["konga"];
String typing = intromap["writing"]["typer"];
String kindle = intromap["writing"]["kindle"];
String content = intromap["writing"]["content"];
String crypto = intromap["trading"]["crypto"];
String forex = intromap["trading"]["forex"];
String stock = intromap["trading"]["stock"];

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: CustomPage(),
    );
  }
}

class CustomPage extends StatelessWidget {
  CustomPage({Key? key}) : super(key: key);

  final _controller = YoutubePlayerController(
    initialVideoId: YoutubePlayerController.convertUrlToId(youtubelink)!,
    params: const YoutubePlayerParams(
      loop: false,
      color: "transparent",
      desktopMode: true,
      mute: true,
      strictRelatedVideos: true,
      showFullscreenButton: true,
      autoPlay: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                softWrap: true,
                "What is $title?",
                style:
                    const TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Material(
              color: Colors.transparent,
              elevation: 20,
              child: SizedBox(
                // height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width / 1.2,
                child: Container(
                  constraints: const BoxConstraints(
                    maxHeight: 200,
                  ),
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
          TextButton(
            onPressed: (() => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        CustomYoutubePlayer(youtubeUrL: youtubelink),
                  ),
                )),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey,
              ),
              child: const Center(
                child: Text(
                  "CLICK TO VIEW  YOUTUBE TUTORIAL",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width,
                child: YoutubePlayerControllerProvider(
                  controller: _controller,
                  child: YoutubePlayerIFrame(
                    controller: _controller,
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
