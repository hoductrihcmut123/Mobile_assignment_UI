import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Icon_ extends StatelessWidget {
  const Icon_({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 55,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFF0589F3),
      ),
      child: FaIcon(FontAwesomeIcons.basketShopping),
      alignment: Alignment.center,
    );
  }
}
