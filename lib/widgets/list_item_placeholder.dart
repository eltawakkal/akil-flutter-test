import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ListItemPlaceholder extends StatelessWidget {
  const ListItemPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.black45,
      highlightColor: Colors.black26,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Row(
          children: [
            const CircleAvatar(
              backgroundColor: Colors.black12,
              radius: 30,
            ),
            const SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textPlaceHolder(100, 10),
                const SizedBox(height: 8,),
                textPlaceHolder(150, 10)
              ],
            )
          ],
        ),
      )
    );
  }

  Widget textPlaceHolder(double width, double height) => Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: Colors.black12,
      borderRadius: BorderRadius.circular(20)
    ),
  );
}
