import 'package:flutter/material.dart';
import 'package:myapp/Forum/item/CircleImage.dart';
import 'package:myapp/Forum/item/commentDetail.dart';

class PostDetailPage extends StatefulWidget {
  const PostDetailPage({Key? key}) : super(key: key);

  @override
  State<PostDetailPage> createState() => _PostDetailPageState();
}

class _PostDetailPageState extends State<PostDetailPage> {
  // set state

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 60),
                SizedBox(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                          onTap: () => {
                                Navigator.pop(context),
                              },
                          child: const Icon(Icons.arrow_back, size: 40)),
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                      ),
                      const CircleImage(),
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                      ),
                      const Text(
                        "Alexander Issac",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    height: 250,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xffF5f5f5),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor"),
                    )),
                const SizedBox(
                  height: 30,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text("Bình luận",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
                SizedBox(
                  height: 350,
                  child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(height: 10),
                    itemCount: 5,
                    itemBuilder: (
                      BuildContext context,
                      int index,
                    ) {
                      return const CommentDetail();
                    },
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: Row(
                    children: const [
                      CircleImage(),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            // border: OutlineInputBorder(),
                            labelText: "Thêm bình luận",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
