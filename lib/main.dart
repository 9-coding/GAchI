import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gachi/components/bottomBar.dart';
import 'package:gachi/pages/VolunteerMainPage.dart';
import 'package:gachi/pages/loginMain.dart';
import 'package:gachi/pages/mainPost.dart';
import 'package:gachi/pages/profileMain.dart';
import 'package:gachi/pages/makeGachi.dart';
import 'package:gachi/pages/settingsMain.dart';

var heart = false;

PageController controller = PageController();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/loginHome',
      routes: {
        '/':(context)=>MyHomePage(title: 'Flutter Demo Home Page' ),
        '/makeGachi':(context) => MakeGachi(),
        '/recurit':(context)=>RescuritPage(),
        '/loginHome':(context)=>LoginMainPage(),
        '/login':(context)=>LoginMainPage(),
        '/profile':(context)=>ProfilePage(),
        '/settings':(context)=>SettingsPage(),
        '/profileModify':(context)=>ProfileModify(),
      //  '/regiseter':(context)=>(), 여기에 회원가입 페이지추가하면 돼요.
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: const [
          Center(
              child: VolunteerMainPage()
          ),
          Center(child: Text('관심')),
          Center(child: Text('채팅')),
          Center(child: ProfilePage()),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: BottomBar(),
      floatingActionButton: const FloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
