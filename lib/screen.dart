import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,leadingWidth: 100,
      //   leading: Row(
      //     mainAxisAlignment: MainAxisAlignment.end,
      //     children: [
      //       IconButton(
      //         onPressed: () {},
      //         icon: const Icon(Icons.menu),
      //         color: Colors.indigoAccent,
      //       ),
      //       IconButton(
      //         onPressed: () {},
      //         icon: const Icon(Icons.send),
      //         color: Colors.indigoAccent,
      //       ),
      //     ],
      //   ),
      // ),
      // body: Container(),

      body: SingleChildScrollView(
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
              const Text("add account"),
            ],
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Roger",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Colors.deepPurple),
              )
            ],
          ),
          // Row(
          //   children: [
          //     Container(
          //       height: 200,
          //       width: 180,
          //       color: Colors.brown,
          //     )
          //   ],
          // ),

          const Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("images/888.jpg"),
              ),
              SizedBox(width: 10),
              Text(
                'trevor',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 10),
              Text('15m'),
              Spacer(),
              Icon(Icons.more_vert),
            ],
          ),

          Container(
            height: 200,
            width: 500,
            child: Image.asset("images/777.jpg", fit: BoxFit.cover),
          ),
          const Row(
              children: [
                Icon(Icons.heart_broken_rounded),
                Icon(Icons.comment),
                Icon(Icons.share_rounded),
                Spacer(),
                Icon(Icons.save)
              ],
            ),

          // Center(
          //   child: Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Container(
          //       height: 300,
          //       width: 500,
          //       decoration: const BoxDecoration(
          //           color: Colors.cyan,
          //           image: DecorationImage(
          //               image: NetworkImage(
          //                   "https://wallpapers.com/images/featured-full/flower-pictures-unpxbv1q9kxyqr1d.jpg"),
          //               fit: BoxFit.cover)),
          //     ),
          //   ),
          // ),
          // const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Icon(
          //       Icons.home,
          //     ),
          //     Icon(
          //       Icons.search,
          //     ),
          //     Icon(
          //       Icons.message,
          //     ),
          //     Icon(Icons.account_circle_outlined),
          //   ],
          // )
        ]),
      ),
    );
  }
}
