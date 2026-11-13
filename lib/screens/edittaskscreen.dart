import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:lina/screens/homescreen.dart';
class EditTaskScreen extends StatelessWidget {
   EditTaskScreen({super.key});
TextEditingController nameController=TextEditingController();
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
        padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 32),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Edit Task',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight(700),
                  color: Color(0xFF111827),
                ),),
                Icon(Icons.edit_note,color: Colors.black,size: 30,),

              ],

            ),
            SizedBox(height: 35,),
            Container(
              height: 84,
              width: double.infinity,
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Learn Flutter',
                ),
              ),
            ),
            SizedBox(height: 23,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 36,
                  width: 102,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusGeometry.circular(10),
                    color: Color(0xFF9887F5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Row(
                      children: [
                        Icon(Icons.pending_actions,color: Colors.white,size: 20,),
                        SizedBox(width: 5,),
                        Text('ToDo',style: TextStyle(fontSize: 14,
                        fontWeight: FontWeight(600),
                          color: Colors.white,
                        ),),
                      ],
                    ),
                  ),
                ),
                SizedBox(width:16 ,),
                Container(
                  height: 36,
                  width: 102,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusGeometry.circular(10),
                    color: Color(0xFF76C499),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Row(
                      children: [
                        Icon(Icons.check_circle_outline,color: Colors.white,size: 20,),
                        SizedBox(width: 5,),
                        Text('Done',style: TextStyle(fontSize: 14,
                          fontWeight: FontWeight(600),
                          color: Colors.white,
                        ),),
                      ],
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(height: 23,),
            SizedBox(
              height:56 ,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF49BAF2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(50),
                  ),
                ),
                onPressed: (){
                  Get.to(HomeScreen());


                }, child: Text('Save changes',style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight(500),
                  color: Colors.white,
              ),),),
            ),

          ],
        ),
      ),

    );
  }
}
