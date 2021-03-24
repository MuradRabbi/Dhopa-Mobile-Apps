import 'package:dhopa_app/Screens/OrderScreen.dart';
import 'package:flutter/material.dart';



class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,)
        ),
        title: Text("Iron Yard", style: TextStyle(color:Colors.black),),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal:20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                color: Color(0xfff1ffff),
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text( " BLESS THIS MESS ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                            SizedBox(height:5),
                            Text("We Pick Your Clothes And Give \nThem New Look.",style: TextStyle(fontSize: 16),)
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:AssetImage("assets/images/bannerImg.png")
                            )
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height:10),
              Container(
                height: 200,
                color: Color(0xfff1ffff),
                child: Row(
                  children: [
                    Container(
                      width:120,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/servicesImg.png")
                          )
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("IRON ONLY", style: TextStyle(fontSize: 20, color:Colors.black, fontWeight: FontWeight.w700),),
                            SizedBox(height: 10,),
                            InkWell(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> OrderScreen()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: LinearGradient(
                                      colors: [
                                        Color(0xfff3953b), Color(0xffe57509),

                                      ],
                                      stops: [0,1],
                                      begin: Alignment.topCenter
                                  ),
                                ),
                                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                                child: Text("Place Order", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                color: Color(0xfff1ffff),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("AVAILABILITY", style: TextStyle(fontSize: 16),),
                        SizedBox(width: 5,),
                        Text("(Available)" , style: TextStyle(color:Colors.green, fontSize: 14, fontWeight: FontWeight.w700),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text("We Are Available from 7.00 AM TO 10.00 PM.", style: TextStyle(fontSize: 14),)
                  ],
                ),

              ),
              SizedBox(height:10),
              Container(
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                color: Color(0xfff1ffff),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("CHECK THE ESTIMATION", style: TextStyle(fontSize:16),),
                    SizedBox(height:10),
                    Text("You can check time estimation with price",style: TextStyle(fontSize:14),)
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Color(0xfff3953b), Color(0xffe57509),

                          ],
                          stops: [0,1],
                          begin: Alignment.topCenter
                      ),
                      shape: BoxShape.circle
                    ),
                    child: Text("+", style: TextStyle(color: Colors.white, fontSize: 36),),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.orange,
        iconSize: 30,
        onTap: (value)=>{

        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.track_changes),
              label: "Track Order"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.view_agenda),
              label: "My Orders"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: "Home"
          )
        ],
      ),
    );
  }
}
