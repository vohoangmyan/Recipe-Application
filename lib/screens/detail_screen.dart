// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:recipe/constants.dart';
// import 'package:recipe/models/food.dart';
// import 'package:recipe/screens/ingredients_screen.dart';
// import 'package:recipe/widgets/food_counter.dart';
// import 'package:iconsax/iconsax.dart';
//
// class RecipeScreen extends StatefulWidget {
//   final Food food;
//   const RecipeScreen({super.key, required this.food});
//
//   @override
//   State<RecipeScreen> createState() => _RecipeScreenState();
// }
//
// class _RecipeScreenState extends State<RecipeScreen> {
//   int currentNumber = 1;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.white,
//         bottomNavigationBar: Container(
//           padding: const EdgeInsets.all(10),
//           child: Row(
//             children: [
//               Expanded(
//                 flex: 6,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => IngredientDetailScreen(
//                           food: widget.food,
//                         ),
//                       ),
//                     );
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: kprimaryColor,
//                     foregroundColor: Colors.white,
//                   ),
//                   child: const Text("Start Cooking"),
//                 ),
//               ),
//               const SizedBox(width: 10),
//               Expanded(
//                 child: IconButton(
//                   onPressed: () {},
//                   style: IconButton.styleFrom(
//                     shape: CircleBorder(
//                       side: BorderSide(
//                         color: Colors.grey.shade300,
//                         width: 2,
//                       ),
//                     ),
//                   ),
//                   icon: Icon(
//                     widget.food.isLiked ? Iconsax.heart5 : Iconsax.heart,
//                     color: widget.food.isLiked ? Colors.red : Colors.black,
//                     size: 20,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         body: SingleChildScrollView(
//             child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Stack(
//                     children: [
//                       Positioned(
//                         child: Container(
//                           height: MediaQuery.of(context).size.width - 20,
//                           decoration: BoxDecoration(
//                             image: DecorationImage(
//                               image: AssetImage(widget.food.image),
//                               fit: BoxFit.fill,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         top: 40,
//                         left: 10,
//                         right: 10,
//                         child: Row(
//                           children: [
//                             IconButton(
//                               onPressed: () => Navigator.pop(context),
//                               style: IconButton.styleFrom(
//                                 backgroundColor: Colors.white,
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(15),
//                                 ),
//                                 fixedSize: const Size(50, 50),
//                               ),
//                               icon: const Icon(CupertinoIcons.chevron_back),
//                             ),
//                             const Spacer(),
//                             IconButton(
//                               onPressed: () {},
//                               style: IconButton.styleFrom(
//                                 backgroundColor: Colors.white,
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(15),
//                                 ),
//                                 fixedSize: const Size(50, 50),
//                               ),
//                               icon: const Icon(Iconsax.notification),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Positioned(
//                         left: 0,
//                         right: 0,
//                         top: MediaQuery.of(context).size.width - 50,
//                         child: Container(
//                           width: double.infinity,
//                           padding: const EdgeInsets.all(20),
//                           decoration: const BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.only(
//                               topRight: Radius.circular(20),
//                               topLeft: Radius.circular(20),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Center(
//                     child: Container(
//                       width: 50,
//                       height: 5,
//                       decoration: BoxDecoration(
//                         color: Colors.grey.shade300,
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                     child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             widget.food.name,
//                             style: const TextStyle(
//                               fontSize: 24,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           const SizedBox(height: 10),
//                           Row(
//                             children: [
//                               const Icon(
//                                 Iconsax.flash_1,
//                                 size: 20,
//                                 color: Colors.grey,
//                               ),
//                               Text(
//                                 "${widget.food.cal} Cal",
//                                 style: const TextStyle(
//                                   fontSize: 14,
//                                   color: Colors.grey,
//                                 ),
//                               ),
//                               const Text(
//                                 " · ",
//                                 style: TextStyle(color: Colors.grey),
//                               ),
//                               const Icon(
//                                 Iconsax.clock,
//                                 size: 20,
//                                 color: Colors.grey,
//                               ),
//                               Text(
//                                 "${widget.food.time} Min",
//                                 style: const TextStyle(
//                                   fontSize: 14,
//                                   color: Colors.grey,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           const SizedBox(height: 10),
//                           Row(
//                             children: [
//                               Icon(
//                                 Iconsax.star5,
//                                 color: Colors.yellow.shade700,
//                                 size: 25,
//                               ),
//                               const SizedBox(width: 5),
//                               Text(
//                                 "${widget.food.rate}/5",
//                                 style: TextStyle(
//                                   fontSize: 14,
//                                   color: Colors.grey.shade600,
//                                 ),
//                               ),
//                               const SizedBox(width: 5),
//                               Text(
//                                 "(${widget.food.reviews} Reviews)",
//                                 style: TextStyle(
//                                   fontSize: 14,
//                                   color: Colors.grey.shade400,
//                                 ),
//                               )
//                             ],
//                           ),
//                           const SizedBox(height: 20),
//                           Row(
//                             children: [
//                               const Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     "Ingredients",
//                                     style: TextStyle(
//                                       fontSize: 20,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                   SizedBox(height: 10),
//                                   Text(
//                                     "How many servings?",
//                                     style: TextStyle(
//                                       fontSize: 14,
//                                       color: Colors.grey,
//                                     ),
//                                   )
//                                 ],
//                               ),
//                               const Spacer(),
//                               FoodCounter(
//                                 currentNumber: currentNumber,
//                                 onAdd: () => setState(() {
//                                   currentNumber++;
//                                 }),
//                                 onRemove: () {
//                                   if (currentNumber != 1) {
//                                     setState(() {
//                                       currentNumber--;
//                                     });
//                                   }
//                                 },
//                               )
//                             ],
//                           ),
//                           const SizedBox(height: 20),
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Row(
//                                 children: [
//                                   Container(
//                                     width: 60,
//                                     height: 60,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(15),
//                                       image: DecorationImage(
//                                         image: AssetImage(widget.food.image),
//                                         fit: BoxFit.fill,
//                                       ),
//                                     ),
//                                   ),
//                                   const SizedBox(width: 10),
//                                   Text(
//                                     widget.food.name,
//                                     style: const TextStyle(
//                                       fontSize: 24,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                   const Spacer(),
//                                   Text(
//                                     "${widget.food.servings * currentNumber}g",
//                                     style: TextStyle(
//                                       fontSize: 16,
//                                       color: Colors.grey.shade400,
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ]
//                     ),
//                   )
//                 ]
//             )
//         )
//     );
//   }
// }



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:hive_flutter/adapters.dart';
import 'package:thflutter/components/custom_clip_path.dart';
import 'package:thflutter/constants/circle_button.dart';
import 'package:thflutter/constants/share.dart';
import 'package:thflutter/constants/show_detail_dialog.dart';
import 'package:thflutter/constants/start_cooking.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../components/ingredient_list.dart';

