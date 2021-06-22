import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatefulWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  _ImageWidgetState createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Image Widget')),
        //supports images and gifs too
        //Image.network, Image.asset, CachedNetworkImage
        //Container decoration - borderRadius, shadow
        //FadeInImage
        body:
            // Container(
            //   padding: EdgeInsets.all(20),
            //   child: Center(
            //     child: Container(
            //       height: 300,
            //       decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(20),
            //           image: DecorationImage(
            //               image: NetworkImage(
            //                 'https://cdn-japantimes.com/wp-content/uploads/2020/05/np_file_13590.jpeg',
            //               ),
            //               fit: BoxFit.cover),
            //           boxShadow: [
            //             BoxShadow(
            //               blurRadius: 20,
            //               spreadRadius: 5,
            //               color: Colors.black,
            //             )
            //           ]),
            //     ),
            // ),
            // ),
            Stack(
          children: <Widget>[
            Center(child: CircularProgressIndicator()),
            Center(
              child: FadeInImage.assetNetwork(
                placeholder: 'assets/download.png',
                image:
                    'https://cdn-japantimes.com/wp-content/uploads/2020/05/np_file_13590.jpeg',
              ),
            ),
          ],
        ));
  }
}
