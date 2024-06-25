import 'package:akil_flutter_test/helper_q.dart';
import 'package:akil_flutter_test/widgets/text_q.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainContainer extends StatelessWidget {

  final String title;
  final String? subTitle;
  final Widget? logo;
  final Widget? body;
  final List<Widget>? actions;

  const MainContainer({super.key, required this.title, this.body, this.actions, this.logo, this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Stack(
        children: [
          Positioned(
            left: -50, right: -50, top: 0,
            child: Opacity(
              opacity: 0.3,
              child: Image.asset('assets/images/png/header_bg.png', fit: BoxFit.fitWidth,)
            ),
          ),
          Positioned(
            top: HelperQ.statusBarSize(context),
            left: 10, right: 10,
            child: SizedBox(
              height: 70,
              width: double.infinity,
              child: Row(
                children: [
                  Visibility(
                    visible: logo != null,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: logo,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: logo != null,
                    child: SizedBox(width: 10,)
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextQ(
                        text: title,
                        color: Colors.white,
                        size: 14,
                        weight: FontWeight.bold,
                      ),
                      SizedBox(height: 5,),
                      Visibility(
                        visible: subTitle != null,
                        child: TextQ(
                          text: subTitle ?? '',
                          color: Colors.white,
                          size: 13,
                          weight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(children: actions ?? [],)
                ],
              ),
            ),
          ),
          Positioned(
            left: 0, right: 0, bottom: 0, top: HelperQ.statusBarSize(context) + 70,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                child: body
              ),
            ),
          )
        ],
      ),
    );
  }
}
