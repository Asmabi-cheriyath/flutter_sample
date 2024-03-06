import 'package:flutter/material.dart';
import 'package:flutter_samples/datas.dart';
import 'package:flutter_samples/widget/posttile.dart';
import 'package:flutter_samples/widget/storytile.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    Datas datas = Datas();
    return Scaffold(
      backgroundColor: Colors.pink[200],
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.pink.shade200, Colors.white],
                begin: Alignment.topRight,
                end: Alignment.center)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: const Row(
                children: [
                  Icon(
                    Icons.menu,
                    color: Colors.deepPurple,
                  ),
                  Spacer(),
                  Icon(
                    Icons.send,
                    color: Colors.deepPurple,
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hello,",
                  style: TextStyle(color: Colors.blueGrey[200]),
                ),
                OutlinedButton(
                    onPressed: () {}, child: const Text("Add content +"))
              ],
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Roger",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Colors.deepPurple),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 190,
              width: MediaQuery.of(context).size.width,
              child: Expanded(
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: datas.items.length,
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 10,
                  ),
                  itemBuilder: (context, index) {
                    return Storytile(name: datas.items[index]["name"], time: datas.items[index]["time"], photo: datas.items[index]["photos"], image: datas.items[index]["image"]);
                  },
                ),
              ),
            ),

            
            Expanded(
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                itemCount: datas.items.length,
                separatorBuilder: (context, index) => const SizedBox(
                  width: 10,
                ),
                itemBuilder: (context, index) {
                  return Posttile(
                      name: datas.items[index]["name"],
                      time: datas.items[index]["time"],
                      photo: datas.items[index]["photo"],
                      image: datas.items[index]["image"]);
                },
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.home,
                ),
                Icon(
                  Icons.search,
                ),
                Icon(
                  Icons.message,
                ),
                Icon(Icons.account_circle_outlined),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
