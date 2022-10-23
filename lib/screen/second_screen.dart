import 'package:flutter/material.dart';
import 'package:new_project/contorller/app_controller.dart';
import 'package:provider/provider.dart';
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final secondData=Provider.of<AppController>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(child: Text(secondData.value.toString(),style: TextStyle(fontSize: 40),)),
    );
  }
}