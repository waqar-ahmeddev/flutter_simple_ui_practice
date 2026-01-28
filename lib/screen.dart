import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}
class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    final imageurl = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkAvOoosF64nzvw4-8jXtDcMObdhjWxhh1rA&s";
    return Scaffold(
          appBar: AppBar(backgroundColor:Colors.lightBlue,title:  Center(child: Text('Welcome',)),),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(child: Text('Hi i am learning flutter')),
            ],
          ),
          drawer: Drawer(
            backgroundColor: Colors.deepPurple,
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  DrawerHeader(
                    padding: EdgeInsetsGeometry.zero,
                    child: UserAccountsDrawerHeader(
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                      ),
                      margin: EdgeInsets.zero,
                      accountName: Text('Hoorain Sherwani'), accountEmail: Text('Hoorain@gmail.com'),
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: NetworkImage(imageurl),
                      ),
                      ),
                  
                  ),
                  ListTile(
                    leading: Icon(CupertinoIcons.home,color: Colors.white,),
                   title: Text('Home',textScaleFactor:1.2,style: TextStyle(color: Colors.white),),
                  ),
                  ListTile(
                    leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,),
                   title: Text('Profile',textScaleFactor:1.2,style: TextStyle(color: Colors.white),),
                  ),
                  ListTile(
                    leading: Icon(CupertinoIcons.mail,color: Colors.white,),
                   title: Text('Email me ',textScaleFactor:1.2,style: TextStyle(color: Colors.white),),
                  ),


                  
                ],
              ),
            ),
          );
  }
}