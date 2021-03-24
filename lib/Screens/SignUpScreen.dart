import 'package:flutter/material.dart';

import 'LoginScreen.dart';


class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: signupscreen(),
    );
  }
}


class signupscreen extends StatefulWidget {
  @override
  _signupscreenState createState() => _signupscreenState();
}

class _signupscreenState extends State<signupscreen> {

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  final Shader linearGradient = LinearGradient(
    colors: <Color>[ Color(0xfff3953b), Color(0xffe57509),],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height:50),
            _buildLogoSection(),
            SizedBox(height:70 ,),
            _buildSignUpTextSection(),
            SizedBox(height:35),
            _buildInputSection(),
            SizedBox(height:20),
            _buildSignUpButton(),
            SizedBox(height:70 ,),
            _buildHaveAccountLoginButton(),
            SizedBox(height: 20,),


          ],
        ),
      ),
    );
  }
  Widget _buildLogoSection(){
    return Container(
      margin: EdgeInsets.only(left:20, right: 20),
      height: 70,
      width: 70,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/logo.png")
          )
      ),
    );
  }

  Widget _buildSignUpTextSection(){
    return Container(
      margin: EdgeInsets.only(left:20, right: 20),
      child: Text("Sign Up ", textScaleFactor: 1.0, style: TextStyle(foreground: Paint()..shader = linearGradient, fontWeight:FontWeight.w500,fontSize: 30, fontFamily: "sfpro"),),
    );
  }

  Widget _buildInputSection(){
    return Container(
      margin: EdgeInsets.only(left:20, right: 20),
      child: Column(
        children: [
          _buildTextField(nameController, TextInputAction.next, "Your Name", "NAME"),
          _buildTextField(phoneNumberController, TextInputAction.next, "Your Phone Number", "PHONE NUMBER"),
          _buildTextField(emailController, TextInputAction.next, "Your Email", "EMAIL"),
          _buildTextField(passwordController, TextInputAction.done, "Your Password", "PASSWORD"),
        ],
      ),
    );
  }

  Widget _buildTextField(
      TextEditingController textEditingController,
      TextInputAction textInputAction,
      String hintText,
      String labelText

      ){
    return Container(
        padding: EdgeInsets.only(top:10, bottom: 10),
        child: TextField(
          controller: textEditingController,
          keyboardType: TextInputType.text,
          textInputAction: textInputAction,
          decoration: InputDecoration(
              isDense: true,
              hintText: hintText,
              hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontFamily: "robo"),
              labelText: labelText,
              labelStyle: TextStyle(
                  color: Colors.orange,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: "robo"),
              enabledBorder: OutlineInputBorder(
                borderSide:BorderSide(color: Colors.grey, width: 2.0),
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.orange, width: 2.0))

          ),
        )
    );
  }

  Widget _buildSignUpButton(){
    return Container(
      margin: EdgeInsets.only(left:20, right: 20),
      child: InkWell(
        onTap: (){},
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              gradient: LinearGradient(
                  colors: [
                    Color(0xfff3953b), Color(0xffe57509),

                  ],
                  stops: [0,1],
                  begin: Alignment.topCenter
              )
          ),
          child: Center(child: Text("SIGN UP",textScaleFactor: 1.0, style: TextStyle(color:Colors.white, fontSize: 22, fontWeight: FontWeight.w700),)),
        ),
      ),
    );
  }

  Widget _buildHaveAccountLoginButton(){
    return InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
        },
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Have An Account? ",textScaleFactor: 1.0, style: TextStyle(fontSize:16 , fontWeight: FontWeight.w500 , fontFamily: "sfpro" , color:Colors.black)),
              Text("LOGIN.",textScaleFactor: 1.0, style: TextStyle(fontSize:16 , fontWeight: FontWeight.w700 , fontFamily: "sfpro", foreground: Paint()..shader = linearGradient))
            ],
          ),
        )
    );
  }
}

