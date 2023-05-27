

import 'package:flutter/material.dart';
import 'package:techqueens_mobile_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:techqueens_mobile_app/jobs.dart';
import 'package:techqueens_mobile_app/second_page.dart';

import 'body.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectIndex = 0;
  final List pages = [
    Body(),
    Jobs(),
    SecondPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:kBackgroundColor,
      appBar: buildAppBar(),
      body: pages[selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectIndex,
        onTap: (val){
          setState(() {
            selectIndex = val;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: SvgPicture.asset('icons/home_icon.svg',color: Colors.grey,), label: '',activeIcon: SvgPicture.asset('icons/home_icon.svg',color: kPurple,)
          ),
          BottomNavigationBarItem(icon: SvgPicture.asset('icons/search_icon.svg',color:Colors.grey,), label: '',activeIcon: SvgPicture.asset('icons/search_icon.svg',color: kPurple,)),
          BottomNavigationBarItem(icon: SvgPicture.asset('icons/profile_icon.svg',color:Colors.grey ,), label: '',activeIcon: SvgPicture.asset('icons/profile_icon.svg',color: kPurple,)),
        ])
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor:kBackgroundColor,
      actions:[Image.asset('icons/bell.png')]
    );
  }
}
