import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/Forum/item/Topic_Icon.dart';

class Topic_List extends StatefulWidget {
  Topic_List({Key? key, currentTopic}) : super(key: key);
  int currentTopic = 0;
  @override
  State<Topic_List> createState() => _Topic_ListState();
}

class _Topic_ListState extends State<Topic_List> {
  List<String> chips = ["Apple", "Banana", "Cherry"];
  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 25.0,
      spacing: 25.0,
      alignment: WrapAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              widget.currentTopic = 0;
            });
          },
          child: Topic_Icon(
            currentTopic: widget.currentTopic,
            id: 0,
            topicIcon: FontAwesomeIcons.bowlFood,
            topicName: "Đồ ăn",
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              widget.currentTopic = 1;
            });
          },
          child: Topic_Icon(
            currentTopic: widget.currentTopic,
            id: 1,
            topicIcon: FontAwesomeIcons.bookOpen,
            topicName: "Tài liệu",
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              widget.currentTopic = 2;
            });
          },
          child: Topic_Icon(
            currentTopic: widget.currentTopic,
            id: 2,
            topicIcon: FontAwesomeIcons.house,
            topicName: "Nơi ở",
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              widget.currentTopic = 3;
            });
          },
          child: Topic_Icon(
            currentTopic: widget.currentTopic,
            id: 3,
            topicIcon: FontAwesomeIcons.solidLightbulb,
            topicName: "Chia sẻ",
          ),
        ),
      ],
    );
  }
}
