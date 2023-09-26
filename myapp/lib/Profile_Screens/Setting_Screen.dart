import '../services/theme_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/Components/Tabbar.dart';


class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  static bool _isToggleOn = false;
  static bool _isNotificationOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Container(
          child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 25, left: 30),
            width: MediaQuery.of(context).size.width,
            height: 110,
            color: Theme.of(context).focusColor,
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(() => TabBarGeneral(
                          index: 3,
                        ));
                  },
                  child: Icon(
                    Icons.arrow_back_outlined,
                    size: 36,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Settings",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            padding: EdgeInsets.only(left: 30, right: 30),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                border: Border(
                    bottom: BorderSide(
              color: Colors.grey,
              width: 1,
            ))),
            child: Row(
              children: [
                Icon(
                  Icons.perm_data_setting,
                  size: 36,
                  color: Color(0xff0589F3),
                ),
                SizedBox(width: 15,),
                Text(
                  "Dark Mode",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Expanded(child: Container()),
                InkWell(
                  onTap: () {
                    ThemeService().switchTheme();
                    if(_isToggleOn)
                    {
                      _isToggleOn = false;
                      setState(() {
                      });
                    }
                    else
                    {
                      _isToggleOn = true;
                      setState(() {
                      });
                    }
                  },
                  child: _isToggleOn ? Icon(
                    Icons.toggle_on,
                    size: 70,
                    color: Color(0xff0589F3),
                  ) : Icon(
                    Icons.toggle_off,
                    size: 70,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            padding: EdgeInsets.only(left: 30, right: 30),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 1,
                    ))),
            child: Row(
              children: [
                Icon(
                  Icons.perm_data_setting,
                  size: 36,
                  color: Color(0xff0589F3),
                ),
                SizedBox(width: 15,),
                Text(
                  "Notification",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Expanded(child: Container()),
                InkWell(
                  onTap: () {
                    if(_isNotificationOn)
                    {
                      _isNotificationOn = false;
                      setState(() {
                      });
                    }
                    else
                    {
                      _isNotificationOn = true;
                      setState(() {
                      });
                    }
                  },
                  child: _isNotificationOn ? Icon(
                    Icons.toggle_on,
                    size: 70,
                    color: Color(0xff0589F3),
                  ) : Icon(
                    Icons.toggle_off,
                    size: 70,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
