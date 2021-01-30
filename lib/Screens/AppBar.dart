import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'dart:html' as html;

class appBar extends StatefulWidget {
  @override
  _appBarState createState() => _appBarState();
}

class _appBarState extends State<appBar> {
  _url_launcher(url) {
    return html.window.open(url, 'new tab');
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
//=========Menu is here
                Menu('Home', () {
                  Navigator.pushNamed(context, '/');
                }),

                Menu('Contact Us ', () {
                  Navigator.pushNamed(context, '/Contact-us');
                }),

                Menu('About Us', () {
                  Navigator.pushNamed(context, '/About-us');
                }),
                SizedBox(
                  width: width / 50,
                ),
                GestureDetector(
                  child: Icon(Ionicons.logo_facebook, color: Colors.white),
                  onTap: () {
                    _url_launcher(
                        'https://www.facebook.com/profile.php?id=100005646436267');
                  },
                ),
                SizedBox(
                  width: width / 50,
                ),
                GestureDetector(
                  child: Icon(
                    Ionicons.logo_linkedin,
                    color: Colors.white,
                  ),
                  onTap: () {
                    _url_launcher(
                        'https://www.linkedin.com/in/tejas-gathekar-661a22162');
                  },
                ),
                SizedBox(
                  width: width / 50,
                ),
                GestureDetector(
                  child: Icon(Ionicons.logo_instagram, color: Colors.white),
                  onTap: () {
                    _url_launcher('https://www.instagram.com/tejasg007/');
                  },
                ),
                SizedBox(
                  width: width / 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Menu extends StatelessWidget {
  final title;
  final press;
  Menu(this.title, this.press);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        textColor: Colors.pink,
        onPressed: press,
        child: Text(
          '$title',
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontFamily: 'Work-Sans'),
        ));
  }
}
