import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:lina/screens/edittaskscreen.dart';


class AddTaskScreen extends StatelessWidget {
   AddTaskScreen({super.key});
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
                Text('Add Task',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight(700),
                  color: Color(0xFF111827),
                ),),
                Icon(Icons.add,color: Colors.black,size: 20,),
                
              ],

            ),
            SizedBox(height: 35,),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText:'What needs to be done?',
              ),
            ),
            SizedBox(height: 19,),
            SizedBox(
              height:56 ,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF49BAF2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10),
                  ),
                ),
                onPressed: (){
                  Get.to(EditTaskScreen());


                }, child: Text('Save',style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight(500)
              ),),),
            ),
          ],
        ),
      ),
    );
  }
}
