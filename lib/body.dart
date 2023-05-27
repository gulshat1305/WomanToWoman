import 'package:flutter/material.dart';
import 'package:techqueens_mobile_app/constants.dart';
import 'package:techqueens_mobile_app/jobs.dart';

class Body extends StatelessWidget {
  const Body({super.key});
  

  @override
  Widget build(BuildContext context) {
  Size size=MediaQuery.of(context).size;
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      children: [
        //SEARCH////////////////
      Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Color.fromRGBO(242, 242, 242, 1),
          ),
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Colors.white
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:8.0),
          child: TextField(
            decoration: InputDecoration(
              suffixIcon: Image.asset('icons/search_icon.png'),
              border: InputBorder.none
            ),
          ),
        ),
      ),
      ////IMAGE///////////
      Image.asset('images/image1.png'),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text('Category', style: kTextStyle,),
      ),
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CategoryCard(image: 'images/card_image1.png',text: 'Vacancy',gecmeliSahypa: Jobs(),),
            CategoryCard(image: 'images/card_image2.png',text: 'Employee',gecmeliSahypa: Jobs() ,),
            CategoryCard(image: 'images/card_image3.png',text: 'Volunteer',gecmeliSahypa: Jobs(),),
            CategoryCard(image: 'images/card_image4.png',text: 'Projects',gecmeliSahypa: Jobs() ,),
          ],
        ),
      ),
      Container(
        width: size.width,
        height: size.height*0.4,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          )
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text('Recommend',style: kTextStyle,),
                  Spacer(),
                  TextButton(
                    onPressed: (){}, 
                    child: Text('see all',style: kTextStyle2))
                ],
              ),
            ),
            Container(
              height: size.width*0.6,
              width: size.width,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    RecommendCard(size: size, imageUrl: 'images/rec_card_image1.png',title: 'Design Thinking ', text: 'A company can be defined as an "artificial person", invisible. ',),
                    RecommendCard(size: size, imageUrl: 'images/rec_card_image2.png',title: 'Graphic Designer ', text: 'A company can be defined as an "artificial person", invisible. ',),
                    RecommendCard(size: size, imageUrl: 'images/rec_card_image1.png',title: 'Design Thinking ', text: 'A company can be defined as an "artificial person", invisible. ',),
                  ],
                ),
              ),
            )
          ],
        ),
      )
      ],
    );
  }
}

class RecommendCard extends StatelessWidget {
  const RecommendCard({
    required this.imageUrl,
    required this.title,
    required this.text,
    super.key,
    required this.size,
  });

  final Size size;
  final String imageUrl;
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Container(
        margin: EdgeInsets.only(right: 8),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: kBackgroundColor,
          border: Border.all(color: const Color.fromARGB(255, 200, 200, 200)),
          borderRadius: BorderRadius.circular(10)
        ),
        width: size.width*0.5,
        height: size.width*0.55,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(imageUrl),
            Text(title, style: kTextStyle3,),
            Text(text, style: kTextStyle4,)
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    required this.text,
    required this.image,
    this.gecmeliSahypa,
    super.key,
  });

  final String image;
  final String text;
  final Widget? gecmeliSahypa;

  @override
  Widget build(BuildContext context) {
  Size size=MediaQuery.of(context).size;
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            //Navigator.push(context, MaterialPageRoute(builder:(context) => gecmeliSahypa,));
          },
          child: Container(
            width: size.width*0.18,
            height: size.width*0.21,
            decoration: BoxDecoration(
              color:kCategoryCardColor,
              borderRadius: BorderRadius.circular(8)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(image),
            ),
          ),
        ),
        Text(text, style: kCategoryTextStyle,)
      ],
    );
  }
}
