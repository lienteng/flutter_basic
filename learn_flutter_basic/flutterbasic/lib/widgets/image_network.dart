import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ImageNetwork extends StatefulWidget {
  const ImageNetwork({super.key});

  @override
  State<ImageNetwork> createState() => _ImageNetworkState();
}

class _ImageNetworkState extends State<ImageNetwork> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ImageNetWort")),
      body: Center(
        child: Container(
          width: 400,
          height: 300,
          color: Colors.amber,

          /// Loading an image from the internet.
          child: Image.network(
            "https://cdn.pixabay.com/photo/2022/10/21/08/39/cat-7536508_640.jpg",
            fit: BoxFit.fill,
          ),

          /// Aligning the image to the bottom right of the container.
          alignment: Alignment.bottomRight,
        ),
      ),
    );
  }
}
