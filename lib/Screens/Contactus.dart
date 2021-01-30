import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:webapp/Screens/AppBar.dart';
import 'Drawer.dart';

class Contactus extends StatefulWidget {
  @override
  _ContactusState createState() => _ContactusState();
}

class _ContactusState extends State<Contactus> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  TextEditingController _email = TextEditingController();

  TextEditingController _data = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Contact Us',style:TextStyle(color:Colors.white)),
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
       
        leading:
            width > 500 ? Icon(AntDesign.message1, color: Colors.white) : null,
        actions: [width > 500 ? appBar() : Text(' ')],
      ),
      drawer: Drawerhere(),
      body: SingleChildScrollView(
        child:Container(
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
          child:  Form(
          key: _formkey,
                  child: Column(
            children: [
              SizedBox(
                height: height / 8,
              ),
              Text('Write us Below',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              Padding(
                  padding: EdgeInsets.all(20),
                  child: TextFormField(
                    controller: _email,
                    validator: (String val){
                      if(val.isEmpty){
                        return 'Please Enter Your Email';
                      }
                    },
                    decoration: InputDecoration(
                        labelText: 'Enter Your Email here ',
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  )),
              Padding(
                  padding: EdgeInsets.all(20),
                  child: TextFormField(
                    controller: _data,
                    validator: (String val ){
                      if(val.isEmpty){
                        return 'Please Enter Your Query';
                      }
                    },
                    maxLength: 500,
                    maxLines: 4,
                    decoration: InputDecoration(
                        labelText: 'Write Your Query Here',
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  )),
              FlatButton(
                  hoverColor: Colors.blue,
                  color: Colors.cyan,
                  onPressed: () {
                    
                      if(_formkey.currentState.validate()){
                          print('button pressed');
                    }
                  
                  },
                  child: Text('Submit',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)))
            ],
          ),
        ),
        )
      ),
    );
  }
}
