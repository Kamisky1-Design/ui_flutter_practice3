 import 'package:flutter/material.dart';

//Product Model
class Product{
  final String imagePath;

  Product({required this.imagePath});
} 

// List of dummy data matching the assets
final List<Product> popularProduct =[
  Product(imagePath: 'assets/man_background_image.jpg'),
  Product(imagePath: 'assets/woman_background_image.jpg'),
];


 class PopularProductCard extends StatelessWidget {
  const PopularProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Popular Product', 
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            ),
            Spacer(),
            Text('See All', 
            style: TextStyle(
              color: Colors.black54,
              fontSize: 20,
            ),
            )
          ],
        ),
        SizedBox(height: 16,),
    
     GridView.builder(
      shrinkWrap: true, //This prevents layout crashes inside verticatl list views
      physics: const NeverScrollableScrollPhysics(), //This disables inner scrolling 
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount:2, 
         crossAxisSpacing: 16,
         mainAxisSpacing: 16,
         childAspectRatio: 0.80, // This controls the height-to-width ratio of the card
         ),
         itemCount: popularProduct.length,
         itemBuilder: (context, index){
          final product = popularProduct[index];
          return Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(20),
            ),
        child: Stack(
          children: [
            //Main content layout
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Product image occupies the top part
                Expanded(
                  flex: 3, // This gives 75% of the card height to the image area
                  child: SizedBox(
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular( 20),
                        topRight: Radius.circular(20),
                      ),
                      child: Image.asset(
                        product.imagePath,
                        fit: BoxFit.cover,
                      ),
                      ),
                    ),
                  ),
      
                //Love heart overley Icon 
              ],
            ),
             Positioned(
                    top: 5,
                    right: 5,
                    child: CircleAvatar(
                      backgroundColor: Colors.white70,
                      radius: 18,
                      child: const Icon(
                        Icons.favorite_border,
                        color: Colors.black54,
                        size: 18,
                      ),
                    )
                    )
          ],
        ),
          );
         },
     ),
      ]
    );
  }
 }


    //Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text('Popular Product', 
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 25,
//               fontWeight: FontWeight.bold,
//             ),
//             ),
//             Spacer(),
//             Text('See All', 
//             style: TextStyle(
//               color: Colors.black54,
//               fontSize: 20,
//             ),
//             )
//           ],
//         ),
//         SizedBox(height: 30,),
//         Row( 
//           children: [
//             Container(
//               height: 200,
//               width: 180,
//               decoration: BoxDecoration(
//                 color: Colors.grey.shade200,
//                 borderRadius: BorderRadius.circular(16),
//                   ),
//                child: Stack(
//                 children: [
//                  Positioned.fill(
//                   child: ClipRRect(
//                     borderRadius: BorderRadiusGeometry.circular(16),
//                     child: Image(image: AssetImage('assets/man_background_image.jpg'),
//                       fit: BoxFit.cover,
//                 ) 
//                     ),
//                   )
                   
//                 ] 
//                ),   
//               ),
          
//             Spacer(),
//             Container(
//               height: 200,
//               width: 180,
//               decoration: BoxDecoration(
//                 color: Colors.grey.shade200,
//                 borderRadius: BorderRadius.circular(16),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }