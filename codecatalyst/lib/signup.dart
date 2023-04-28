
// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'signin.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                      if(confirmpassword.text!=password.text){
                        final snackBar = SnackBar(
            content: const Text('Password does not match. Re-enter.',style: TextStyle(color: Colors.red,fontSize: 20),),
            backgroundColor: Colors.white,
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
              else{
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
                     
final snackBar = SnackBar(
            content: Text(text ,style: TextStyle(color: Colors.red,fontSize: 20),),
            backgroundColor: Colors.white,
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    },
                  child: Text('SIGN UP',
                  style: GoogleFonts.poppins(fontStyle: FontStyle.normal, fontWeight: FontWeight.w600,color: Colors.white),),
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

