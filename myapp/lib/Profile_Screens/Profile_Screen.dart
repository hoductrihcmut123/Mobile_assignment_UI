import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/Profile_Screens/Change_Info_Screen.dart';
import 'package:myapp/Profile_Screens/Setting_Screen.dart';
import 'package:myapp/Profile_Screens/Rating_Screen.dart';

import '../Components/BorderAvatar.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 55, left: 30, right: 30),
            child: Row(
              children: [
                Text(
                  "Hồ sơ người dùng",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Expanded(child: Container()),
                InkWell(
                  onTap: () {
                    Get.to(() => Settings());
                  },
                  child: Icon(
                    Icons.settings_outlined,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Container(
            padding: EdgeInsets.only(left: 40, right: 30),
            child: Row(
              children: [
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 46, top: 46),
                      child: TweenAnimationBuilder(
                        duration: const Duration(seconds: 2),
                        tween: Tween(begin: 0.0, end: 1.0),
                        curve: Curves.easeOutCubic,
                        builder: (BuildContext context, dynamic value,
                            Widget? child) {
                          return CustomPaint(
                            painter: BorderAvatar(
                                total: 360,
                                corner1: 45,
                                corner2: 45,
                                corner3: 45,
                                corner4: 45,
                                corner5: 45,
                                corner6: 45,
                                corner7: 45,
                                range: value),
                          );
                        },
                      ),
                    ),
                    Container(
                      width: 140,
                      height: 140,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 8,
                            color: Theme.of(context).primaryColor,
                          )),
                      child: CircleAvatar(
                        backgroundColor: Colors.brown.shade800,
                        foregroundImage: NetworkImage(
                            "https://kenh14cdn.com/203336854389633024/2022/1/19/photo-1-16426062808261722541298.jpg"),
                        maxRadius: 70,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    children: const [
                      Text(
                        "Angelina Jolie",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Điểm đóng góp:",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Color(0xff8F8F8F),
                        ),
                      ),
                      Text(
                        "100",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Color(0xff8F8F8F),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.only(left: 30, right: 30),
            width: MediaQuery.of(context).size.width,
            height: 100,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff4F37B3).withOpacity(0.50),
                  Color(0xff0589F3),
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
              borderRadius: BorderRadius.all(Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                  offset: Offset(6, 6),
                  blurRadius: 10,
                  color: Colors.grey.withOpacity(0.3),
                ),
                BoxShadow(
                  offset: Offset(-6, -6),
                  blurRadius: 10,
                  color: Colors.grey.withOpacity(0.3),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(right: 160),
                  child: Text(
                    "Số Dư Trong Ví:",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "25.700.000 VND",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 20),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(35),
                  topLeft: Radius.circular(35),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 280,
                      padding: EdgeInsets.only(left: 30),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            "Email",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "mobile@hcmut.edu.vn",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Tên người dùng",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "mobileassignment",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Mật khẩu",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextField(
                            obscureText: _isObscure,
                            readOnly: true,
                            controller:
                                TextEditingController(text: "Hellome123"),
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                            ),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                suffixIcon: IconButton(
                                    icon: Icon(_isObscure
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                    onPressed: () {
                                      setState(() {
                                        _isObscure = !_isObscure;
                                      });
                                    })),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => ChangeInfo());
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ))),
                        child: Center(
                          child: Text(
                            "Thay đổi thông tin",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => Rating());
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ))),
                        child: Center(
                          child: Text(
                            "Đánh giá ứng dụng",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
