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
    return Scaffold(
      backgroundColor: Colors.white,
     appBar: AppBar(
      title: Center(
        child: const Text(
          "Catalog App",
          style: TextStyle(fontWeight: FontWeight.bold),),
      )
     ),
          drawer: Drawer(
        backgroundColor: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.deepPurple,
                ),
                margin: EdgeInsets.zero,
                accountName: const Text('Hoorain Sherwani'),
                accountEmail: const Text('Hoorain@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkAvOoosF64nzvw4-8jXtDcMObdhjWxhh1rA&s"),
                ),
              ),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white),
              title: Text(
                'Home',
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            const ListTile(
              leading:
                  Icon(CupertinoIcons.profile_circled, color: Colors.white),
              title: Text(
                'Profile',
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.mail, color: Colors.white),
              title: Text(
                'Email me',
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
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
        "Trending Products",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 4),
      Text(
        "Best deals for you",
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
    );
  }
}