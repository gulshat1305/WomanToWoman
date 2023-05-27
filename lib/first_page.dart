import 'package:flutter/material.dart';
import 'package:techqueens_mobile_app/constants.dart';
import 'package:techqueens_mobile_app/home_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
  Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/Bubbles.png",),fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('images/woman_to_woman.png'),
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
                    child: Center(child: Text('Discover the platform', style: TextStyle(color: Colors.white),)),
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