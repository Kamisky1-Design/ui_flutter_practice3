import 'package:flutter/material.dart';

class PromotionalCard extends StatelessWidget {
  const PromotionalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage('assets/background_image2.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Get Your\nSpecial Sale\nUp to 40%', 
            style:TextStyle(
             color: Colors.white,
             fontWeight: FontWeight.bold, 
             fontSize: 20,
            ) ,
            ),
            SizedBox(height: 10,),

            Container(
              height: 35,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(child: 
              Text('Shop Now',
              style: TextStyle(
                color: Colors.black,
              ),
              )
            ),
            ),
          ],
        ),
        Spacer(),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Container(
              height: 25,
              width: 5,
              decoration: BoxDecoration(
                color: Colors.deepOrangeAccent,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          SizedBox(height: 3,),
            Container(
              height: 12,
              width:5,
              decoration: BoxDecoration(
                color: Colors.orange.shade100,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            SizedBox(height: 3,),
            Container(
              height: 8,
              width:5,
              decoration: BoxDecoration(
                color: Colors.orange.shade100,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            SizedBox(height: 3,),
            Container(
              height: 6,
              width:5,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
        ],
      ),
     
      ],
    ),
    );
  }
}