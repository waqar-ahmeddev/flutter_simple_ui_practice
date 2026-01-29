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
    final imageurl = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkAvOoosF64nzvw4-8jXtDcMObdhjWxhh1rA&s";
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Welcome',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),

      // 🔥 BODY: PRODUCTS LIST
      body: ListView.builder(
         itemCount: products.length,
         itemBuilder: (context, index) {
    final item = products[index];

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            item.image,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                width: 60,
                height: 60,
                color: Colors.grey.shade300,
                child: const Icon(Icons.image_not_supported),
              );
            },
          ),
        ),
        title: Text(
          item.name,
          style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
        ),
        subtitle: Text(item.desc,),
        trailing: Text(
          "\$${item.price}",
          style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
        ),
      ),
    );
  },
),


      // 🟣 DRAWER (SAME AS BEFORE)
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
                  backgroundImage: NetworkImage(imageurl),
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
    );
  }
}