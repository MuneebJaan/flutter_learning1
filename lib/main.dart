import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random=Random();
  int x =0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        theme: ThemeData(fontFamily: GoogleFonts.poppins().fontFamily),
        home: Scaffold(

          backgroundColor: Colors.amber.shade100,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      'Welcome to lottery app',
                      style: TextStyle(
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(height: 150),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(
                          height: 80,
                          width: 70,
                          image: AssetImage(
                            'assets/lottery.png',
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        //   mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Center(
                              child: Text(
                                'Lucky number for today is 7',
                                style: TextStyle(
                                    fontFamily: GoogleFonts.poppins().fontFamily,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w600),
                              ))
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height:300 ,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade500,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child:x==7? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.done_all_outlined,color: Colors.green.shade700,size: 50,),
                        SizedBox(
                          height: 15,
                        ),
                        Text('Congrates you have won the lottery',style: TextStyle(fontSize: 16,),),
                      ],
                    ) :Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.error,color: Colors.red.shade700,size: 50,),
                        SizedBox(
                          height: 15,
                        ),
                        Text('Your number is $x better luck next time',style: TextStyle(fontSize: 16,),),
                      ],
                    ),

                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
             x=random.nextInt(10);
             print(x);
             setState(() {

             });
            },
            child:x==7? Icon(Icons.done_all):Icon(Icons.refresh),
          ),
        ),
      ),
    );
  }
}

