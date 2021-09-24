import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      errorWidget: (context, url, error) => SizedBox(
        width: 50,
        child: Center(
          child: const Icon(
            Icons.error,
            color: Colors.orangeAccent,
          ),
        ),
      ),
      fit: BoxFit.contain,
    );
  }
}
