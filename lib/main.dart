import 'package:contraflutterkit/blog/blog_home_page.dart';
import 'package:contraflutterkit/blog/blog_list_page_four.dart';
import 'package:contraflutterkit/blog/blog_list_page_one.dart';
import 'package:contraflutterkit/blog/blog_main_page.dart';
import 'package:contraflutterkit/blog/blog_staggered_grid_page.dart';
import 'package:contraflutterkit/chat/chat_home_page.dart';
import 'package:contraflutterkit/chat/chat_list_page.dart';
import 'package:contraflutterkit/chat/chat_messages_page.dart';
import 'package:contraflutterkit/login/login_form_one.dart';
import 'package:contraflutterkit/login/login_form_two.dart';
import 'package:contraflutterkit/login/login_main.dart';
import 'package:contraflutterkit/login/signup_form_one.dart';
import 'package:contraflutterkit/onboarding/onboard_main.dart';
import 'package:contraflutterkit/onboarding/type3/pager.dart';
import 'package:contraflutterkit/onboarding/welcome_screen.dart';
import 'package:contraflutterkit/shopping/shopping_detail_page_one.dart';
import 'package:contraflutterkit/shopping/shopping_detail_page_two.dart';
import 'package:contraflutterkit/shopping/shopping_home_page.dart';
import 'package:contraflutterkit/shopping/shopping_home_page_one.dart';
import 'package:contraflutterkit/shopping/shopping_home_page_two.dart';
import 'package:contraflutterkit/shopping/shopping_list_page_type_one.dart';
import 'package:contraflutterkit/shopping/shopping_list_page_type_two.dart';
import 'package:contraflutterkit/shopping/shopping_main_page.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:contraflutterkit/utils/empty_screen.dart';
import 'package:flutter/material.dart';

import 'blog/blog_detail_page.dart';
import 'blog/blog_list_page_three.dart';
import 'blog/blog_list_page_two.dart';
import 'login/contact_us_form.dart';
import 'login/login_form_type_four.dart';
import 'login/login_form_type_three.dart';
import 'login/verification_type.dart';
import 'onboarding/type1/pager.dart';
import 'onboarding/type2/pager.dart';
import 'onboarding/type4/onboard_page_four.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contra Flutter Kit',
      theme: ThemeData(
          fontFamily: 'Montserrat',
          primarySwatch: Colors.blue,
          primaryColor: persian_blue),
      home: MyHomePage(title: 'Contra Flutter Kit Demo'),
      routes: {
        '/onboard_all': (context) => OnboardPageMain(),
        '/onboard_type_one': (context) => OnboardingPagerTypeOne(),
        '/onboard_type_two': (context) => OnboardingPagerTypeTwo(),
        '/onboard_type_three': (context) => OnboardingPagerTypeThree(),
        '/onboard_type_four': (context) => OnboardPageTypeFour(),
        '/empty_state': (context) => EmptyState(),
        '/welcome_screen': (context) => WelcomeScreenPage(),
        '/login_all': (context) => LoginMainPage(),
        '/login_type_one': (context) => LoginFormTypeOne(),
        '/login_type_two': (context) => LoginFormTypeTwo(),
        '/login_type_three': (context) => LoginFormTypeThree(),
        '/login_type_four': (context) => LoginFormTypeFour(),
        '/signin_type_one': (context) => SignInFormTypeOne(),
        '/login__type_verification': (context) => VerificationType(),
        '/contact_us_form': (context) => ContactUsForm(),
        '/chat_home': (context) => ChatHomePage(),
        '/chat_screen_page': (context) => ChatListPage(),
        '/chat_list_page': (context) => ChatMessagesPage(),
        '/shopping_main_page': (context) => ShoppingMainPage(),
        '/shopping_list_page_one': (context) => ShoppingListPageOne(),
        '/shopping_list_page_two': (context) => ShoppingListPageTwo(),
        '/shopping_home_page': (context) => ShoppingHomePage(),
        '/shopping_home_page_one': (context) => ShoppingHomePageOne(),
        '/shopping_home_page_two': (context) => ShoppingHomePageTwo(),
        '/shopping_detail_page_one': (context) => ShoppingDetailPageOne(),
        '/shopping_detail_page_two': (context) => ShoppingDetailPageTwo(),
        '/blog_main_page': (context) => BlogMainPage(),
        '/blog_home_page': (context) => BlogHomePage(),
        '/blog_list_page_one': (context) => BlogListPageOne(),
        '/blog_list_page_two': (context) => BlogListPageTwo(),
        '/blog_list_page_three': (context) => BlogListPageThree(),
        '/blog_list_page_four': (context) => BlogListPageFour(),
        '/blog_staggered_page_four': (context) => BlogStaggeredGridPage(),
        '/blog_detail_page': (context) => BlogDetailPage(),
        '/blog_featured_page': (context) => ShoppingDetailPageTwo(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Onboarding and Splash"),
              onTap: () {
                Navigator.pushNamed(context, "/onboard_all");
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Forms, Login, Signup"),
              onTap: () {
                Navigator.pushNamed(context, "/login_all");
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Chatting Screens"),
              onTap: () {
                Navigator.pushNamed(context, "/chat_home");
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Shopping Screens"),
              onTap: () {
                Navigator.pushNamed(context, "/shopping_main_page");
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Blog Screens"),
              onTap: () {
                Navigator.pushNamed(context, "/blog_main_page");
              },
            ),
            Container(
              child: ListTile(
                contentPadding: EdgeInsets.all(20),
                trailing: Icon(Icons.navigate_next),
                title: Text("Onboarding"),
                onTap: () {
                  Navigator.pushNamed(context, "/empty_state");
                },
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Profile"),
              onTap: () {
                Navigator.pushNamed(context, "/empty_state");
              },
            )
          ],
        ),
      ),
    );
  }
}
