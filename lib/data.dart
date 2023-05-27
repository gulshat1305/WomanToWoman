import 'package:flutter/material.dart';

class Data{
  final int id;
  final Image image;
  final String title, subtitle;
Data({
  required this.id,
  required this.image,
  required this.title,
  required this.subtitle
});
}

List<Data> dataList=[
Data(id: 1, image: Image.asset('dataimages/a1.png'),title:'Graphic designer',subtitle:'I have some questions about...' ),
Data(id: 2, image: Image.asset('dataimages/a2.png'),title:'Driver' ,subtitle:'http://www.warephase.com' ),
Data(id: 3, image: Image.asset('dataimages/a3.png'),title: 'Baby sitter',subtitle: 'Hope it will work in the week...' ),
Data(id: 4, image: Image.asset('dataimages/a4.png'),title:'Teacher of Math' ,subtitle:'Thank you! It really shine with...' ),
Data(id: 5, image: Image.asset('dataimages/a5.png'),title: 'Project assistent',subtitle:'Yes I know' ),
Data(id: 6, image: Image.asset('dataimages/a6.png'),title: 'Wylsacom',subtitle:'It will be online in 2 days' ),
Data(id: 7, image: Image.asset('dataimages/a7.png'),title: 'Wylsacom',subtitle:'It will be online in 2 days' ),
Data(id: 8, image: Image.asset('dataimages/a8.png'),title: 'Wylsacom',subtitle:'It will be online in 2 days' ),
Data(id: 9, image: Image.asset('dataimages/a9.png'),title: 'Wylsacom',subtitle:'It will be online in 2 days' ),

];