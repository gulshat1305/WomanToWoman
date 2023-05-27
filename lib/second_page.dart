import 'package:flutter/material.dart';
import 'package:techqueens_mobile_app/constants.dart';
import 'package:techqueens_mobile_app/third_page.dart';


class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SeconPageContainer(imageUrl: 'images/girl_image1.png',text: 'I am looking for a job',),
          SeconPageContainer(imageUrl: 'images/girl_image2.png',text: 'I am looking for an employee',)
        ],
      ) ,
    );
  }
}

class SeconPageContainer extends StatelessWidget {
  const SeconPageContainer({
    required this.imageUrl,
    required this.text,
    super.key,
  });

  final String imageUrl;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ThirdPage(),));
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical:MediaQuery.of(context).size.height/20),
        margin: EdgeInsets.all(MediaQuery.of(context).size.height/40),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.all(Radius.circular(25))
        ),
        child: Center(
          child: Column(
            children: [
              Image.asset(imageUrl),
              Text(text, style: kTextStyle5,)
            ],
          ),
        ),
      ),
    );
  }
}