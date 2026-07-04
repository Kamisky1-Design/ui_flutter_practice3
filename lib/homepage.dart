import 'package:flutter/material.dart';
import 'search_bar.dart';
import 'category_card.dart';
import 'promotional_card.dart';
import 'popular_product_card.dart';
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: [
              Container(
                height: 50,
                width: 50,
                 decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage('assets/user.jpeg'),
                    fit: BoxFit.cover),
                 ),     
              ), 
              const SizedBox( width: 12,),  
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hello Komla', 
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                  ),
                  SizedBox(height: 5,),
                  Text('Good Morning!', 
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize:18,
                  ),)
                ],
              ),
              Spacer(),
              SizedBox(
            child: Container(
              height: 44,
              width: 44,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(
                Icons.notifications_outlined,
                color: Colors.black,),
            ),
              ),
              SizedBox(width: 8,),
              Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(
                  Icons.shopping_bag_outlined
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          CustomSearchBar(),
          SizedBox(height: 30,),
         CategoryCard(), 
         SizedBox(height: 30,),
         PromotionalCard(),
         SizedBox(height: 30,),
         PopularProductCard(),   
        ],
      ),
    );
  }
}