import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Text('Choose Login Type: ',style: GoogleFonts.poppins(fontStyle: FontStyle.normal, fontWeight: FontWeight.w300,color: Colors.black),),
            SizedBox(
                    height: 42,
                  ),
            ElevatedButton(
                  onPressed:(){
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>Emergency()));
                  } , 
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(Colors.black),
                  ), 
                  child: Text('ADMIN',style: GoogleFonts.poppins(fontStyle: FontStyle.normal, fontWeight: FontWeight.w500,color: Colors.white))),
                  SizedBox(
                    height: 42,
                  ),
                  ElevatedButton(
                  onPressed:(){
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>Emergency()));
                  } , 
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(Colors.black),
                  ), 
                  child: Text('USER',style: GoogleFonts.poppins(fontStyle: FontStyle.normal, fontWeight: FontWeight.w500,color: Colors.white)))
            ]
          ),
        ),
      ),
    );
  }
}