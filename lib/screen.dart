import 'package:flutter/material.dart';
import 'package:flutter_samples/datas.dart';


class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    Datas datas = Datas();
    return Scaffold(
      backgroundColor: Colors.pink[200],
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

      body: Column(children: [
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
            // const Text("add account"),
            OutlinedButton(onPressed: () {}, child: const Text("Add content +"))
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
        // Row(
        //   children: [
        //     Container(
        //       height: 200,
        //       width: 180,
        //       color: Colors.brown,
        //     )
        //   ],
        // ),

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
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 5,
                    width: 160,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(20),
                        image:  DecorationImage(
                            image: AssetImage(datas.items[index]["image"]),fit: BoxFit.fill)),
                    child:  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Align(alignment: AlignmentDirectional.bottomCenter,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                datas.items[index]["photo"],
                              ),
                            ),
                          ),
                          Text(datas.items[index]["name"],style: const TextStyle(color: Colors.white),),
                          Text(datas.items[index]["time"],style: const TextStyle(color: Colors.white),)
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        
        
        const Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("images/114.jpeg"),
            ),
            SizedBox(width: 10),
            Text(
              'trevor',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.deepPurple),
            ),
            SizedBox(width: 10),
            Text(
              '15m',
              style: TextStyle(color: Colors.deepPurple),
            ),
            Spacer(),
            Icon(
              Icons.more_vert,
              color: Colors.deepPurple,
            ),
          ],
        ),



        Expanded(
          child: ListView.separated(
            scrollDirection: Axis.vertical,
            itemCount: datas.items.length,
            separatorBuilder: (context, index) => const SizedBox(
              width: 10,
            ),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  width: 140,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(20),
                      image:  DecorationImage(
                          image: AssetImage(datas.items[index]["image"]),
                          fit: BoxFit.fill)),
                ),
              );
            },
          ),
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
        ),



        // const Row(
        //   children: [
        //     CircleAvatar(
        //       backgroundImage: AssetImage("images/888.jpg"),
        //     ),
        //     SizedBox(width: 10),
        //     Text(
        //       'trevor',
        //       style: TextStyle(
        //           fontWeight: FontWeight.bold, color: Colors.deepPurple),
        //     ),
        //     SizedBox(width: 10),
        //     Text(
        //       '15m',
        //       style: TextStyle(color: Colors.deepPurple),
        //     ),
        //     Spacer(),
        //     Icon(
        //       Icons.more_vert,
        //       color: Colors.deepPurple,
        //     ),
        //   ],
        // ),

        // Container(
        //   height: 200,
        //   width: 500,
        //   child: Image.asset("images/777.jpg", fit: BoxFit.fill),
        // ),
        // const Row(
        //   children: [
        //     Icon(
        //       Icons.heart_broken_rounded,
        //       color: Colors.blueGrey,
        //     ),
        //     Icon(
        //       Icons.comment,
        //       color: Colors.blueGrey,
        //     ),
        //     Icon(
        //       Icons.share,
        //       color: Colors.blueGrey,
        //     ),
        //     Spacer(),
        //     Icon(
        //       Icons.save,
        //       color: Colors.blueGrey,
        //     ),
        //   ],
        // ),

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

        const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
    );
  }
}
