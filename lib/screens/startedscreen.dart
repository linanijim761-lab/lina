import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:lina/screens/welcomescreen.dart';
class StartedScreen extends StatelessWidget {
   StartedScreen({super.key});
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
        padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 38),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Lets get started',style: TextStyle(
              fontSize:30 ,
              fontWeight: FontWeight(700),
              fontFamily: 'Tiny',
            ),),
            SizedBox(height: 26,),
            Text('What should we call you?',style: TextStyle(
              fontSize:16 ,
              fontWeight: FontWeight(400),
              color: Colors.grey
            ),),
            SizedBox(height: 19,),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Your name'
              ),
            ),
            SizedBox(height: 20,),
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
                  Get.off(WelcomeScreen());

                  }, child: Text('Save',style: TextStyle(
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
