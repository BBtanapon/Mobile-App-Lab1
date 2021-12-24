import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BB-Tanapon"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //ProPic(),
            NetPro(),
            myname(),
            birthday(),
            AboutMe(),
            Con()
          ],
        ),
      ),
    );
  }

  Row Con() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        "My name is Mr.Tanapon Amonsakpaisan",
        style: GoogleFonts.roboto(
          color: Colors.black,
        ),
      ),
      Text("TEL : 0992310531"),
    ]);
  }

  Row AboutMe() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 8, right: 8),
            child: Divider(
              color: Colors.black,
              thickness: 5,
            ),
          ),
        ),
        Text("About Me"),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 8, right: 8),
            child: Divider(
              color: Colors.black,
              thickness: 5,
            ),
          ),
        ),
      ],
    );
  }

  Widget NetPro() {
    return CircleAvatar(
      radius: 85,
      backgroundColor: Colors.blue,
      child: CircleAvatar(
        radius: 80,
        backgroundColor: Colors.red,
        child: CircleAvatar(
          radius: 75,
          backgroundImage: NetworkImage(
              'https://scontent.fbkk5-8.fna.fbcdn.net/v/t1.6435-9/131962447_1624934687689964_7920684883718887108_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeEehci0xpqQa7NCDLyQy0stQrJGak3vonZCskZqTe-idlvH5GRfDfqLGBRKvvnVr2a00m67XBhArhi9tIuzqMmv&_nc_ohc=F-bP3X5XLKUAX8Iw0zK&_nc_ht=scontent.fbkk5-8.fna&oh=00_AT_vH3Fv4Ws6IuyKQkaOis3mFBRXql0Gorylz6xDfQHhCg&oe=61E95CD9'),
        ),
      ),
    );
  }

  Image ProPic() {
    return Image.asset(
      'images/bb.jpg',
      fit: BoxFit.cover,
    );
  }

  Row myname() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FaIcon(
            FontAwesomeIcons.solidIdCard,
            color: Colors.green,
          ),
        ),
        Text(
          "Mr.Tanapon",
          style: GoogleFonts.roboto(
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Row birthday() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.person),
        ),
        Text(
          "10-04-2000",
          style: GoogleFonts.roboto(
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