class DetailScreen extends StatefulWidget {

  final Map<String,dynamic> item;
  const DetailScreen({Key? key, required this.item}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    var myBox=Hive.box('saved');
    final h=MediaQuery.of(context).size.height;
    final w=MediaQuery.of(context).size.width;
    String time = widget.item['totalTime'].toString();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: h*.44,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(widget.item['image']),fit: BoxFit.cover)
                  ),
                ),
                Positioned(
                  top: h*.04, left: w*.05,
                    child: const CircleAvatar(
                      backgroundColor: Colors.redAccent,
                      child: BackButton(color: Colors.white,),
                    ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: w*.04),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20,),
                  Text(widget.item['label'],
                    style: TextStyle(
                      fontSize: w*.05,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 1,),
                  Text("$time min"),
                  SizedBox(height: h*.01,),

                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap:(){
                            ShareRecipe.share(widget.item['url']);
                        },
                        child: const CircleButton(
                          icon: Icons.share, label: 'Chia sẻ',
                        ),
                      ),
                      ValueListenableBuilder(
                          valueListenable: myBox.listenable(),
                          builder: (context,box,_){
                            String key = widget.item['label'];
                            bool saved=myBox.containsKey(key);
                            if(saved){
                              return GestureDetector(
                                onTap: (){
                                  myBox.delete(key);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          duration: Duration(seconds: 1),
                                          content: Text('Recipe deleted'))
                                  );
                                },
                                  child: Icon(Icons.favorite_border));
                            }
                            else{
                              return  GestureDetector(
                                onTap: (){
                                  myBox.put(key, key);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                  const    SnackBar(
                                      duration: Duration(seconds: 1),
                                      content: Text('Recipe saved'))
                                  );
                                },
                                child: CircleButton(
                                  icon: Icons.favorite, label: 'Yêu thích',
                                ),
                              );
                            }
                          }),

                      GestureDetector(
                        onTap: (){
                          ShowDialog.showCalories(widget.item['totalNutrients'], context);
                        },
                        child: const CircleButton(
                          icon: Icons.monitor_heart_outlined, label: 'Danh mục',
                        ),
                      ),
                      const CircleButton(
                        icon: Icons.table_chart_outlined, label: 'Biểu đồ',
                      ),

                    ],
                  ),
                  SizedBox(height: h*.02,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Mô tả', style: TextStyle(fontWeight: FontWeight.bold, fontSize: w*.06),),
                      SizedBox(width: w*.34,
                      child: ElevatedButton(onPressed: (){
                        StartCooking.startCooking(widget.item['url']);
                      },
                      child: const Text('Bắt đầu'),),),
                    ],
                  ),

                  SizedBox(height: h*.02,),

                  Container(
                    height: h*.07,
                    width: w,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                            child: ClipPath(
                              clipper: CustomClipPath(),
                          child: Container(
                            color: Colors.redAccent,
                            child: Center(
                              child: Text('Nguyên liệu cần thiết',
                              style: TextStyle(fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: w*.05,
                              ),
                              ),
                            ),
                          ),
                        )),
                        // Expanded(
                        //   flex: 1,
                        //     child: Container(
                        //       color: Colors.grey,
                        //       child: const Center(
                        //         child: Text('Items'),
                        //       ),
                        // )),
                      ],
                    ),
                  ),
                  SizedBox(height: h*1.8,
                  child: IngredientList(
                    ingredients: widget.item['ingredients'],

                  ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

