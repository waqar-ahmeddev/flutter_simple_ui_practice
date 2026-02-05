import'package:flutter/material.dart';
import 'screen.dart';
class SplashScreen extends StatefulWidget {
   const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
 bool changeButton = false;
 final _formkey = GlobalKey<FormState>();
 movetoHome(BuildContext context) async{
  if(_formkey.currentState!.validate()){
  setState(() {
  changeButton = true; // Icon show hoga
  });                                 
  await Future.delayed(Duration(seconds: 1));
  await Navigator.push( context,MaterialPageRoute(builder: (context) => Screen()),
  );
  setState(() {
  changeButton = false;
  }
  );
 }
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
            children: [
              Image.asset('assets/login.png',fit: BoxFit.cover,),
              SizedBox(height: 15,),
              Text('Welcome Hoorain ',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20.0),
                child: Column(
                  children: [
                      TextFormField(decoration: InputDecoration(
                  hintText: 'username',hintStyle: TextStyle(fontSize: 10,),
                  label: Text('Enter username',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                  ),
                  
                ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "Username cannnot be empty";
                    }
                        return null;
                  },
                      ),
                 TextFormField(
                       obscureText: true,
                       decoration: InputDecoration(
                  hintText: 'password',hintStyle: TextStyle(fontSize: 10,),
                  label: Text('Enter password',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,
                ),
                )
                  ),
                       validator: (value){
                    if(value!.isEmpty){
                      return "Password cannnot be empty";
                    }
                     else if(value.length < 6){
                      return "Password Length Should be Atleast 6";
                     }
                         return null;
                     }    
                  )
                  ],
                ),
              ),
              SizedBox(height: 20),
                 SizedBox(height: 20),
                      Material(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                          onTap: () => movetoHome(context),                    
                             child: AnimatedContainer(
                              duration: Duration(seconds: 5),
                                 child: Container(
                                 height: 50,
                                  width: 150,
                             child: Center(
                               child: changeButton ? Icon(Icons.verified,color: Colors.white,) : Text(
                                 'Login',
                                  style: TextStyle(color: Colors.white, fontSize: 18),
                                ),
                                ),
                            ),
                          ),
                        ),
                      ),        
                    ]
            ),
          ),
        ),            
    );
  }
}