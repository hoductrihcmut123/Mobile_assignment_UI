import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Components/Tabbar.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Rating extends StatefulWidget {
  const Rating({Key? key}) : super(key: key);

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  bool _isVote = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
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
                    "Đánh giá ứng dụng",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 120,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/Logo.png"),
                fit: BoxFit.fitHeight,
              )),
            ),
            SizedBox(height: 30,),
            RatingBar.builder(
              initialRating: 0,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: false,
              itemCount: 5,
              itemSize: 55,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Color(0xff0589F3),
              ),
              onRatingUpdate: (rating) {
                _isVote = true;
                setState(() {
                });
                print(rating);
              },
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.only(left: 30, bottom: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    " Phản hồi",
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
              height: 270,
              decoration: BoxDecoration(
                color: Theme.of(context).hoverColor,
                border: Border.all(width: 2, color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Container(
                margin: EdgeInsets.only(right: 20, left: 20),
                child: TextFormField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  textInputAction: TextInputAction.next,  // Chú ý đoạn này, chuyển qua lại giữa next và newline
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Những ý kiến phản hồi của bạn về ứng dụng của chúng mình',
                  ),
                  onSaved: (String? value) {
                    // This optional block of code can be used to run
                    // code when the user saves the form.
                  },
                ),
              ),
            ),
            SizedBox(height: 35,),
            (_isVote == true ) ?
            InkWell(
              onTap: () {
                Get.snackbar("", "",
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Color(0xff0589F3),
                  colorText: Colors.white,
                  icon: Icon(
                    Icons.tag_faces_rounded,
                    size: 50,
                    color: Colors.white,
                  ),
                  titleText: Text(
                    "   Thank you",
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                    ),
                  ),
                  messageText: Center(
                    child: Text(
                      "  Cảm ơn bạn đã dành thời gian\n" "đánh giá ứng dụng của chúng tôi !",
                      style: TextStyle(
                        fontSize: 20,
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
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Center(
                  child: Text(
                    "Gửi",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ) : InkWell(
              onTap: () {
                print('Người dùng chưa vote sao');
              },
              child: Container(
                height: 50,
                width: 140,
                decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Center(
                  child: Text(
                    "Send",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40,),
          ],
        ),
      ),
    );
  }
}
