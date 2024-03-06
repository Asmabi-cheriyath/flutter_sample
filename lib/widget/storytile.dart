import 'package:flutter/material.dart';

class Storytile  extends StatelessWidget {
  final String name;
  final String time;
  final String photo;
  final String image;
  const Storytile ({required this.name,required this.time,required this.photo,required this.image,super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 5,
                        width: 160,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(image),
                                fit: BoxFit.fill)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Align(
                                alignment: AlignmentDirectional.bottomCenter,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                    photo,
                                  ),
                                ),
                              ),
                              Text(
                                name,
                                style: const TextStyle(color: Colors.white),
                              ),
                              Text(
                                time,
                                style: const TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
  }
}