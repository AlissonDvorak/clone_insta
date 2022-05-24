import 'package:clone_insta/Widgets/post.dart';
import 'package:clone_insta/Widgets/stories.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.network(
            'https://www.instagram.com/static/images/web/mobile_nav_type_logo.png/735145cfe0a4.png',
            fit: BoxFit.cover),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_box_outlined),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message),
            color: Colors.black,
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: const [
            Stories(),
            Divider(),
            Post(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 40,
        selectedFontSize: 8,
        elevation: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
            backgroundColor: Colors.transparent,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.play_arrow_rounded,
              color: Colors.black,
            ),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_sharp,
              color: Colors.black,
            ),
            label: 'School',
          ),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://pps.whatsapp.net/v/t61.24694-24/143629026_170262594517410_3741786617427685969_n.jpg?ccb=11-4&oh=01_AVxxiXQ5XwBfFqYCfGLAbXCVJY26DWa8J3OV2qrJTCQPnw&oe=62278772'),
              ),
              label: 'perfil'),
        ],
      ),
    );
  }
}
