import 'package:flutter/material.dart';
import 'package:recipe/constants.dart';
import 'package:recipe/models/food.dart';
import 'package:recipe/models/comment.dart';
import 'package:recipe/screens/detail_screen.dart';
import 'package:iconsax/iconsax.dart';
import 'package:recipe/widgets/like_button.dart'; // Import the LikeButton widget

class RecipeScreen extends StatefulWidget {
  final Food food;
  const RecipeScreen({Key? key, required this.food}) : super(key: key);

  @override
  State<RecipeScreen> createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  bool isLoggedIn = false;
  final List<Comment> comments = [
    Comment(userName: "User1", userComment: "This recipe is amazing!"),
    Comment(userName: "User2", userComment: "Really enjoyed making this."),
    Comment(userName: "User3", userComment: "My family loved it!"),
    Comment(userName: "User4", userComment: "Nice!"),
    Comment(userName: "User5", userComment: "Perfect"),
  ];

  TextEditingController commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
              flex: 6,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(food: widget.food),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: kprimaryColor,
                  foregroundColor: Colors.white,
                ),
                child: const Text("Start Cooking"),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: LikeButton(
                isLiked: widget.food.isLiked,
                onTap: (newIsLiked) {
                  setState(() {
                    widget.food.isLiked = newIsLiked;
                  });
                },
                onNavigateToFavorite: () {
                  Navigator.pushNamed(context, '/favorite');
                },
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.width - 20,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.food.image),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 10,
                  right: 10,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.arrow_back),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.notifications),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.food.name,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Icon(
                              Iconsax.flash_1,
                              size: 20,
                              color: Colors.grey,
                            ),
                            Text(
                              "${widget.food.cal} Cal",
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                            const Text(
                              " · ",
                              style: TextStyle(color: Colors.grey),
                            ),
                            const Icon(
                              Iconsax.clock,
                              size: 20,
                              color: Colors.grey,
                            ),
                            Text(
                              "${widget.food.time} Min",
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(
                              Iconsax.star5,
                              color: Colors.yellow.shade700,
                              size: 25,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              "${widget.food.rate}/5",
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              "(${widget.food.reviews} Reviews)",
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Preparation:",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade800,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: widget.food.description.map((step) => Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: Text(
                                  "- $step",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey.shade800,
                                  ),
                                ),
                              )).toList(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Comments",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  buildCommentSection(),
                  const SizedBox(height: 20),
                  if (isLoggedIn)
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: commentController,
                            decoration: InputDecoration(
                              hintText: "Add a comment",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            if (commentController.text.isNotEmpty) {
                              setState(() {
                                comments.add(Comment(
                                  userName: "CurrentUser",
                                  userComment: commentController.text,
                                ));
                                commentController.clear();
                              });
                            }
                          },
                          child: const Text("Send"),
                        ),
                      ],
                    ),
                  if (!isLoggedIn)
                    ElevatedButton(
                      onPressed: () {
                        // Thêm logic đăng nhập ở đây
                      },
                      child: const Text("Login to comment"),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCommentSection() {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: comments.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: kprimaryColor,
                  child: Text(comments[index].userName[0]),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        comments[index].userName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(comments[index].userComment),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
