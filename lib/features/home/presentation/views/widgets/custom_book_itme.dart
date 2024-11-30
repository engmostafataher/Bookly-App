
import 'package:buckley_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookItme extends StatelessWidget {
  const CustomBookItme({super.key});

  @override
  Widget build(BuildContext context) {
    return 
      
       AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          height: 100,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.blue,
              image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    AssetsData.testImage,
                  ))),
        ),
      
    );
  }
}
