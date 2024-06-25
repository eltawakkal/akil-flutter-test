import 'package:akil_flutter_test/widgets/text_q.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {

  final String firstName;
  final String lastName;
  final String email;
  final String avatarUrl;

  const ListItem({super.key, required this.firstName, required this.lastName, required this.email, required this.avatarUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          color: Colors.orange.withAlpha(20),
          borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.orange.shade200, width: 2),
              borderRadius: BorderRadius.circular(60)
            ),
            height: 60, width: 60,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: FadeInImage.assetNetwork(
                placeholder: 'assets/images/gif/loading.gif',
                image: avatarUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextQ(
                text: '$firstName $lastName',
                weight: FontWeight.bold,
                size: 14,
              ),
              SizedBox(height: 5,),
              TextQ(
                text: email,
                size: 13,
                color: Colors.deepOrange,
              )
            ],
          ),
        ],
      ),
    );
  }
}
