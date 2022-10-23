import 'package:flutter/material.dart';
import 'package:new_project/contorller/app_controller.dart';
import 'package:new_project/screen/second_screen.dart';
import 'package:provider/provider.dart';
class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final firstData=Provider.of<AppController>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("FirstPage"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(firstData.value.toString(),style: TextStyle(fontSize: 40),),
            SizedBox(height: 15,),
            ElevatedButton(
              onPressed: (){
                firstData.increment();
              },
              child: Text("Add",style: TextStyle(fontSize: 40)),
             ),
              SizedBox(height: 15,),
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_)=>SecondScreen()));
              },
              child: Text("SecondScreen",style: TextStyle(fontSize: 30),),
             ),
          ],
        ),
      ),
    );
  }
}