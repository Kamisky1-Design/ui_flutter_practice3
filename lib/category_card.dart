import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text('Categories', 
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          ),
          Spacer(),
          Text('See All', 
          style: TextStyle(
            fontSize: 20,
            color: Colors.black54,
          ),
          ),
          ] 
          ),
      SizedBox(height: 16),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: [
              Container(
                height: 45,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Text('All', 
                style: TextStyle(
                  fontSize: 18, 
                  color: Colors.white,
                ),
                )
                ),
              ),
              SizedBox(width: 12,),
              Container(
                height:45,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                child: Text('Men', 
                style: TextStyle(
                  fontSize: 20,
                ), 
                ),
                ),
              ),
              SizedBox(width: 12,),
              Container(
                height:45 ,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                child: Text('Women', 
                style: TextStyle(
                  fontSize: 20,
                ), 
                ),
                ),
              ),
              SizedBox(width: 12,),
              Container(
                height:45 ,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                child: Text('Girls', 
                style: TextStyle(
                  fontSize: 20,
                ), 
                ),
                ),
              ),
            ],
          ),
      ),
          ],
    );
  }
}