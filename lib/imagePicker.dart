import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class Picker extends StatefulWidget {
  const Picker({Key? key}) : super(key: key);

  @override
  State<Picker> createState() => _PickerState();
}
class _PickerState extends State<Picker> {
  File? _imagePicker;
  final ImagePicker _picker = ImagePicker();
  fetchImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery, maxHeight: double.infinity, maxWidth: double.infinity);
    if(image==null){
      return;
    }
    setState(() {
      _imagePicker=File(image.path);
    });
  }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Image Picker',
            style: TextStyle(fontSize: 30),
          ),
        ),
        body: Center(
          child: _imagePicker == null ? null : Image.file(_imagePicker!),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: fetchImage,
        ),

      );
    }
  }

