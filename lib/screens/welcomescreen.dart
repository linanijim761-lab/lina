import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:lina/screens/homescreen.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCE8E8),
      appBar: AppBar(
        backgroundColor: Color(0xFF49BAF2),
        systemOverlayStyle:SystemUiOverlayStyle.light,
        title: Text('Tudee',style: TextStyle(fontSize: 18,
          fontWeight: FontWeight(400),
          color: Color(0xFFFFFFFF),
          fontFamily: 'cherry',

        ),),

      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 37),
        child: Column(
          children: [
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusGeometry.circular(25),
                color: Color(0xFFFFFFFF),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Welcome Ahmed',style: TextStyle(
                      fontSize:20 ,
                      fontWeight: FontWeight(500),


                    ),),

                       Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 110,

                                decoration: BoxDecoration(
                                  color: Color(0xFF76C499),
                                  borderRadius: BorderRadiusGeometry.circular(25),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 52.0,vertical: 8),
                                  child: Column(
                                    children: [
                                      Icon(Icons.file_copy_rounded,color: Color(0xFFFFFFFF),),
                                      SizedBox(height:8 ,),
                                      Text('0',style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight(600),
                                        color: Color(0xFFFFFFFF),
                                      ),),
                                      SizedBox(height: 8,),
                                      Text('Done',style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight(500),
                                        color: Color(0xFFFFFFFF),
                                      ),),


                                    ],
                                  ),
                                ),
                              ),
                            ),
                         SizedBox(width: 8,),
                         Expanded(
                           child: Container(
                              height: 110,
                              //width: 144,
                              decoration: BoxDecoration(
                                color: Color(0xFF9887F5),
                                borderRadius: BorderRadiusGeometry.circular(25),
                              ),
                             child: Padding(
                               padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 52),
                               child: Column(
                                 children: [
                                   Icon(Icons.file_download_done_outlined,color: Color(0xFFFFFFFF),),
                                   SizedBox(height:8 ,),
                                   Text('0',style: TextStyle(
                                     fontSize: 24,
                                     fontWeight: FontWeight(600),
                                     color: Color(0xFFFFFFFF),
                                   ),),
                                   SizedBox(height: 8,),
                                   Text('To0-Do',style: TextStyle(
                                     fontSize: 10,
                                     fontWeight: FontWeight(500),
                                     color: Color(0xFFFFFFFF),
                                   ),),


                                 ],

                               ),
                             ),
                            ),
                         ),


                          ],
                                               ),



                  ],
                ),
              ),
            ),
            SizedBox(height: 18,),
            Container(
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadiusGeometry.circular(25),

              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('No tasks for today!',style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight(500),
                      color: Color(0xFF1F1F1F),
                    ),),
                    SizedBox(height: 5,),
                    Text('Tap the + button to add your first one.',style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight(400),
                      color: Colors.grey,
                    ),),
                  ],
                ),
              ),
            ),



          ],
        ),
      ),
      floatingActionButton:FloatingActionButton(
          onPressed: (){
            Get.to(HomeScreen());
          },
          backgroundColor: Color(0xFF3A9CCD),
        child: Icon(Icons.note_add,color: Colors.white,),


      ),
    );
  }
}
