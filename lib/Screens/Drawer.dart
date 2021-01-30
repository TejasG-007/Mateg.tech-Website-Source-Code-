import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'dart:html' as html;

class Drawerhere extends StatelessWidget {
  _url_launcher(url) {
    return html.window.open(url, 'new tab');
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Drawer(
      elevation: 5.0,
      child: Container(
      
       decoration: BoxDecoration(
         boxShadow: [
           BoxShadow(color:Colors.black,blurRadius: 10)
         ],
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.blue, Colors.red]
                    )
                  ),
        alignment: Alignment.center,
        child: ListView(
        children: [
          
          ListTile(
            title: Padding(padding: EdgeInsets.all(10), child: Text('Home',style: TextStyle(color: Colors.white),)),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            title:
                Padding(padding: EdgeInsets.all(10), child: Text('Contact us',style: TextStyle(color: Colors.white))),
            onTap: () {
              Navigator.pushNamed(context, '/Contact-us');
            },
          ),
          ListTile(
            title:
                Padding(padding: EdgeInsets.all(10), child: Text('About us',style: TextStyle(color: Colors.white))),
            onTap: () {
              Navigator.pushNamed(context, '/About-us');
            },
          ),
          ListTile(
            title: Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
                child: Text('Follow us',style: TextStyle(color: Colors.white))),
            subtitle: Row(
              children: [
                SizedBox(
                  width: width / 20,
                ),
                GestureDetector(
                  child: Icon(Ionicons.logo_facebook, color: Colors.white),
                  onTap: () {
                    _url_launcher(
                        'https://www.facebook.com/profile.php?id=100005646436267');
                  },
                ),
                SizedBox(
                  width: width / 30,
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
                  width: width / 30,
                ),
                GestureDetector(
                  child: Icon(Ionicons.logo_instagram, color: Colors.white),
                  onTap: () {
                    _url_launcher('https://www.instagram.com/tejasg007/');
                  },
                ),
              ],
            ),
          )
        ],
      ),
      )
    );
  }
}
