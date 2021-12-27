import 'package:amazon_ui/shared/componants.dart';
import 'package:flutter/material.dart';

class BuildFAB extends StatelessWidget {
  const BuildFAB({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: ()
      {
        showModalBottomSheet(
            context: context,
            builder:(context) =>  Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40.0,
              ),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30.0,
                    ),
                    const Text(
                      'Shop by',
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                    Row(
                     children:const[

                       Text(
                         'Category',
                         style: TextStyle(
                           fontSize: 25.0,
                           fontWeight: FontWeight.bold,
                         ),
                       ),
                       Spacer(),
                       Icon(
                         Icons.search,
                         color: Colors.deepOrange,
                       )
                     ],
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    buildCategory(
                        category: 'Books',
                        color: Colors.blue,
                        iconData: Icons.book_outlined,
                    ),
                    buildCategory(
                      category: 'Video Game',
                      color: Colors.deepOrange,
                      iconData: Icons.sports_esports,
                    ),buildCategory(
                      category: 'Music & Movies',
                      color: Colors.blue,
                      iconData: Icons.movie_filter_sharp,
                    ),buildCategory(
                      category: 'Grocery',
                      color: Colors.cyan,
                      iconData: Icons.local_grocery_store,
                    ),buildCategory(
                      category: 'Health & Beauty',
                      color: Colors.yellow.shade700,
                      iconData: Icons.healing_outlined,
                    ),buildCategory(
                      category: 'Sports',
                      color: Colors.red,
                      iconData: Icons.sports_basketball_rounded,
                    ),
                    const SizedBox(
                      height: 30.0,
                    )
                  ],
                ),
              ),
            ),
        );
      },
      backgroundColor: Colors.white,
      child: const Icon(
        Icons.list_alt_rounded,
        color: Colors.deepOrange,
      ),
    );
  }
}
