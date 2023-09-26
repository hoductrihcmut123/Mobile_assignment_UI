import 'package:myapp/Components/Tabbar.dart';
import 'package:myapp/dbHelper/mongoDb.dart';
import 'package:myapp/services/theme_services.dart';
import 'DarkMode/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  // Calling database connect when app start
  WidgetsFlutterBinding.ensureInitialized();
  await MongoDatabase.connect();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UBT',
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeService().theme,
      home: TabBarGeneral(),
    );
    // return GetMaterialApp(
    //   home: Scaffold(
    //     body: SafeArea(
    //       child: FutureBuilder(
    //           future: MongoDatabase.getData(),
    //           builder: (context, AsyncSnapshot snapshot) {
    //             if (snapshot.connectionState == ConnectionState.waiting) {
    //               return Center(
    //                 child: CircularProgressIndicator(),
    //               );
    //             } else {
    //               if (snapshot.hasData) {
    //                 var totalData = snapshot.data.length;
    //                 if (totalData == 0) {
    //                   return Center(
    //                     child: Text("No data found"),
    //                   );
    //                 } else {
    //                   return Text("Total Data" + totalData.toString());
    //                 }
    //               } else {
    //                 return Center(
    //                   child: Text("Error"),
    //                 );
    //               }
    //             }
    //           }),
    //     ),
    //   ),
    // );
  }
}
