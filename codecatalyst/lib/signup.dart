
// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:supabase/supabase.dart';

import 'signin.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final supabase = SupabaseClient(
    'https://dxhhmevcczynimcgirdd.supabase.co',
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImR4aGhtZXZjY3p5bmltY2dpcmRkIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODI3MjEwMzAsImV4cCI6MTk5ODI5NzAzMH0.LvLPJjnK2jGGenzg0EwccvN7BmVCW2z9TK85hVcJOZ4',
  );
  @override

  void initState() {
    super.initState();
    //init();
  }

  Widget build(BuildContext context) {
    TextEditingController email=TextEditingController();
    TextEditingController password=TextEditingController();
    TextEditingController confirmpassword=TextEditingController();
    String text=' ';
    //debugShowCheckedModeBanner: false;
    return Scaffold(
       backgroundColor :Color.fromARGB(255, 255, 255, 255),
      body: 
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'SIGN UP',
              style: GoogleFonts.poppins(fontStyle: FontStyle.normal, fontWeight: FontWeight.w600, fontSize: 32,color: Colors.black),
              ),
              SizedBox(height: 42,),
              LoginForm(text: "Email",textEditingController: email,value: false,),
              SizedBox(height: 42,),
              LoginForm(text: "Password",textEditingController: password,value: true,),
              SizedBox(height: 42,),
              LoginForm(text: "Confirm Password",textEditingController: confirmpassword,value: true,),
                SizedBox(height: 42,),
              Container(
                height: 50 ,
                width:90 ,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.black,
                  ),
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  ),
                    onPressed: () async{
                        final response =  await supabase.auth.signUp(
                email: email.toString(),
                password: password.toString(),
              
              );
                      },
              // Sign in a user with email and password
              
              // Check if the sign-in was successful
                    
                  child: Text('SIGN UP',
                  style: GoogleFonts.poppins(fontStyle: FontStyle.normal, fontWeight: FontWeight.w600,color: Colors.white),) ,
                )
              ),
          ],
        ),
      ),
    );
  }
}


class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key, required this.text, required this.textEditingController, required this.value,
  });
final String text;
final TextEditingController textEditingController;
final bool value;
  @override
  Widget build(BuildContext context) {
    final double width=MediaQuery.of(context).size.width;
    final double height=MediaQuery.of(context).size.height;
    return Container(
      height: 50,
      width:width/1.5,
      child: TextFormField(
        obscureText: value,
        controller: textEditingController,
        decoration: InputDecoration(
          labelText: text,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black,),
            borderRadius: BorderRadius.all(Radius.circular(10),),
          ),
        ),
      ),
    );
  }
}

