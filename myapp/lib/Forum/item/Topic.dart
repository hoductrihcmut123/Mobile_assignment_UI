import 'package:flutter/material.dart';
import 'package:myapp/Forum/item/CircleImage.dart';
import 'package:myapp/Forum/item/HeartIcon.dart';

class Topic extends StatelessWidget {
  const Topic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: [
            Text(
              "Chủ đề",
              style: TextStyle(
                color: Theme.of(context).hoverColor,
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              child: Row(
                children: [
                  CircleImage(imageRadius: 25),
                  SizedBox(width: 30),
                  Text(
                    "Alexander Issac",
                    style: TextStyle(
                      color: Theme.of(context).hoverColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 35),
                  HeartIcon(),
                ],
              ),
              padding: const EdgeInsets.only(top: 40, left: 10),
            ),
          ],
        ),
        constraints: const BoxConstraints.expand(width: 370, height: 120),
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
            )
          ],
          color: Color(0xffF5f5f5),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
      ),
    );
  }
}
