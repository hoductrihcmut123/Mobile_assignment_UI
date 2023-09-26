import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/Forum/item/CircleImage.dart';
import 'package:myapp/Forum/item/HeartIcon.dart';

class CommentDetail extends StatelessWidget {
  const CommentDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xffF5f5f5),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 2.0, color: const Color(0xff0589F3))),
      height: 100,
      child: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 5),
        child: Row(
          children: [
            Column(
              children: const [
                CircleImage(imageRadius: 20),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Jessica",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: const Text(
                      "This is a nice place to eat, Please give me the address of the restaurant, Please give me the address of the restaurant, Pleas",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: const Align(
                        child: HeartIcon(),
                        alignment: Alignment.bottomRight,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
