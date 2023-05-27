import 'package:flutter/material.dart';

import 'constants.dart';
import 'home_page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
  Size size=MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Column(
              children: [
                Text('Sign-up', style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w500,
                ),),
                InputForm(text: 'First name',),
                InputForm(text: 'Last name',),
                InputForm(text: 'Email',),
                InputForm(text: 'Password',),
              ],
            ),
            Column(
                children: [
                  TextButton(onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(),));
                  }, child: Container(
                    margin: EdgeInsets.only(bottom: 25),
                    width: size.width*0.7,
                    color: kPurple,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal:15.0, vertical: 15),
                      child: Center(child: Text('Sign-up', style: TextStyle(color: Colors.white),)),
                    ),
                  )),
                  const Text('You have an account ?',),
                  TextButton(onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(),));
                  },
                  child:const Text('Log-in'))
                ],
              )
          ],
        ),
      ),
    );
  }
}

class InputForm extends StatelessWidget {
  const InputForm({
    required this.text,
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Color.fromRGBO(226, 219, 255, 1),
          borderRadius: BorderRadius.all(Radius.circular(8)) ),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: text,
          ),
        ),
      ),
    );
  }
}