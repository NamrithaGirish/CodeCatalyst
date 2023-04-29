// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class Emergency extends StatefulWidget {
  const Emergency({super.key});

  @override
  State<Emergency> createState() => _EmergencyState();
}

class _EmergencyState extends State<Emergency> {
  TextEditingController location=TextEditingController();
  TextEditingController condition =TextEditingController();
  @override
  Widget build(BuildContext context) {
    final double width=MediaQuery.of(context).size.width;
    final double height=MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: GestureDetector(onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back,color: Colors.black,)),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'DETAILS',
                style: GoogleFonts.poppins(fontStyle: FontStyle.normal, fontWeight: FontWeight.w600, fontSize: 32,color: Color.fromARGB(255, 47, 0, 0)),
              ),
              SizedBox(height: 45,),
              Container(
              height: 50 ,
              width:width/1.5 ,
              child: TextFormField(
              obscureText: false,
              controller: location,
              decoration: InputDecoration(
                labelText: 'Location',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black,),
                  borderRadius: BorderRadius.all(Radius.circular(10),),
                ),
              ),
              ),
            ),
             SizedBox(height: 25,),
            Container(
              height: 50 ,
              width:width/1.5 ,
              child: TextFormField(
              obscureText: false,
              controller: location,
              decoration: InputDecoration(
                labelText: 'Condition',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black,),
                  borderRadius: BorderRadius.all(Radius.circular(10),),
                ),
              ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Emergency()));
                } , 
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(Colors.black),
                ), 
                child: Text('SUBMIT',style: TextStyle(
                  color: Colors.white,
                ),))
            ],
          ),
        ),
      ),
    );
  }
}