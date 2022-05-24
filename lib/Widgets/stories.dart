import 'package:flutter/material.dart';

class Stories extends StatefulWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  State<Stories> createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const <Widget>[
          ImageAvatar(
            urlImage: 'https://cdn-icons-png.flaticon.com/512/149/149071.png',
            user: 'Usuario1',
          ),
          ImageAvatarOn(
            urlImage: 'https://cdn-icons-png.flaticon.com/512/149/149071.png',
            userOn: 'Usuario2',
          ),
          ImageAvatarOn(
            urlImage: 'https://cdn-icons-png.flaticon.com/512/149/149071.png',
            userOn: 'Usuario3',
          ),
          ImageAvatarOn(
            urlImage: 'https://cdn-icons-png.flaticon.com/512/149/149071.png',
            userOn: 'Usuario4',
          ),
          ImageAvatarOn(
            urlImage: 'https://cdn-icons-png.flaticon.com/512/149/149071.png',
            userOn: 'Usuario5',
          ),
          ImageAvatarOn(
            urlImage: 'https://cdn-icons-png.flaticon.com/512/149/149071.png',
            userOn: 'Usuario6',
          ),
        ],
      ),
    );
  }
}

class ImageAvatar extends StatelessWidget {
  final String urlImage;
  final String user;

  const ImageAvatar({Key? key, required this.urlImage, required this.user})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 82,
          width: 82,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            gradient: const LinearGradient(
                colors: [Colors.yellow, Colors.red],
                begin: Alignment.bottomCenter),
          ),
        ),
        Container(
          height: 82,
          width: 82,
          padding: const EdgeInsets.all(3),
          child: CircleAvatar(
            backgroundImage: NetworkImage(urlImage),
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: 82,
              width: 82,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  child: const Text(
                    'AO VIVO',
                    style: TextStyle(fontSize: 12),
                  ),
                  padding: const EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            Text(
              user,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        )
      ],
    );
  }
}

class ImageAvatarOn extends StatelessWidget {
  final String urlImage;
  final String userOn;

  const ImageAvatarOn({Key? key, required this.urlImage, required this.userOn})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 82,
                width: 82,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  gradient: const LinearGradient(
                      colors: [Colors.yellow, Colors.red],
                      begin: Alignment.bottomCenter),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  userOn,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Container(
            height: 82,
            width: 82,
            padding: const EdgeInsets.all(3),
            child: CircleAvatar(
              backgroundImage: NetworkImage(urlImage),
            ),
          ),
        ],
      ),
    );
  }
}
