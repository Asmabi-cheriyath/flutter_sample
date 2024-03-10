import 'package:flutter/material.dart';

class Posttile extends StatelessWidget {
  final String name;
  final String time;
  final String photo;
  final String image;
  const Posttile(
      {required this.name,
      required this.time,
      required this.photo,
      required this.image,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        height: MediaQuery.of(context).size.height/3,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(image: AssetImage(image),fit: BoxFit.fitWidth),borderRadius:BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(photo),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.deepPurple),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    time,
                    style: const TextStyle(color: Colors.deepPurple),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.more_vert,
                    color: Colors.deepPurple,
                  ),
                ],
              ),
              const Row(
                children: [
                  Icon(
                    Icons.heart_broken_rounded,
                    color: Colors.blueGrey,
                  ),
                  Icon(
                    Icons.comment,
                    color: Colors.blueGrey,
                  ),
                  Icon(
                    Icons.share,
                    color: Colors.blueGrey,
                  ),
                  Spacer(),
                  Icon(
                    Icons.save,
                    color: Colors.blueGrey,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
