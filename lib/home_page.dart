import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:typed_data';



import 'package:image_gallery_saver/image_gallery_saver.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
final ImagePicker picker = ImagePicker();
XFile? photo;

 
 @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:  const Text ('Flutter Basic', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
          elevation: 3,
          backgroundColor: Color.fromARGB(255, 1, 118, 5),
          actions: const[
            Icon(Icons.person, color: Colors.white,),
            SizedBox(width: 10,),
            Icon(Icons.settings, color: Colors.white,),
            SizedBox(width: 10,),
          ],
          leading: const Icon(Icons.menu, color: Colors.white,),
        ),
        body: Center (child: Container (
          height: 300,
          color: Colors.green,
          child: photo == null?
          const SizedBox():
          Image.file(File(photo!.path)),

        ),
        ),
        floatingActionButton: FloatingActionButton(
           backgroundColor: const Color.fromARGB(255, 1, 118, 5),
              onPressed: () async {
                photo = await picker.pickImage(source: ImageSource.camera);
              },
              child: const Icon (Icons.camera,
              color: Colors.white,
              ),
        ),
      ),
    );
  }
}

            