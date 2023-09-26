import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:myapp/Components/Tabbar.dart';
import 'package:image_picker/image_picker.dart';
import '../Components/BorderAvatar.dart';

class ChangeInfo extends StatefulWidget {
  const ChangeInfo({Key? key}) : super(key: key);

  @override
  State<ChangeInfo> createState() => _ChangeInfoState();
}

class _ChangeInfoState extends State<ChangeInfo> {
  bool _isPress = false;
  bool _isNameFill = false;
  bool _isEmailFill = false;
  bool _isUsernameFill = false;
  bool _isPasswordFill = false;

  final bool _isObscure = true;
  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() {
        this.image = imageTemporary;
      });
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
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
                  "Thay đổi thông tin",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 25,
                  ),
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
                        child: image == null
                            ? CircleAvatar(
                                backgroundColor: Theme.of(context).primaryColor,
                                maxRadius: 70,
                                backgroundImage: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGZGbRNgG_g82yO7ammcXwvtEUDz-0fFxM5_aUUkJoCWT9Q5VBR3cTO9QsPJ4VW1nT0ZM&usqp=CAU"),
                              )
                            : CircleAvatar(
                                backgroundColor: Theme.of(context).primaryColor,
                                maxRadius: 70,
                                backgroundImage: FileImage(image!),
                              ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 120, top: 115),
                        child: InkWell(
                          onTap: () => pickImage(),
                          child: Icon(
                            Icons.add_circle,
                            size: 40,
                            color: Color(0xff0589F3),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30, bottom: 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          "Họ và tên",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 30, left: 30),
                    decoration: BoxDecoration(
                      color: Theme.of(context).hoverColor,
                      border: Border.all(width: 2, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(right: 20, left: 20),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.always,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Họ và tên',
                        ),
                        onSaved: (String? value) {
                          // This optional block of code can be used to run
                          // code when the user saves the form.
                        },
                        validator: (String? value) {
                          if (value!.isEmpty && _isPress == true) {
                            _isNameFill = false;
                            return '! Xin hảy điền họ và tên';
                          }
                          if (value.isNotEmpty) {
                            _isNameFill = true;
                            return null;
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30, bottom: 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          "Email",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 30, left: 30),
                    decoration: BoxDecoration(
                      color: Theme.of(context).hoverColor,
                      border: Border.all(width: 2, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(right: 20, left: 20),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.always,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email',
                        ),
                        onSaved: (String? value) {
                          // This optional block of code can be used to run
                          // code when the user saves the form.
                        },
                        validator: (String? value) {
                          if (value!.isEmpty && _isPress == true) {
                            _isEmailFill = false;
                            return '! Xin hãy điền địa chỉ email';
                          }
                          if (!value.contains('@') && _isPress == true) {
                            _isEmailFill = false;
                            return "! Địa chỉ email không đúng định dạng";
                          }
                          if (value.isNotEmpty && value.contains('@')) {
                            _isEmailFill = true;
                            return null;
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30, bottom: 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          "Tên người dùng",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 30, left: 30),
                    decoration: BoxDecoration(
                      color: Theme.of(context).hoverColor,
                      border: Border.all(width: 2, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(right: 20, left: 20),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.always,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Tên người dùng',
                        ),
                        onSaved: (String? value) {
                          // This optional block of code can be used to run
                          // code when the user saves the form.
                        },
                        validator: (String? value) {
                          if (value!.isEmpty && _isPress == true) {
                            _isUsernameFill = false;
                            return '! Xin hãy điền tên người dùng';
                          }
                          if (value.isNotEmpty) {
                            _isUsernameFill = true;
                            return null;
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30, bottom: 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          "Mật khẩu",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 30, left: 30),
                    decoration: BoxDecoration(
                      color: Theme.of(context).hoverColor,
                      border: Border.all(width: 2, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(right: 20, left: 20),
                      child: TextFormField(
                        obscureText: _isObscure,
                        autovalidateMode: AutovalidateMode.always,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Mật khẩu',
                        ),
                        onSaved: (String? value) {
                          // This optional block of code can be used to run
                          // code when the user saves the form.
                        },
                        validator: (String? value) {
                          if (value!.isEmpty && _isPress == true) {
                            _isPasswordFill = false;
                            return '! Xin hãy điền mật khẩu';
                          }
                          if (value.isNotEmpty) {
                            _isPasswordFill = true;
                            return null;
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  (_isNameFill == true &&
                          _isEmailFill == true &&
                          _isUsernameFill == true &&
                          _isPasswordFill == true)
                      ? InkWell(
                          onTap: () {
                            _isPress = true;
                            setState(() {});

                            Get.snackbar(
                              "",
                              "",
                              snackPosition: SnackPosition.BOTTOM,
                              backgroundColor: Color(0xff0589F3),
                              colorText: Colors.white,
                              icon: Icon(
                                Icons.tag_faces_rounded,
                                size: 50,
                                color: Colors.white,
                              ),
                              titleText: Text(
                                "   Successful",
                                style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.white,
                                ),
                              ),
                              messageText: Center(
                                child: Text(
                                  "Thay đổi thông tin cá nhân\n"
                                  " thành công !",
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            );
                          },
                          child: Container(
                            height: 50,
                            width: 140,
                            decoration: BoxDecoration(
                              color: Color(0xff0589F3),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Center(
                              child: Text(
                                "Thay đổi",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        )
                      : InkWell(
                          onTap: () {
                            _isPress = true;
                            setState(() {});
                          },
                          child: Container(
                            height: 50,
                            width: 140,
                            decoration: BoxDecoration(
                              color: Theme.of(context).canvasColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Center(
                              child: Text(
                                "Thay đổi",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
