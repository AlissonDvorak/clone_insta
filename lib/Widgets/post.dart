import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ProfilePicture(
          profileUrl: 'https://cdn-icons-png.flaticon.com/512/149/149071.png',
          user: 'userl',
          postUrl:
              'https://img.freepik.com/fotos-gratis/post-it-note-em-branco-fixado_488220-17690.jpg?w=2000',
          likes: '1.951',
          textPost: '...',
        ),
        ProfilePicture(
            profileUrl: 'https://cdn-icons-png.flaticon.com/512/149/149071.png',
            user: 'user',
            postUrl:
                'https://img.freepik.com/fotos-gratis/post-it-note-em-branco-fixado_488220-17690.jpg?w=2000',
            likes: '24',
            textPost: '...'),
        ProfilePicture(
            profileUrl: 'https://cdn-icons-png.flaticon.com/512/149/149071.png',
            user: 'user',
            postUrl:
                'https://img.freepik.com/fotos-gratis/post-it-note-em-branco-fixado_488220-17690.jpg?w=2000',
            likes: '999',
            textPost: '...')
      ],
    );
  }
}
//

class ProfilePicture extends StatelessWidget {
  final String profileUrl;
  final String user;
  final String postUrl;
  final String likes;
  final String textPost;

  const ProfilePicture({
    Key? key,
    required this.profileUrl,
    required this.user,
    required this.postUrl,
    required this.likes,
    required this.textPost,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.08,
          color: Colors.white,
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(profileUrl),
              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  user,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const Spacer(),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.4,
          color: Colors.white,
          child: FittedBox(
            fit: BoxFit.fill,
            child: Image.network(postUrl),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.05,
          color: Colors.white,
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_border),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.message),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.send_sharp),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.bookmark_border_sharp),
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.02,
          color: Colors.white,
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            '$likes curtidas',
            style: const TextStyle(
              fontWeight: (FontWeight.bold),
              fontSize: 15,
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.1,
          color: Colors.white,
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              const Padding(padding: EdgeInsets.only(top: 25)),
              Text(
                user,
                style: const TextStyle(
                  fontWeight: (FontWeight.bold),
                ),
              ),
              const Padding(padding: EdgeInsets.only(left: 10)),
              Text(
                textPost,
                style: const TextStyle(),
              ),
            ],
          ),
        ),
        const Divider()
      ],
    );
  }
}
