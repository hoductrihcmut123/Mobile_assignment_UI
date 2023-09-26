import 'package:flutter/material.dart';
import 'package:myapp/Profile_Screens/Profile_Screen.dart';
import 'package:myapp/Forum/page/Forum.dart';
import 'package:myapp/home/home_page_screen.dart';
import 'package:myapp/transactions/view/transactions_screen.dart';

class TabBarGeneral extends StatefulWidget {
  final int index;
  const TabBarGeneral({Key? key, @required this.index = 0}) : super(key: key);

  @override
  State<TabBarGeneral> createState() => _TabBarGeneralState();
}

class _TabBarGeneralState extends State<TabBarGeneral> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
      initialIndex: widget.index,
      length: 4,
      child: Stack(
        children: <Widget>[
          Scaffold(
            backgroundColor: Theme.of(context).primaryColor,
            bottomNavigationBar: Container(
              padding: EdgeInsets.only(bottom: 0, top: 0),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade700.withOpacity(0.1),
                    spreadRadius: 10,
                    blurRadius: 3,
                    offset: Offset(0, 5))
                ]
              ),
              child: TabBar(
                tabs: const <Widget>[
                  Tab(
                    icon: Icon(
                      Icons.home,
                      size: 30,
                    ),
                    text: "Trang chủ",
                    iconMargin: EdgeInsets.only(bottom: 0),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.account_balance_wallet,
                      size: 30,
                    ),
                    text: "Thu chi",
                    iconMargin: EdgeInsets.only(bottom: 0),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.forum_outlined,
                      size: 30,
                    ),
                    text: "Diễn đàn",
                    iconMargin: EdgeInsets.only(bottom: 0),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.account_circle,
                      size: 30,
                    ),
                    text: "Hồ sơ",
                    iconMargin: EdgeInsets.only(bottom: 0),
                  ),
                ],
                labelColor: Theme.of(context).focusColor,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                      color: Theme.of(context).focusColor, width: 4.0),
                  insets: EdgeInsets.only(bottom: 70),
                ),
                unselectedLabelColor: Theme.of(context).cardColor,
              ),
            ),
            body: TabBarView(
              children: const <Widget>[
                HomePage(),
                TransactionScreen(),
                Forum(),
                Profile(),
              ],
              physics: NeverScrollableScrollPhysics(),
            ),
          ),
        ],
      ),
    ));
  }
}
