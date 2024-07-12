// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class SettingsPage extends StatefulWidget {
//   @override
//   _SettingsPageState createState() => _SettingsPageState();
// }
//
// class _SettingsPageState extends State<SettingsPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).scaffoldBackgroundColor,
//         elevation: 1,
//         leading: IconButton(
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//           icon: Icon(
//             Icons.arrow_back,
//             color: Colors.green,
//           ),
//         ),
//       ),
//       body: Container(
//         padding: EdgeInsets.only(left: 16, top: 25, right: 16),
//         child: ListView(
//           children: [
//             Text(
//               "Cài đặt",
//               style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
//             ),
//             SizedBox(
//               height: 40,
//             ),
//             Row(
//               children: [
//                 Icon(
//                   Icons.person,
//                   color: Colors.green,
//                 ),
//                 SizedBox(
//                   width: 8,
//                 ),
//                 Text(
//                   "Tài khoản",
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//               ],
//             ),
//             Divider(
//               height: 15,
//               thickness: 2,
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             buildAccountOptionRow(context, "Đổi mật khẩu"),
//             // buildAccountOptionRow(context, "Content settings"),
//             // buildAccountOptionRow(context, "Social"),
//             buildAccountOptionRow(context, "Ngôn ngữ"),
//             buildAccountOptionRow(context, "Chính sách và bảo mật"),
//             SizedBox(
//               height: 40,
//             ),
//             Row(
//               children: [
//                 Icon(
//                   Icons.volume_up_outlined,
//                   color: Colors.green,
//                 ),
//                 SizedBox(
//                   width: 8,
//                 ),
//                 Text(
//                   "Thông báo",
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//               ],
//             ),
//             Divider(
//               height: 15,
//               thickness: 2,
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             buildNotificationOptionRow("Thông báo khi có tin mới", true),
//             // buildNotificationOptionRow("Account activity", true),
//             // buildNotificationOptionRow("Opportunity", false),
//             SizedBox(
//               height: 50,
//             ),
//             Center(
//               child: OutlinedButton(
//                 style: OutlinedButton.styleFrom(
//                   padding: EdgeInsets.symmetric(horizontal: 40),
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20)),
//                 ),
//                 onPressed: () {},
//                 child: Text("ĐĂNG XUẤT",
//                     style: TextStyle(
//                         fontSize: 16, letterSpacing: 2.2, color: Colors.black)),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
//
//   Row buildNotificationOptionRow(String title, bool isActive) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(
//           title,
//           style: TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.w500,
//               color: Colors.grey[600]),
//         ),
//         Transform.scale(
//             scale: 0.7,
//             child: CupertinoSwitch(
//               value: isActive,
//               onChanged: (bool val) {},
//             ))
//       ],
//     );
//   }
//
//   GestureDetector buildAccountOptionRow(BuildContext context, String title) {
//     return GestureDetector(
//       onTap: () {
//         showDialog(
//             context: context,
//             builder: (BuildContext context) {
//               return AlertDialog(
//                 title: Text(title),
//                 content: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Text("Option 1"),
//                     Text("Option 2"),
//                     Text("Option 3"),
//                   ],
//                 ),
//                 actions: [
//                   TextButton(
//                       onPressed: () {
//                         Navigator.of(context).pop();
//                       },
//                       child: Text("Close")),
//                 ],
//               );
//             });
//       },
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 8.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(
//               title,
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.w500,
//                 color: Colors.grey[600],
//               ),
//             ),
//             Icon(
//               Icons.arrow_forward_ios,
//               color: Colors.grey,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:thflutter/components/setting/setting_item.dart';
import 'package:thflutter/components/setting/setting_switch.dart';
import 'package:thflutter/screens/profile_screen.dart';
import 'package:thflutter/widget/appBar_widget.dart';

import '../../screens/profile.dart';
import '../forward_button.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _EditSettingScreenState();
}

class _EditSettingScreenState extends State<SettingScreen> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        title: "Settings",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const Text(
                "Account",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> const ProfileScreen()));
                },
                child: SizedBox(
                  width: double.infinity,
                  child: Row(
                    children: [
                      Image.asset("assets/images/avatar.jpg", width: 70, height: 70),
                      const SizedBox(width: 20),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Uranus Code",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Youtube Channel",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      ForwardButton(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AccountScreen(),
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                "Settings",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              SettingItem(
                title: "Language",
                icon: Ionicons.earth,
                bgColor: Colors.orange.shade100,
                iconColor: Colors.orange,
                value: "English",
                onTap: () {},
              ),
              const SizedBox(height: 20),
              SettingItem(
                title: "Notifications",
                icon: Ionicons.notifications,
                bgColor: Colors.blue.shade100,
                iconColor: Colors.blue,
                onTap: () {},
              ),
              const SizedBox(height: 20),
              SettingSwitch(
                title: "Dark Mode",
                icon: Ionicons.earth,
                bgColor: Colors.purple.shade100,
                iconColor: Colors.purple,
                value: isDarkMode,
                onTap: (value) {
                  setState(() {
                    isDarkMode = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              SettingItem(
                title: "Help",
                icon: Ionicons.nuclear,
                bgColor: Colors.red.shade100,
                iconColor: Colors.red,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}