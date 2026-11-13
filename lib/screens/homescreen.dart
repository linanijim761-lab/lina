import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:lina/screens/addtaskscreen.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                            //width: 144,
                            decoration: BoxDecoration(
                              color: Color(0xFF76C499),
                              borderRadius: BorderRadiusGeometry.circular(25),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 52.0,vertical: 8),
                              child: Column(
                                children: [
                                  Icon(Icons.card_giftcard,color: Color(0xFFFFFFFF),),
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
                                  Icon(Icons.card_giftcard,color: Color(0xFFFFFFFF),),
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
              height: 111,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusGeometry.circular(25),
                color: Color(0xFFFFFFFF),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height:28 ,
                      width:59 ,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusGeometry.circular(15),
                        color: Color(0xFF76C499),
                      ),
                      child: Center(
                        child: Text('Done',style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight(500),
                          color: Colors.white,

                        ),),
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text('Organize Study Desk',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight(500),
                      color: Color(0xFF1F1F1F),
                    ),),

                  ],
                ),
              ),
            ),
            SizedBox(height: 14,),
            Container(
              height: 111,
                width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusGeometry.circular(15),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 28,
                      width: 69,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusGeometry.circular(10),
                        color: Color(0xFF9887F5),
                      ),
                      child: Center(
                        child: Text('TODO',style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight(500),
                          color: Colors.white,
                        ),),
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text('Learn Flutter ',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight(500),
                      color: Color(0xFF1F1F1F),
                    ),),
                  ],
                ),
              ),
            ),
            


          ],
        ),
      ),
      floatingActionButton:FloatingActionButton(onPressed: (){
        Get.to(AddTaskScreen());
      },
        backgroundColor: Color(0xFF3A9CCD),
        child: Icon(Icons.note_add,color: Colors.white,),

      ),
    );
  }
}
