import 'package:flutter/material.dart';
import 'package:myapp/Forum/item/Topic.dart';
import 'package:myapp/Forum/item/Topic_list.dart';
import 'package:myapp/Forum/page/Post.dart';
import 'package:myapp/Forum/page/PostDetail.dart';

class Forum extends StatelessWidget {
  const Forum({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 60),
            SizedBox(
              height: 440,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: 5,
                itemBuilder: (
                  BuildContext context,
                  int index,
                ) {
                  return GestureDetector(
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PostDetailPage(),
                        ),
                      ),
                    },
                    child: Column(
                      children: const [
                        SizedBox(
                          height: 15,
                        ),
                        Topic(),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: SizedBox(
                child: Column(children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                        height: 50,
                        child: Row(children: const [
                          Padding(padding: EdgeInsets.only(left: 30)),
                          Text(
                            "Chủ đề",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ])),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Expanded(
                    flex: 1,
                    child: SizedBox(height: 100, child: Topic_List()),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).focusColor,
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Post()),
          );
        },
      ),
    );
  }
}
