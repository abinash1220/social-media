import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class PhotoPreview extends StatefulWidget {
  String images;
  PhotoPreview({super.key, required this.images});

  @override
  State<PhotoPreview> createState() => _PhotoPreviewState();
}

class _PhotoPreviewState extends State<PhotoPreview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PhotoView(
        imageProvider: NetworkImage(widget.images),
      ),
    );
  }
}
