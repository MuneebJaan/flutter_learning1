import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    height: 80,
                    width: 80,
                    image: AssetImage('assets/pic.jpg'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'mentaince',
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        'Box',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  'my name is muneeb \nmy name is muneeb ',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    prefixIcon:const Icon(Icons.email,color:Colors.red ,),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                        borderSide:const BorderSide(color: Colors.red)),
                  ),
                  ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,),
                child: TextFormField(
                  decoration: InputDecoration(

                    hintText: 'Password',
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    prefixIcon:const Icon(Icons.lock_open,color:Colors.red ,),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:const BorderSide(color: Colors.red)),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5,left: 250 ),
                    child: Text('forget password?',style: TextStyle(decoration: TextDecoration.underline),),
                  )
                ],
              ),
              SizedBox(
                height: 170,
              ),
              Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Text(
                  'Log in',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have an account? ',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Sign in ',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
