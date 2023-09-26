// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Forum/item/Topic_list.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        child: SizedBox(
          height: 550,
          width: double.infinity,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              // shadow
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 25,
                    child: Align(
                      alignment: const Alignment(0.95, -0.8),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "Đóng",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: Align(
                      alignment: Alignment(-1, 0.5),
                      child: Text(
                        "Tên bài đăng",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      // labelText: "Tên bài đăng",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: Align(
                      alignment: Alignment(-1, 0.5),
                      child: Text(
                        "Nội dung",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      // hintText: "Nội dung bài đăng",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Expanded(
                    child: SizedBox(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50,
                            child: Align(
                              alignment: Alignment.center,
                              child: Row(
                                children: [
                                  Text(
                                    "Chủ đề",
                                    style: GoogleFonts.openSans(
                                      textStyle: const TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Expanded(
                            flex: 1,
                            child: SizedBox(
                              height: 100,
                              child: Topic_List(),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 24),
                          shape: const StadiumBorder(),
                          fixedSize: const Size(220, 60)),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Đăng bài"),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
        alignment: Alignment.bottomCenter,
      ),
    );
  }
}
