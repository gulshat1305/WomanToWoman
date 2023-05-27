import 'package:flutter/material.dart';
import 'package:techqueens_mobile_app/constants.dart';

import 'data.dart';

class Jobs extends StatefulWidget {
  const Jobs({super.key});

  @override
  State<Jobs> createState() => _JobsState();
}

class _JobsState extends State<Jobs> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('   Jobs', style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w900
          ),),
        ),
         Container(
              width: size.width,
              height: size.height,
              child: ListView.builder(
                itemCount: dataList.length,
                itemBuilder:(context, index) => Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  padding: EdgeInsets.all(10),
                  color: index.isEven?kBackgroundColor:Colors.white,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage:AssetImage(dataList[index].image.toString()),
                      child: dataList[index].image),
                    title: Text(dataList[index].title, style: kTextStyle6,),
                    subtitle:Text(dataList[index].subtitle, style: kTextStyle7,),
                    trailing: Container(
                      color: kPurple,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextButton(child: Text('Apply',style: TextStyle(color: Colors.white),), onPressed: (){},),
                    ),
                  ),
                ),),
            ),
      ],
    );
  }
}
