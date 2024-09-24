import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraandGallery extends StatefulWidget {
  CameraandGallery({Key? key});

  @override
  State<CameraandGallery> createState() => _CameraandGalleryState();
}

class _CameraandGalleryState extends State<CameraandGallery> {
  final ImagePicker picker = ImagePicker();
  File? imageFile;
  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Camera and Gallery"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text("Choose one"),
                    actions: [
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () async {
                              final XFile? camera = await picker.pickImage(
                                  source: ImageSource.camera);
                              setState(() {
                                if (camera != null) {
                                  imageFile = File(camera.path);
                                }
                              });
                            },
                            child: const Text(
                              "Camera",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () async {
                              final XFile? gallery = await picker.pickImage(
                                  source: ImageSource.gallery);
                                  setState(() {
                                      if (gallery != null) {
                                  imageFile = File(gallery.path);
                                }
                                  });
                            },
                            child: const Text(
                              "Gallery",
                              style: TextStyle(fontSize: 18),
                            ),
                          )
                        ],
                      )
                    ],
                  );
                },
              );
            },
            child: const Text(
              "Press me",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Center(
                      child:
            imageFile == null ? const Text("no image") : Image.file(imageFile!,height: 200),
                    )
        ],
      ),
    );
  }
}

//   void _showChooseDialog(BuildContext context, File imageFile,ImagePicker picker) {
    
// }
