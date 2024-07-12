class Food {
  String name;
  String image;
  double cal;
  double time;
  double rate;
  int reviews;
  bool isLiked;
  int servings;
  List<String> ingredients; // Danh sách nguyên liệu
  List<String> description; // Mô tả cách thực hiện món ăn

  Food({
    required this.name,
    required this.image,
    required this.cal,
    required this.time,
    required this.rate,
    required this.reviews,
    required this.isLiked,
    required this.servings,
    required this.ingredients, // Danh sách nguyên liệu
    required this.description, // Mô tả cách thực hiện món ăn
  });
}

final List<Food> foods = [
  Food(
    name: "Mì Ramen Cay",
    image: "assets/images/ramen-noodles.jpg",
    cal: 120,
    time: 15,
    rate: 4.4,
    reviews: 23,
    isLiked: false,
    servings: 400,
    ingredients: [
      "200g mì ramen",
      "1 muỗng canh nước tương",
      "2 muỗng cà phê tương ớt",
      "1 quả trứng",
      "1 tách nước dùng gà",
      "2 cây hành lá, cắt nhỏ",
      "1 muỗng canh dầu mè",
    ],
    description: [
      "Nấu mì ramen theo hướng dẫn trên bao bì.",
      "Trong một tô, kết hợp nước tương và tương ớt.",
      "Đun sôi nước dùng gà và thêm hỗn hợp nước tương.",
      "Thêm mì đã nấu vào nước dùng.",
      "Trên cùng, thêm một quả trứng trứng, hành lá cắt nhỏ và nhỏ dầu mè.",
    ],
  ),
  Food(
    name: "Bít Tết Bò",
    image: "assets/images/beaf-steak.jpg",
    cal: 140,
    time: 25,
    rate: 4.4,
    reviews: 23,
    isLiked: true,
    servings: 500,
    ingredients: [
      "1 miếng thịt bò (500g)",
      "2 muỗng canh dầu olive",
      "2 tép tỏi băm nhỏ",
      "Muối và tiêu vừa đủ",
      "1 nhánh hương",
      "1 muỗng canh bơ",
    ],
    description: [
      "Trước khi nướng, hãy làm nóng grill lên nhiệt độ cao.",
      "Nêm gia vị vào thịt với muối, tiêu và tỏi băm.",
      "Rưới dầu olive lên thịt.",
      "Nướng thịt khoảng 5-7 phút trên mỗi mặt.",
      "Thêm hương và bơ vào trong những phút cuối cùng của việc nướng.",
      "Để thịt nghỉ khoảng 5 phút trước khi thưởng thức.",
    ],
  ),
  Food(
    name: "Gà Sốt Bơ",
    image: "assets/images/butter-chicken.jpg",
    cal: 130,
    time: 18,
    rate: 4.2,
    reviews: 10,
    isLiked: false,
    servings: 600,
    ingredients: [
      "500g thịt gà, cắt thành miếng nhỏ",
      "2 muỗng canh bơ",
      "1 củ hành tây, băm nhỏ",
      "2 tép tỏi, băm nhỏ",
      "1 muỗng canh gừng, băm nhỏ",
      "1 tách nước cà chua",
      "1 tách kem sữa đặc",
      "2 muỗng canh gia vị garam masala",
      "Muối và tiêu vừa đủ",
      "Rau mùi tươi, để trang trí",
    ],
    description: [
      "Nấu chảo bơ trên lửa trung bình.",
      "Thêm hành tây, tỏi và gừng, xào cho đến khi vàng.",
      "Thêm thịt gà và chiên cho đến khi chín vàng.",
      "Khuấy nước cà chua, gia vị garam masala, muối và tiêu.",
      "Sôi trong khoảng 10 phút.",
      "Khuấy vào kem sữa đặc và đun sôi thêm 5 phút nữa.",
      "Trang trí với rau mùi tươi trước khi dùng.",
    ],
  ),
  Food(
    name: "Bánh Mì Nướng",
    image: "assets/images/french-toast.jpg",
    cal: 110,
    time: 16,
    rate: 4.6,
    reviews: 90,
    isLiked: true,
    servings: 200,
    ingredients: [
      "4 lát bánh mì",
      "2 quả trứng",
      "1/2 tách sữa",
      "1 muỗng cà phê tinh dầu vani",
      "1/2 muỗng cà phê bột quế",
      "2 muỗng canh bơ",
      "Mật ong, để dùng kèm",
    ],
    description: [
      "Đánh tan trứng, sữa, tinh dầu vani và bột quế trong một tô.",
      "Ngâm mỗi lát bánh mì trong hỗn hợp trứng, ngâm cả hai mặt.",
      "Nướng bánh mì trên chảo với lửa vừa cho đến khi vàng.",
      "Dùng kèm mật ong.",
    ],
  ),
  Food(
    name: "Bánh Bao Chiên",
    image: "assets/images/dumplings.jpg",
    cal: 150,
    time: 30,
    rate: 4.0,
    reviews: 76,
    isLiked: false,
    servings: 450,
    ingredients: [
      "200g thịt heo xay nhuyễn",
      "1 tách bắp cải, thái nhỏ",
      "2 tép tỏi, băm nhỏ",
      "1 muỗng canh nước tương",
      "1 muỗng canh dầu mè",
      "1 gói bánh bao",
      "1 muỗng canh dầu ăn",
    ],
    description: [
      "Trong một tô, trộn thịt heo xay, bắp cải, tỏi, nước tương và dầu mè.",
      "Đặt một muỗng nhân vào mỗi tờ bánh bao.",
      "Gấp và niêm phong mép.",
      "Đun nóng dầu ăn trong một chảo trên lửa trung bình.",
      "Chiên bánh bao cho đến khi vàng ở mỗi mặt.",
      "Dùng kèm nước tương.",
    ],
  ),
  Food(
    name: "Pizza Mexico",
    image: "assets/images/mexican-pizza.jpg",
    cal: 140,
    time: 25,
    rate: 4.4,
    reviews: 23,
    isLiked: false,
    servings: 400,
    ingredients: [
      "1 đế bánh pizza",
      "1/2 tách đậu hủ nướng",
      "1 tách phô mai sợi",
      "1/2 tách salsa",
      "1/2 tách ô liu đen băm",
      "1/2 tách cà chua băm",
      "1/4 tách hành lá băm nhỏ",
      "1/4 tách rau mùi tươi băm nhỏ",
    ],
    description: [
      "Tiền nhiệt lò nướng đến 220°C (425°F).",
      "Phết đậu hủ nướng lên đế pizza.",
      "Rắc phô mai sợi lên trên.",
      "Thêm salsa, ô liu đen, cà chua và hành lá.",
      "Nướng trong lò đã được tiền nhiệt trong khoảng 15-20 phút.",
      "Trang trí với rau mùi tươi trước khi thưởng thức.",
    ],
  ),
];
