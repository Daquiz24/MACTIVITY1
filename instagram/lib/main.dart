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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.orange, width: 2),
                          ),
                          child: const CircleAvatar(
                            radius: 28,
                            backgroundColor: Colors.grey,
                            backgroundImage: NetworkImage('https://picsum.photos/200'),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'User $index',
                          style: const TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const Divider(height: 1, color: Colors.grey),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 20,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: const CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage('https://picsum.photos/100'),
                        ),
                        title: Text('User $index'),
                        subtitle: Text('Location $index'),
                        trailing: const Icon(Icons.more_vert),
                      ),
                      Container(
                        height: 300,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage('https://picsum.photos/400/300?random=$index'), //random image in share post  instagram
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.favorite_border),
                            SizedBox(width: 8),
                            Icon(Icons.comment),
                            SizedBox(width: 8),
                            Icon(Icons.send),
                            Spacer(),
                            Icon(Icons.bookmark_border),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.0),
                        child: Text(
                          'Liked by Alice, Bob, and 23 others',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.0),
                        child: Text(
                          'Caption text. #flutter #instagram',
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Divider(height: 1, color: Colors.grey),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(
              child: Text(
                'Instagram',
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
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



