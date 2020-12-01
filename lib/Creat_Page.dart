import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CreatePage extends StatefulWidget {
  @override
  _CreatePageState createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final textEditingController = TextEditingController();

  File _image;
  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildbody(),
      floatingActionButton: FloatingActionButton(onPressed: _getImage,
          child: Icon(Icons.add_a_photo),
      ),
    );
  }

  _buildbody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _image == null ? Text("no image") : Image.file(_image),
          TextField(
            controller: textEditingController,
          )
        ],
      ),
    );
  }

  Future<void> _getImage() async {
    PickedFile image = await ImagePicker().getImage(source: ImageSource.gallery);

    setState(() {
      _image = File(image.path);
    });

  }
}

Widget _buildAppBar() {
  return AppBar(
    actions: [
      IconButton(icon: Icon(Icons.send), onPressed: () {})
    ],
    backgroundColor: Colors.white,
  );
}
