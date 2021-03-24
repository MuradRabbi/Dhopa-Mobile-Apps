import 'package:flutter/material.dart';

import 'LoginScreen.dart';



class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: onboardingscreen(),
    );
  }
}

class onboardingscreen extends StatefulWidget {
  @override
  _onboardingscreenState createState() => _onboardingscreenState();
}

class _onboardingscreenState extends State<onboardingscreen> {
  int currentPage = 0;
  PageController _pageViewController = new PageController(
    initialPage: 0,

  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [

          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg.png")
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  height: 500,
                  child: PageView(
                    controller: _pageViewController,
                    children: [
                      onBoardPage("onBoard1", "Choose Clothes"),
                      onBoardPage("onBoard2", "Schedule Pickup "),
                      onBoardPage("onBoard3", "Get Best Iron Service"),
                      onBoardPage("onBoard2", "Get On Time Delivery"),
                      onBoardPage("onBoard4", "Pay Later"),
                    ],
                    onPageChanged: (value) => {setCurrentPage(value)},
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (index) => getIndicator(index)),
                ),
                Spacer(),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: InkWell(
                    onTap: changePage,
                    child: Container(
                      height: 70,
                      width: 70,
                      margin: EdgeInsets.only(bottom: 30),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [Color(0xfff3953b), Color(0xffe57509)],
                          stops: [0,1],
                          begin: Alignment.topCenter
                        )
                      ),
                      child: Icon(Icons.arrow_forward, color:Colors.white, size:40),
                    ),
                  ),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }

  void changePage(){
    if(currentPage == 4){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
    }
    else{
      _pageViewController.animateToPage(currentPage + 1, duration: Duration(milliseconds: 200), curve: Curves.linear);
    }
  }

  setCurrentPage(int value){
    currentPage = value;
    setState(() {

    });
  }

  AnimatedContainer getIndicator(int pageNo){
    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      height: 10,
      width: (currentPage == pageNo) ? 30 : 10,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: (currentPage == pageNo) ? Colors.orange : Colors.grey
      ),
    );
  }

  Column onBoardPage(String image , String title){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(50),
          decoration:BoxDecoration(
            image: DecorationImage(

              image: AssetImage("assets/images/$image.png")
            )
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text( title ,
            textScaleFactor: 1.0,
            style: TextStyle(
            fontSize: 30,
            fontFamily: "roboto",
            fontWeight: FontWeight.w500
          ),),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10 , horizontal: 40),
          child: Text(
            "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,",
             style: TextStyle(color:Colors.grey, fontSize: 16),
             textAlign: TextAlign.center,
             textScaleFactor: 1.0,
          ),
        )
      ],
    );
  }
}

