import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 44,
      child: Row(
        children: [Expanded(
          child: Container(
              height: 44,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(15),
              ),
            
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                   crossAxisAlignment: CrossAxisAlignment.start, 
                  children: [
                    Icon( 
                      Icons.search, 
                      color: Colors.black38,
                      size: 35,),
                      Center(
                        child: Text('Search..', 
                        style: TextStyle(
                          color: Colors.black38,
                          fontSize: 18,),
                        )
                        ),
                  ],
                
                ),
              ),
          
            ),
        ),
        SizedBox(width: 12),
          Container(
            height: 44,
            width: 44,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Icon(
              Icons.tune, 
              color: Colors.black,),
          )
        ],
      ),

    );
  }
}