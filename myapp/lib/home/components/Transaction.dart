import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/home/components/Icon_.dart';

class Transaction extends StatefulWidget {
  const Transaction({Key? key}) : super(key: key);
  // , required this.topic, required this.date, required this.price

  // String topic = "";
  // String date = "";
  // String price = "";

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.transparent,
            blurRadius: 0,
            spreadRadius: 0,
          ),
        ],
      ),
      width: MediaQuery.of(context).size.width * 0.9,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.08,
        child: Row(
          children: [
            Icon_(),
            Padding(padding: EdgeInsets.only(right: 20)),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                SizedBox(
                  height: 5,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Shopping",
                    // align text to left
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text("13 Feb 2022, 7:30 pm"),
              ],
            ),
            Padding(padding: EdgeInsets.only(right: 30)),
            Text(
              "\$500",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            Padding(padding: EdgeInsets.only(right: 10)),
            IconButton(
              onPressed: () {
                print("Hello");
              },
              icon: FaIcon(
                FontAwesomeIcons.angleRight,
                color: Colors.black,
                size: 25,
              ),
            ),
            // Padding(padding: EdgeInsets.only(bottom: 20)),
          ],
        ),
      ),
    );
  }
}
