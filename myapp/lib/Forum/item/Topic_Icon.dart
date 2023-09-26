import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Topic_Icon extends StatefulWidget {
  Topic_Icon({
    Key? key,
    required this.topicIcon,
    required this.topicName,
    required this.id,
    required this.currentTopic,
  }) : super(key: key);

  IconData topicIcon;
  String topicName;
  int id;
  int currentTopic;

  @override
  State<Topic_Icon> createState() => _Topic_IconState();
}

class _Topic_IconState extends State<Topic_Icon> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 55,
          width: 55,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFF0589F3),
          ),
          child: FaIcon(widget.topicIcon,
              color: widget.id == widget.currentTopic
                  ? Colors.yellow
                  : Colors.white),
          alignment: Alignment.center,
        ),
        const SizedBox(
          height: 3,
        ),
        Container(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(widget.topicName),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: widget.id == widget.currentTopic
                    ? const Color(0xFF0589F3)
                    // Transparent color for border
                    : Colors.transparent,
                width: 3.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
