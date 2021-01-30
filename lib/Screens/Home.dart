import 'package:flutter/material.dart';
import 'package:webapp/Screens/AppBar.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'Drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
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
        title: Text('Mateg.tech',style: TextStyle(fontFamily: 'Work-Sans'),textAlign:TextAlign.center),
        iconTheme: IconThemeData(color: Colors.white),
        leading: width > 500
            ? Icon(
                AntDesign.home,
                color: Colors.white,
              )
            : null,
        actions: [width > 500 ? appBar() : Text('')],
      ),
      drawer: Drawerhere(),
      backgroundColor: Colors.white70,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.blue, Colors.red]
                    )
                  ),
                    alignment: Alignment.center,
                    height: height / 2,
                    width: width,
                    child: Text(
                      'MateG.tech',
                      style: TextStyle(
                          fontFamily: 'Pacifico',
                          fontSize: width > 500?80:60,
                          color: Colors.white),
                    ))
              ],
            ),
            SizedBox(
              height: height / 18,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Imagination is more important than knowledge.  For knowledge is limited, whereas imagination embraces the entire world, stimulating progress, giving birth to evolution.',
                style: TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                    fontFamily: "Pacifico"),
              ),
            ),
            SizedBox(
              height: height / 18,
            ),
            Text(
              'Blogs',
              style: TextStyle(fontFamily: 'Work-Sans',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            SizedBox(height:height/10,),
            postHeading('Python Dev', height, width,(){
              Navigator.pushNamed(context, '/post');
            }),
          ],
        ),
      ),
    );
  }
}
Widget postHeading(String title,double height,double width,Function function){
 
  return GestureDetector(
    onTap: function,
    child: Container( 
              alignment: Alignment.center,
              padding: EdgeInsets.all(20),
              height:height/5,
            width: width/2,
              child: Text('$title',style:TextStyle(fontFamily: 'Work-Sans',fontSize: 20,color: Colors.black)),
              decoration:BoxDecoration(
               color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(color:Colors.black,blurRadius: 10)]
            ),),);
}