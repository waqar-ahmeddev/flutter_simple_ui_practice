import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
import 'package:login_ui_modern/item.dart';
class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}
class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    // final imageurl = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkAvOoosF64nzvw4-8jXtDcMObdhjWxhh1rA&s";
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0.0,
      //   backgroundColor: Colors.white,
      //   centerTitle: true,
      //   title: const Text(
      //     'Welcome',
      //     style: TextStyle(color: Colors.black),
      //   ),
      //   iconTheme: const IconThemeData(color: Colors.black),
      // ),
    body: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [

    // 🔹 HEADER SECTION
    Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Catalog App",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),
          Text(
            "Trending products",
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    ),

    // 🔹 PRODUCT LIST
    Expanded(
      child: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final item = products[index];

          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
  leading: ClipRRect(
    borderRadius: BorderRadius.circular(8),
    child: Image.network(
      item.image,
      width: 50,
      height: 50,
      fit: BoxFit.cover,
    ),
  ),

  title: Text(
    item.name,
    style: const TextStyle(fontWeight: FontWeight.bold),
  ),

  subtitle: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(item.desc),
      const SizedBox(height: 4),
      Text(
        "\$${item.price}",
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  ),

  trailing: SizedBox(
  height: 32,
  child: ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.deepPurple,
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 14),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
    ),
    onPressed: () {},
    child: const Text(
      "Buy",
      style: TextStyle(fontSize: 13),
    ),
  ),
),

),
          );
        },
      ),
    ),
  ],
),


//        body: GridView.builder(
//   padding: const EdgeInsets.all(12),
//   itemCount: products.length,
//   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//     crossAxisCount: 2, // 2 items side by side
//     crossAxisSpacing: 12,
//     mainAxisSpacing: 12,
//     childAspectRatio: 0.7,
//   ),
//   itemBuilder: (context, index) {
//     final item = products[index];

//     return Card(
//       elevation: 4,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // 🖼 Image
//           ClipRRect(
//             borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
//             child: Image.network(
//               item.image,
//               height: 140,
//               width: double.infinity,
//               fit: BoxFit.cover,
//               errorBuilder: (context, error, stackTrace) {
//                 return Container(
//                   height: 140,
//                   color: Colors.grey.shade300,
//                   child: const Icon(Icons.image_not_supported),
//                 );
//               },
//             ),
//           ),

//           // 📦 Product Info
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   item.name,
//                   style: const TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 16,
//                   ),
//                 ),
//                 const SizedBox(height: 4),
//                 Text(
//                   item.desc,
//                   style: const TextStyle(fontSize: 13),
//                 ),
//                 const SizedBox(height: 6),
//                 Text(
//                   "\$${item.price}",
//                   style: const TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 16,
//                     color: Colors.deepPurple,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   },
// ),


//       // 🔥 BODY: PRODUCTS LIST
//       body: ListView.builder(
//          itemCount: products.length,
//          itemBuilder: (context, index) {
//     final item = products[index];


//     return Card(
//       margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//       child: ListTile(
//         leading: ClipRRect(
//           borderRadius: BorderRadius.circular(8),
//           child: Image.network(
//             item.image,
//             width: 60,
//             height: 60,
//             fit: BoxFit.cover,
//             errorBuilder: (context, error, stackTrace) {
//               return Container(
//                 width: 60,
//                 height: 60,
//                 color: Colors.grey.shade300,
//                 child: const Icon(Icons.image_not_supported),
//               );
//             },
//           ),
//         ),
//         title: Text(
//           item.name,
//           style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
//         ),
//         subtitle: Text(item.desc,),
//         trailing: Text(
//           "\$${item.price}",
//           style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
//         ),
//       ),
//     );
//   },
// ),      // 🟣 DRAWER (SAME AS BEFORE)
      // drawer: Drawer(
      //   backgroundColor: Colors.deepPurple,
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: [
      //       DrawerHeader(
      //         padding: EdgeInsets.zero,
      //         child: UserAccountsDrawerHeader(
      //           decoration: const BoxDecoration(
      //             color: Colors.deepPurple,
      //           ),
      //           margin: EdgeInsets.zero,
      //           accountName: const Text('Hoorain Sherwani'),
      //           accountEmail: const Text('Hoorain@gmail.com'),
      //           currentAccountPicture: CircleAvatar(
      //             backgroundImage: NetworkImage(imageurl),
      //           ),
      //         ),
      //       ),
      //       const ListTile(
      //         leading: Icon(CupertinoIcons.home, color: Colors.white),
      //         title: Text(
      //           'Home',
      //           textScaleFactor: 1.2,
      //           style: TextStyle(color: Colors.white),
      //         ),
      //       ),
      //       const ListTile(
      //         leading:
      //             Icon(CupertinoIcons.profile_circled, color: Colors.white),
      //         title: Text(
      //           'Profile',
      //           textScaleFactor: 1.2,
      //           style: TextStyle(color: Colors.white),
      //         ),
      //       ),
      //       const ListTile(
      //         leading: Icon(CupertinoIcons.mail, color: Colors.white),
      //         title: Text(
      //           'Email me',
      //           textScaleFactor: 1.2,
      //           style: TextStyle(color: Colors.white),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}