import 'package:dhopa_app/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';

import 'SignUpScreen.dart';


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginScreen(),
    );
  }
}


class loginScreen extends StatefulWidget {
  @override
  _loginScreenState createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final Shader linearGradient = LinearGradient(
    colors: <Color>[ Color(0xfff3953b), Color(0xffe57509),],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // padding: EdgeInsets.all(20),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                fit: BoxFit.fill,
              image: AssetImage("assets/images/bg.png")
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               SizedBox(height:50),
              _buildLogoSection(),
              SizedBox(height:70),
              _buildWelcomeTextSection(),
              SizedBox(height:25),
              _buildInputSection(),
              _buildForgetPasswordButton(),
              SizedBox(height:40),
              _buildLoginButton(),
              SizedBox(height:20),
              _buildOrDividerSection(),
              SizedBox(height:50),
              _buildSocialLoginSection(),
              SizedBox(height: 30,),
              _buildHaventAccountSignUpButton(),
              SizedBox(height: 20,),
            ]
          ),
        )
      )
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

  Widget _buildWelcomeTextSection(){
    return Container(
      margin: EdgeInsets.only(left:20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Welcome Back! ", textScaleFactor: 1.0, style: TextStyle(foreground: Paint()..shader = linearGradient, fontWeight:FontWeight.w500,fontSize: 30, fontFamily: "sfpro"),),
          Text("Please log in to your account. ", textScaleFactor: 1.0, style: TextStyle(color: Colors.grey, fontWeight:FontWeight.w500,fontSize: 20, fontFamily: "sfpro"),),
        ],
      ),
    );
  }

  Widget _buildInputSection(){
    return Container(
      margin: EdgeInsets.only(left:20, right: 20),
      child: Column(
        children: [
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

  Widget _buildForgetPasswordButton(){
    return Container(
      margin: EdgeInsets.only(right:20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: (){},
            child: Text("Forget Password?",textScaleFactor: 1.0, style: TextStyle(color:Colors.grey, fontSize:14, fontWeight: FontWeight.w500, fontFamily: "robo" ),),
          )
        ],
      ),
    );
  }

  Widget _buildLoginButton(){
    return Container(
      margin: EdgeInsets.only(left:20, right: 20),
      child: InkWell(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> HomeScreen()));

        },
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
          child: Center(child: Text("LOGIN",textScaleFactor: 1.0, style: TextStyle(color:Colors.white, fontSize: 22, fontWeight: FontWeight.w700),)),
        ),
      ),
    );
  }

  Widget _buildOrDividerSection(){
    return Row(
      children: [
        Expanded(child: Container(height: 1,color:Colors.grey)),
        SizedBox(width:10),
        Container(
          alignment: Alignment.center,
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              border:Border.all(  width:2 ,color:Colors.grey),
              borderRadius: BorderRadius.circular(10)
          ),
          child: Text("OR",textScaleFactor: 1.0,textAlign: TextAlign.center, style: TextStyle(color:Colors.grey, fontWeight:FontWeight.w700, fontSize: 14, fontFamily: "sfpro"),),
        ),
        SizedBox(width:10),
        Expanded(child: Container(height: 1,color:Colors.grey)),
      ],
    );
  }


  Widget _buildSocialLoginSection(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: (){},
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                border:Border.all(  width:2 ,color:Colors.grey),
                borderRadius: BorderRadius.circular(10)
            ),
            child: Image.asset("assets/images/googleLogo.png"),
          ) ,
        ),
        SizedBox(width:20),
        InkWell(
          onTap: (){},
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                border:Border.all(  width:2 ,color:Colors.grey),
                borderRadius: BorderRadius.circular(10)
            ),
            child: Image.asset("assets/images/fbLogo.png"),
          ) ,
        )
      ],
    );
  }

  Widget _buildHaventAccountSignUpButton(){
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
      },
      child: Container(
      child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't Have An Account? ",textScaleFactor: 1.0, style: TextStyle(fontSize:16 , fontWeight: FontWeight.w500 , fontFamily: "sfpro", color:Colors.black)),
        Text("SIGN UP.",textScaleFactor: 1.0, style: TextStyle(fontSize:16 , fontWeight: FontWeight.w700 , fontFamily: "sfpro", foreground: Paint()..shader = linearGradient))
      ],
    ),
      )
    );
  }
}




