import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: InstagramScreen(),
      debugShowCheckedModeBanner: false, // Remove the debug label
    );
  }
}

class InstagramScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Instagram',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {
              // Add onPressed logic for heart icon
            },
          ),
          IconButton(
            icon: Icon(Icons.message),
            onPressed: () {
              // Add onPressed logic for message icon
            },
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 2.0,
          crossAxisSpacing: 2.0,
        ),
        itemCount: 20,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Add onTap logic for post selection
            },
            child: Image.network(
              'https://picsum.photos/400/300?random=$index',
              fit: BoxFit.cover,
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.add_box),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {},
            ),
            CircleAvatar(
              radius: 16,
              backgroundImage: NetworkImage(
                  'https://scontent.fcrk1-2.fna.fbcdn.net/v/t39.30808-6/402290531_2084796775218194_8964566483898712012_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=efb6e6&_nc_eui2=AeFQX9dYWDlHYB98ovbpUYMbfAhWABx-pfN8CFYAHH6l89g504-MmagXUaZKw4QLYZVZz4T1RhaB3rgLh7S1PKof&_nc_ohc=kFILVi5D9LMAX8lnIXV&_nc_ht=scontent.fcrk1-2.fna&oh=00_AfC3dSKJeR3t-I9cvQoRebsy6Kbje9q9eYc-g_50nt9WNw&oe=65DB2795'),
              // Replace with your profile picture URL
            ),
          ],
        ),
      ),
    );
  }
}
