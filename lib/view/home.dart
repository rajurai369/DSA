
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../util/app_size.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
   int index = 2;
  @override
  Widget build(BuildContext context) {
    final items = [
      const Icon(Icons.home, size: 30),
      const Icon(Icons.search, size: 30),
      const Icon(Icons.favorite, size: 30),
      const Icon(Icons.settings, size: 30),
      const Icon(Icons.person, size: 30),
    ];
    return SafeArea( 
      child: Scaffold(
        backgroundColor: Colors.teal,
          bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(iconTheme: const IconThemeData(color: Colors.white)),
        child: CurvedNavigationBar(
          animationCurve: Curves.easeInOut,
          // animationDuration: Duration(milliseconds: 300),
          color:  Colors.amber,
          buttonBackgroundColor: const Color(0xFF2238F9),
          backgroundColor: Colors.transparent,
          height: 60,
          items: items,
          index: index,
          onTap: (index) => setState(() => this.index = index),
        ),
      ),
       
        drawer: const Drawer(),
        appBar: AppBar(
          // backgroundColor: const Color(0xFFDAD6F3),
          backgroundColor: Colors.amber,
          elevation: 0,
           actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                
                children: const [
                  Icon(Icons.search),
                  SizedBox(width: 30,),
                  Icon(Icons.notifications),
                ],
              ),
            )
           ],
        ),
        body:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Wrap(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius:BorderRadius.circular(15) ,
                    child: InkWell(
                      onTap: (){

                      },
                      child: Container(
                        height: 150,
                        width: 150,
                        color: const Color(0xFFDAD6F3),
                        // child: const Center(child: Text("Management",style: TextStyle(
                        //   color: Color(0xFF0E88E5),
                        // ),)),
                        child: Lottie.asset("images/manage.json")
                      ),
                    ),
                  ),
                ),
                const AppSize(),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: ClipRRect(
                    borderRadius:BorderRadius.circular(15) ,
                     child: InkWell(
                      onTap: (){

                      },
                       child: Container(
                        height: 150,
                        width: 150,
                        color: const Color(0xFFDAD6F3),
                        child: Lottie.asset("images/teacher.json")
                        // child: const Center(child: Text("Teachers",style: TextStyle(color: Color(0xFF0E88E5)),)),
                                     ),
                     ),
                   ),
                 ),
                 const AppSize(),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: ClipRRect(
                    borderRadius:BorderRadius.circular(15) ,
                     child: ClipRRect(
                      borderRadius:BorderRadius.circular(15) ,
                       child: InkWell(
                        onTap: (){

                        },
                         child: Container(
                          height: 150,
                          width: 150,
                          color: const Color(0xFFDAD6F3),
                          child: Lottie.asset("images/parent.json")
                          // child: const Center(child: Text("Parents",style: TextStyle(color: Color(0xFF0E88E5)),)),
                                       ),
                       ),
                     ),
                   ),
                 ),
                 const AppSize(),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: ClipRRect(
                    borderRadius:BorderRadius.circular(15) ,
                     child: InkWell(
                      onTap: (){

                      },
                       child: Container(
                        // decoration: const BoxDecoration(
                        //   color: Color(0xFFDAD6F3),
                        //   image: DecorationImage(
                        //     image:Image.asset("images/student.json"),fit: BoxFit.fill
                        //   ),
                        // ),
                        color: const Color(0xFFDAD6F3),
                        
                        height: 150,
                        width: 150,
                        child: Lottie.asset("images/student.json")
                        
                        // child: const Center(child: Text("Students",style: TextStyle(color: Color(0xFF0E88E5)),)),
                                     ),
                     ),
                   ),
                 ),
              ],
            ),
          ),
        )
        ),

    );
  }
}

