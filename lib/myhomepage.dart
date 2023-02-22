import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  File? imageFile;
  void _getFromCamera() async {
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
      maxHeight: 500,
      maxWidth: 500,
    );
    setState(() {
      imageFile = File(pickedFile!.path);
    });

  }
  @override
  Widget build(BuildContext context) {
    return ListView(

        children:[
          SizedBox(height: 10,),
          imageFile != null?
          Container(
            child: Image.file(imageFile!),
          ):

          Container(
            child: Image(image: AssetImage('images/logo.png'),
            height: 380,),
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: ElevatedButton(
              child : Icon(Icons.camera,size: 80,),
              onPressed:(){
                _getFromCamera();
              },
              style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(10),
                    backgroundColor: Color(0xFF51A8B1)
                      ),
                  ),
          ),
          Container(
            width: double.infinity,
            child: const Text("Open Camera",style: TextStyle(fontSize: 18,
                fontWeight: FontWeight.w900,color:Color(0xFFA8CF45),
            fontFamily: 'Source Sans Pro',letterSpacing: 2.5),
              textAlign: TextAlign.center,),
          ),
        ],
      );
  }
}