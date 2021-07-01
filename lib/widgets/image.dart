import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Doraemon Image')),
      body: Center(
          child: Container(
        height: 300,
        width: 250,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(blurRadius: 10, color: Colors.black, spreadRadius: 5.0)
            ],
            image: DecorationImage(
              image: NetworkImage(
                'https://m.media-amazon.com/images/M/MV5BMGIzZmQ4YmUtZGQ4NC00OTkyLWE1MGUtMTQ3N2Y3N2E2NWEyXkEyXkFqcGdeQXVyODAzNzAwOTU@._V1_UY1200_CR85,0,630,1200_AL_.jpg',
              ),
              fit: BoxFit.cover,
            ),
            color: Colors.red,
            borderRadius: BorderRadius.circular(20)),
      )),
    );
  }
}




// CachedNetworkImage(
//           imageUrl:
//               'https://variety.com/wp-content/uploads/2014/11/stand-by-me-doraemon.jpg?w=681&h=383&crop=1',
//           placeholder: (context, url) =>
//               Center(child: CircularProgressIndicator()),
//           errorWidget: (context, url, error) => Icon(Icons.error),
//         ),
