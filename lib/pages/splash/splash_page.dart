import 'package:akil_flutter_test/pages/home/home_page.dart';
import 'package:akil_flutter_test/widgets/text_q.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  gotoMainPage(context) async {
    await Future.delayed(Duration(seconds: 3));

    Navigator.pushAndRemoveUntil(context, (MaterialPageRoute(builder: (_) => HomePage())), (_) => false);
  }

  @override
  Widget build(BuildContext context) {

    gotoMainPage(context);

    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 80,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Image.asset('assets/images/png/logo.png'),
              ),
            ),
            SizedBox(height: 30,),
            TextQ(
              text: 'Welcome To Company',
              weight: FontWeight.bold,
              size: 18,
              color: Colors.white,
            ),
            SizedBox(height: 5,),
            TextQ(
              text: 'Monitor All Emplye Just In Your Hand',
              size: 14,
              color: Colors.white,
            ),
            SizedBox(height: 100,),
            CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}
