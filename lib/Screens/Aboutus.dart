import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:webapp/Screens/AppBar.dart';
import 'Drawer.dart';

class Aboutus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us',style:TextStyle(color:Colors.white)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
              Colors.red,
              Colors.blue
            ])          
         ),        
     ), 
        iconTheme: IconThemeData(color: Colors.white),
        leading: width > 500
            ? Icon(
                AntDesign.user,
                color: Colors.white,
              )
            : null,
        actions: [width > 500 ? appBar() : Text(' ')],
      ),
      drawer: Drawerhere(),
      body: SingleChildScrollView(
        child: Container(
          height: height,
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
          child: Column(
          children: [
            SizedBox(
              height: height / 10,
            ),
            ClipOval(
              child: Image.network(
                  'https://media-exp1.licdn.com/dms/image/C5603AQGF_UYx23SMlg/profile-displayphoto-shrink_200_200/0?e=1604534400&v=beta&t=5CNEvZ1numUsVR6il2WU8ZrIa3lUdBeLGFkHuPQVO4c'),
            ),
            SizedBox(
              height: height / 10,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'I primarily use python,but picking up a new framework or language isn’t a problem. I have extensive programming experience and I’m comfortable developing on the front-end or backend as well as setting up or managing infrastructure. I love what I do, I have my own problems that’s motivates me to do my best. Always ready to learn new things and here you all avail to read details of today’s life.',
                style: TextStyle(color: Colors.white, fontSize: 20,fontFamily: 'Work-Sans'),
              ),
            )
          ],
        ),
        )
      ),
    );
  }
}
