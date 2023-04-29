import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class Hosp_Home extends StatefulWidget {
  const Hosp_Home({super.key});

  @override
  State<Hosp_Home> createState() => _Hosp_HomeState();
}

class _Hosp_HomeState extends State<Hosp_Home> {
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
          actions: [
            Icon(Icons.add, color: Colors.black,),
          ],
        ),
        body:SingleChildScrollView(
          padding: EdgeInsets.only(left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('DEPARTMENTS',style: GoogleFonts.poppins(fontStyle: FontStyle.normal, fontWeight: FontWeight.w300,color: Colors.black),),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    width: (3*width)/4,
                    height: height/5,
                    child: Text('Cardio'),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                   SizedBox(
                width: 20,
              ),
                  Icon(Icons.phone),
                  Icon(Icons.location_on),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    width: (3*width)/4,
                    height: height/5,
                    child: Text('Neuro'),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                   SizedBox(
                width: 20,
              ),
                  Icon(Icons.phone),
                  Icon(Icons.location_on),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text('SERVICES',style: GoogleFonts.poppins(fontStyle: FontStyle.normal, fontWeight: FontWeight.w300,color: Colors.black),),
              Row(
                children: [
                  Container(
                    width: (3*width)/4,
                    height: height/5,
                    child: Text('a'),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                   SizedBox(
                width: 20,
              ),
                  Icon(Icons.phone),
                  Icon(Icons.location_on),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    width: (3*width)/4,
                    height: height/5,
                    child: Text('a'),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                  SizedBox(
                width: 20,
              ),
                  Icon(Icons.phone),
                  Icon(Icons.location_on),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}